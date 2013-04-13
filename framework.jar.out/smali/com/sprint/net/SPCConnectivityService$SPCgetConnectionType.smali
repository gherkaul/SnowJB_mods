.class final Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;
.super Landroid/content/BroadcastReceiver;
.source "SPCConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/SPCConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPCgetConnectionType"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/net/SPCConnectivityService;


# direct methods
.method private constructor <init>(Lcom/sprint/net/SPCConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;->this$0:Lcom/sprint/net/SPCConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprint/net/SPCConnectivityService;Lcom/sprint/net/SPCConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;-><init>(Lcom/sprint/net/SPCConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_GET_CONNECTION_TYPE"

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;->this$0:Lcom/sprint/net/SPCConnectivityService;

    invoke-virtual {v0}, Lcom/sprint/net/SPCConnectivityService;->getConnectionType()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 77
    const-string/jumbo v0, "ril.proxy.bypass"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "SPCConnectivityService"

    const-string v1, "getConnectivityService USE WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "SPCConnectivityService"

    const-string v1, "getConnectivityService NO USE WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
