.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 540
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 544
    .local v0, wifiState:I
    iget-object v3, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    if-ne v0, v4, :cond_1

    move v1, v2

    :goto_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/WifiService;->access$1202(Lcom/android/server/WifiService;Z)Z

    .line 547
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    .line 553
    sget-boolean v1, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v1, :cond_0

    .line 554
    if-ne v2, v0, :cond_2

    .line 555
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Lcom/lge/wifi_iface/WifiServiceExtIface;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/wifi_iface/WifiServiceExtIface;->unregBrdcastReceiverDelay()V

    .line 556
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->unregBrdcastReceiver()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 584
    .end local v0           #wifiState:I
    :cond_0
    :goto_1
    return-void

    .line 544
    .restart local v0       #wifiState:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 559
    :cond_2
    if-ne v4, v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->registerForBroadcasts()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 562
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;Z)Z

    goto :goto_1

    .line 567
    .end local v0           #wifiState:I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 569
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 572
    sget-object v1, Lcom/android/server/WifiService$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 575
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    .line 576
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
