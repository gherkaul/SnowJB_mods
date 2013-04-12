.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 91
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v2, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    .line 94
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkRoamingButton()V
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$000(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 94
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkButton()V

    goto :goto_0
.end method
