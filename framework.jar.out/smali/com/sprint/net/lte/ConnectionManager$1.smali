.class Lcom/sprint/net/lte/ConnectionManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/net/lte/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/sprint/net/lte/ConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionManager$1;->this$0:Lcom/sprint/net/lte/ConnectionManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 164
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager$1;->this$0:Lcom/sprint/net/lte/ConnectionManager;

    iput-object p1, v0, Lcom/sprint/net/lte/ConnectionManager;->mServiceState:Landroid/telephony/ServiceState;

    .line 159
    return-void
.end method
