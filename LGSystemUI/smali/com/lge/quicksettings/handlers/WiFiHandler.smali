.class public Lcom/lge/quicksettings/handlers/WiFiHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "WiFiHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mWiFiDialog:Landroid/app/AlertDialog;

.field private final mWiFiDialogHandler:Landroid/os/Handler;

.field private mWiFiDirectEnable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "WiFiHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/WiFiHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 56
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    .line 57
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z

    .line 64
    new-instance v0, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;-><init>(Lcom/lge/quicksettings/handlers/WiFiHandler;Lcom/lge/quicksettings/handlers/WiFiHandler$1;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    .line 65
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 68
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 73
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 75
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 76
    return-void
.end method

.method static synthetic access$102(Lcom/lge/quicksettings/handlers/WiFiHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/WiFiHandler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/handlers/WiFiHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeDlg()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public disableWiFiDirect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 321
    .local v0, channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-nez v0, :cond_2

    .line 322
    iput-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    .line 326
    :cond_2
    iget-boolean v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z

    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z

    goto :goto_0
.end method

.method public getWiFiStatus()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 250
    const/4 v0, 0x3

    .line 252
    .local v0, status:I
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 254
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "wifi_on"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v0, v4

    :goto_0
    move v1, v0

    .line 275
    .end local v0           #status:I
    .local v1, status:I
    :goto_1
    return v1

    .line 254
    .end local v1           #status:I
    .restart local v0       #status:I
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 261
    .local v2, wifiState:I
    packed-switch v2, :pswitch_data_0

    :goto_2
    move v1, v0

    .line 275
    .end local v0           #status:I
    .restart local v1       #status:I
    goto :goto_1

    .line 263
    .end local v1           #status:I
    .restart local v0       #status:I
    :pswitch_0
    const/4 v0, 0x1

    .line 264
    goto :goto_2

    .line 267
    :pswitch_1
    const/4 v0, 0x3

    .line 268
    goto :goto_2

    .line 271
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_2

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isNotificationModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick()Z
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->onWiFiButtonClick()V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x3

    .line 80
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 82
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 83
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 84
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.net.wifi.STATE_CHANGE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/WiFiHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/WiFiHandler$1;-><init>(Lcom/lge/quicksettings/handlers/WiFiHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 106
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 108
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 118
    return-void
.end method

.method public onLongClick()Z
    .locals 5

    .prologue
    const/high16 v4, 0x1400

    const/4 v3, 0x1

    .line 129
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 131
    sget-object v1, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    const-string v2, "Long click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.skt.network.wificm.OA00091307"

    const-string v2, "com.skt.network.wificm.OA00091307.WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 144
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    return v3

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onWiFiButtonClick()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 170
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v4

    const-string v5, "LGMDMWifiUIAdapter"

    invoke-virtual {v4, v6, v5}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const v6, 0x20c003c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-static {v4, v5, v8, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 177
    sget-object v4, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    const-string v5, "mWiFiImgButtonHandler:onClick() MDM Block"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v4, "service.btui.ampstate"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.intent.action.WIFI_BT_HS_COEX"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 193
    .local v3, wifiApState:I
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 195
    :cond_2
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->getWiFiStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 200
    :pswitch_1
    sget-boolean v4, Lcom/lge/quicksettings/handlers/WiFiHandler;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 201
    sget-object v4, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    const-string v5, "WiFi QuickSetting changed to False"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_4
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 204
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setButtonStatus(I)V

    .line 205
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setTextColor(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->closeDlg()V

    goto :goto_0

    .line 209
    :pswitch_2
    sget-boolean v4, Lcom/lge/quicksettings/handlers/WiFiHandler;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 210
    sget-object v4, Lcom/lge/quicksettings/handlers/WiFiHandler;->TAG:Ljava/lang/String;

    const-string v5, "WiFi QuickSetting changed to True"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 215
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const-string v5, "usb"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 217
    .local v2, mUsbManager:Landroid/hardware/usb/UsbManager;
    if-eqz v2, :cond_7

    const-string v4, "dtf"

    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v8, :cond_7

    .line 218
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 219
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    iput-object v6, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    .line 223
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    const v5, 0x20a01cb

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 225
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09013f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    const v4, 0x7f09013e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    .line 231
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 233
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 239
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    .end local v2           #mUsbManager:Landroid/hardware/usb/UsbManager;
    :cond_7
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 241
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setButtonStatus(I)V

    .line 242
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setTextColor(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->disableWiFiDirect()V

    .line 244
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->showWifiDlg()V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->getWiFiStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setButtonStatus(I)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setTextColor(Z)V

    goto :goto_0

    .line 158
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setButtonStatus(I)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setTextColor(Z)V

    goto :goto_0

    .line 162
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setButtonStatus(I)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/WiFiHandler;->setTextColor(Z)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showWifiDlg()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->isNotificationModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDialogHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    :cond_0
    return-void
.end method
