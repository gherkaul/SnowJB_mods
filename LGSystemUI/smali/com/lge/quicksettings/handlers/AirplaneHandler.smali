.class public Lcom/lge/quicksettings/handlers/AirplaneHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "AirplaneHandler.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneDialog:Landroid/app/AlertDialog;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallState:I

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mIsWaitingForEcmExit:Z

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "AirplaneHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 3
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 49
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    iput v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mCallState:I

    .line 57
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z

    .line 59
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 60
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 61
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 70
    new-instance v0, Lcom/lge/quicksettings/handlers/AirplaneHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler$1;-><init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 93
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhone:Landroid/telephony/TelephonyManager;

    .line 94
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/lge/quicksettings/handlers/AirplaneHandler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mCallState:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/quicksettings/handlers/AirplaneHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/quicksettings/handlers/AirplaneHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/quicksettings/handlers/AirplaneHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method private getBTButtonStatus()I
    .locals 2

    .prologue
    .line 347
    const/4 v0, 0x3

    .line 349
    .local v0, status:I
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->getBTState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 359
    const/4 v0, 0x3

    .line 363
    :goto_0
    return v0

    .line 351
    :pswitch_0
    const/4 v0, 0x1

    .line 352
    goto :goto_0

    .line 355
    :pswitch_1
    const/4 v0, 0x0

    .line 356
    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBTState()I
    .locals 2

    .prologue
    .line 338
    const/high16 v0, -0x8000

    .line 340
    .local v0, btState:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 343
    :cond_0
    return v0
.end method

.method private onAirplaneButtonClick()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x7d0

    const/4 v3, 0x1

    .line 214
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 216
    .local v0, airplaneModeStatus:Z
    sget-boolean v2, Lcom/lge/quicksettings/handlers/AirplaneHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v5, "onAirplaneButtonClick() "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v2

    const-string v5, "LGMDMAirplaneModeUIAdpater"

    invoke-virtual {v2, v8, v5}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const v5, 0x20c00b6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 227
    sget-object v2, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v3, "onAirplaneButtonClick:onClick() MDM Block"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->getBTButtonStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 238
    :cond_2
    if-nez v0, :cond_4

    iget v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mCallState:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    invoke-static {}, Lcom/lge/systemui/Utils;->isVTActive()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const v5, 0x20c0131

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 247
    :cond_4
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 250
    iput-boolean v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z

    .line 252
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v1, v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v1, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    .end local v1           #ecmDialogIntent:Landroid/content/Intent;
    :cond_5
    if-nez v0, :cond_6

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setAirplaneModeOn(Z)V

    .line 261
    if-nez v0, :cond_7

    .line 262
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 263
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    goto :goto_0

    :cond_6
    move v2, v4

    .line 259
    goto :goto_1

    .line 265
    :cond_7
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 266
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 8
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    const-string v3, "ro.airplane.phoneapp"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 320
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const v5, 0x20a01cb

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09014e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 325
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 326
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 331
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    move v3, v5

    .line 313
    goto :goto_0
.end method

.method private setSoftapEnabled(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 272
    sget-boolean v3, Lcom/lge/quicksettings/handlers/AirplaneHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 273
    sget-object v3, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v4, "setSoftapEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 281
    .local v2, wifiState:I
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 283
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 284
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 292
    if-nez p1, :cond_3

    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_0
    if-ne v1, v5, :cond_3

    .line 301
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 307
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    .end local v1           #wifiSavedState:I
    :cond_3
    :goto_1
    return-void

    .line 304
    .restart local v1       #wifiSavedState:I
    :cond_4
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 297
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public airplaneModePopup()V
    .locals 4

    .prologue
    .line 377
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    const v3, 0x20a01cb

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 379
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09012c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 380
    const v2, 0x7f09012d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 382
    new-instance v2, Lcom/lge/quicksettings/handlers/AirplaneHandler$3;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler$3;-><init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    const v2, 0x7f09012b

    new-instance v3, Lcom/lge/quicksettings/handlers/AirplaneHandler$4;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler$4;-><init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    const v2, 0x7f09012a

    new-instance v3, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;-><init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 410
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 411
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 412
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;

    .line 414
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 3

    .prologue
    .line 368
    sget-boolean v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v1, "finalize() : destructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 374
    :cond_1
    return-void
.end method

.method public onClick()Z
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->onAirplaneButtonClick()V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 102
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 103
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 104
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;-><init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 149
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 151
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 161
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 192
    sget-boolean v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->TAG:Ljava/lang/String;

    const-string v1, "setAirplaneButton!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    .line 198
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 203
    invoke-direct {p0, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setSoftapEnabled(Z)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 209
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    goto :goto_0
.end method
