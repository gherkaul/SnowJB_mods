.class Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetwork;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/TetherNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/TetherNetwork;Lcom/android/server/connectivity/TetherNetwork$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;-><init>(Lcom/android/server/connectivity/TetherNetwork;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    const-string v1, "TetherNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Actions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    const-string v1, "TetherNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_AP_STATE_CHANGED_ACTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wifi_state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 310
    :cond_2
    const-string v1, "com.lge.nai.Err.AuthFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const-string v1, "TetherNetwork"

    const-string v2, "Auth failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "TetherNetwork"

    const-string v2, "MSG_SHOW_MIP_ERR_DLG show Dialog for Mip Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 318
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkReceiver;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/TetherNetwork;->access$300(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V

    goto :goto_0

    .line 324
    :cond_3
    const-string v1, "com.lge.nai.Err.Timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    const-string v1, "TetherNetwork"

    const-string v2, "Time out"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v1

    const/16 v2, 0x3fd

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 328
    :cond_4
    const-string v1, "com.lge.nai.Noti.Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const-string v1, "com.lge.nai.Noti.Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
