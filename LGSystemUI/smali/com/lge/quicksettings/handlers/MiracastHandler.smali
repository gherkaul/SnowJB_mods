.class public Lcom/lge/quicksettings/handlers/MiracastHandler;
.super Lcom/lge/quicksettings/handlers/AbstractMiracastHandler;
.source "MiracastHandler.java"


# static fields
.field private static isButtonClick:Z


# instance fields
.field private final MSG_AMP_BUSY:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mHandler:Landroid/os/Handler;

.field private mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/quicksettings/handlers/MiracastHandler;->isButtonClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/handlers/AbstractMiracastHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 50
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 53
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 54
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->MSG_AMP_BUSY:I

    .line 298
    new-instance v0, Lcom/lge/quicksettings/handlers/MiracastHandler$3;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/MiracastHandler$3;-><init>(Lcom/lge/quicksettings/handlers/MiracastHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/MiracastHandler;)Lcom/lge/quicksettings/QuickSettingsButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    return-object v0
.end method

.method private getWiFiDisplayState()I
    .locals 6

    .prologue
    .line 270
    const/4 v1, 0x3

    .line 271
    .local v1, status:I
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v3, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWfdManager()V

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v3, :cond_1

    move v2, v1

    .line 295
    .end local v1           #status:I
    .local v2, status:I
    :goto_0
    return v2

    .line 275
    .end local v2           #status:I
    .restart local v1       #status:I
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->getWfdState()I

    move-result v0

    .line 276
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v3, "WiFiScreenHandler_debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled wifi state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 295
    .end local v1           #status:I
    .restart local v2       #status:I
    goto :goto_0

    .line 278
    .end local v2           #status:I
    .restart local v1       #status:I
    :pswitch_0
    const/4 v1, 0x3

    .line 279
    goto :goto_1

    .line 284
    :pswitch_1
    const/4 v1, 0x0

    .line 285
    goto :goto_1

    .line 289
    :pswitch_2
    const/4 v1, 0x1

    .line 290
    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disableWiFiDisplay()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWfdManager()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v0, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiDisplayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->setWifiDisplayEnabled(Z)Z

    goto :goto_0
.end method

.method public enableWiFiDisplay()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWfdManager()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    if-nez v0, :cond_2

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiDisplayState()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->setWifiDisplayEnabledWithPopUp(Z)Z

    goto :goto_0
.end method

.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWfdManager()V
    .locals 4

    .prologue
    .line 148
    new-instance v1, Lcom/lge/systemservice/core/LGContextImpl;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, mServiceContext:Lcom/lge/systemservice/core/LGContext;
    :try_start_0
    sget-object v2, Lcom/lge/systemservice/core/LGContext$ServiceList;->LGEWIFIDISPLAY_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WiFiScreenHandler_debug"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWiFiScreenStatus()I
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiDisplayState()I

    move-result v0

    return v0
.end method

.method public onClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 108
    const-string v1, "WiFiScreenHandler_debug"

    const-string v2, "onClick()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LGMDMWifiUIAdapter"

    invoke-virtual {v1, v2, v3}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    const v3, 0x20c003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 114
    const-string v1, "WiFiScreenHandler_debug"

    const-string v2, "WiFiScreenHandler onClick() MDM Block"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return v5

    .line 117
    :cond_0
    const-string v1, "service.btui.ampstate"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.action.WIFI_BT_HS_COEX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 123
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->onWiFiScreenButtonClick()V

    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 66
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 69
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWfdManager()V

    .line 70
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 71
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/MiracastHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/MiracastHandler$1;-><init>(Lcom/lge/quicksettings/handlers/MiracastHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 78
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 79
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 80
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/MiracastHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/MiracastHandler$2;-><init>(Lcom/lge/quicksettings/handlers/MiracastHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 87
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiScreenStatus()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 96
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataHotspot:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 100
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mReceiverDataWFD:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 103
    :cond_1
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiScreenSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onWiFiScreenButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiScreenStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->disableWiFiDisplay()V

    .line 173
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 174
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiScreenStatus()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->enableWiFiDisplay()V

    .line 177
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 178
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method

.method public setWiFiScreenButton()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiScreenStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 161
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->getWiFiScreenStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 164
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 167
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method
