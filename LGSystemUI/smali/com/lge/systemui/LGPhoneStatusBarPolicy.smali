.class public Lcom/lge/systemui/LGPhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "LGPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;
    }
.end annotation


# static fields
.field private static final sSignalImages_dmb:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDmbRes:I

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field private final mService:Landroid/app/StatusBarManager;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mVTEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->sSignalImages_dmb:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x3t 0x2t 0x7ft
        0xct 0x3t 0x2t 0x7ft
        0xet 0x3t 0x2t 0x7ft
        0x10t 0x3t 0x2t 0x7ft
        0x12t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 43
    iput-boolean v9, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mVTEnabled:Z

    .line 60
    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 64
    new-instance v0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;-><init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 108
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 111
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "android.location.GPS_PRIVACY_ICON_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v0, "lge.intent.action.DMB_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v0, "android.intent.action.FELICA_LOCK"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v0, "lge.intent.action.common_dialog"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v0, "lge.intent.action.toast"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "com.lge.ims.action.SVC_STATUS_IND"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v0, "com.lge.vt.action.NOTIFICATION_ICON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.SIG_STR"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    const v3, 0x1080083

    invoke-virtual {v0, v1, v3, v9, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "headset"

    invoke-virtual {v0, v1, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps_privacy"

    const v3, 0x7f02003d

    invoke-virtual {v0, v1, v3, v9, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps_privacy"

    invoke-virtual {v0, v1, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 127
    invoke-direct {p0}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateGPSPrivacySetting()V

    .line 128
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "felica_lock"

    const v3, 0x7f02031b

    invoke-virtual {v0, v1, v3, v9, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "felica_lock"

    invoke-virtual {v0, v1, v9}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 130
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 131
    invoke-static {}, Landroid/app/AlertDialogExManager;->getInstance()Landroid/app/AlertDialogExManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialogExManager;->startManager(Landroid/content/Context;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 141
    .local v7, gpsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 142
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v10, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

    .line 143
    new-instance v8, Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;

    invoke-direct {v8, p0, v2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;-><init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;)V

    .line 144
    .local v8, locPrivacyObserver:Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v8}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 146
    .end local v8           #locPrivacyObserver:Lcom/lge/systemui/LGPhoneStatusBarPolicy$LocationPrivacyObserver;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateGPSPrivacySetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateDmb(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateFeliCaLock(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateVT(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateVTEnable(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateCdmaRoamingIcon(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateSignalStrength(Landroid/content/Intent;)V

    return-void
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 4
    .parameter "mServiceState"

    .prologue
    const/4 v0, 0x0

    .line 340
    if-eqz p1, :cond_0

    .line 341
    const-string v1, "LGPhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 347
    :pswitch_0
    const/4 v0, 0x1

    .line 350
    :cond_0
    :pswitch_1
    return v0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCdmaRoamingIcon(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const v12, 0x7f020279

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 266
    .local v3, m:Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 267
    const-string v5, "LGPhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCdmaRoamingIcon !!! intent.getExtras() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 271
    const-string v5, "LGPhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCdmaRoamingIcon !!! mServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v5}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    :cond_1
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 277
    :cond_2
    const v1, 0x7f020327

    .line 278
    .local v1, iconList:I
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 279
    .local v0, iconIndex:I
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 280
    .local v2, iconMode:I
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    .line 289
    .local v4, roamInd:I
    if-eq v0, v11, :cond_8

    if-eq v2, v11, :cond_8

    .line 291
    if-ne v0, v10, :cond_3

    .line 292
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 295
    :cond_3
    if-nez v0, :cond_7

    .line 296
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "ROAMING_INDICATOR_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v1, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 310
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Network Extender"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 312
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "HOME ROAMING ICON !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-nez v2, :cond_9

    .line 314
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v12, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 320
    :cond_5
    :goto_2
    const/16 v5, 0x63

    if-ne v4, v5, :cond_6

    .line 321
    const-string v5, "LGPhoneStatusBarPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusbar: femtoicon display..roamInd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ iconMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez v2, :cond_6

    .line 323
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v12, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 326
    :cond_6
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v10}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 298
    :cond_7
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 299
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "FLASH mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    const v7, 0x7f020328

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_8
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v5, v6, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 315
    :cond_9
    if-ne v2, v10, :cond_5

    .line 316
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    const v7, 0x7f02032b

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2
.end method

.method private final updateDmb(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, iconLevel:I
    const-string v3, "DmbOn"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 191
    .local v2, mDmb:Z
    sget-object v1, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->sSignalImages_dmb:[I

    .line 192
    .local v1, iconList:[I
    const-string v3, "level"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    const/4 v3, 0x4

    if-gt v0, v3, :cond_0

    if-gez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v3, "LGPhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boolean  ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "R = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    aget v3, v1, v0

    iput v3, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mDmbRes:I

    .line 198
    iget v3, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mDmbRes:I

    if-gez v3, :cond_2

    .line 199
    const-string v3, "LGPhoneStatusBarPolicy"

    const-string v4, "mDmb is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "dmb"

    iget v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mDmbRes:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "dmb"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateFeliCaLock(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, action:Ljava/lang/String;
    const-string v2, "felica_lock"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 254
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 256
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "felica_lock"

    const v4, 0x7f02031b

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "felica_lock"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "felica_lock"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateGPSPrivacySetting()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, loc_provider:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 167
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    const v4, 0x7f02003e

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    const v4, 0x7f02003d

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    const v4, 0x7f02003f

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "gps_privacy"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private final updateHeadset(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    const-string v1, "state"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, headsetState:I
    if-ne v0, v6, :cond_0

    .line 152
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "headset"

    const v3, 0x1080083

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "headset"

    invoke-virtual {v1, v2, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "headset"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 332
    .local v0, m:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 333
    const-string v1, "LGPhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSignalStrength !!! intent.getExtras() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method private final updateVT(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 207
    const-string v2, "state"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, vtState:I
    const-string v2, "svcType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, svcType:Ljava/lang/String;
    const-string v2, "LGPhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VT] updateVT()  vtState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "LGPhoneStatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VT] updateVT()  svcType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v0, :cond_1

    const-string v2, "VT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 213
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 214
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vt"

    const v4, 0x7f020390

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mVTEnabled:Z

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vt"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 230
    :cond_1
    return-void

    .line 215
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 216
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vt"

    const v4, 0x7f02038e

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v8, :cond_4

    .line 220
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vt"

    const v4, 0x7f02038f

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 222
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vt"

    invoke-virtual {v2, v3, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVTEnable(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    const-string v1, "state"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, vtEableState:I
    const-string v1, "LGPhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VT] updateVTEnable()  vtEableState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-ne v0, v5, :cond_2

    .line 236
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 238
    :cond_0
    iput-boolean v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mVTEnabled:Z

    .line 239
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "vt"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-eq v1, v7, :cond_3

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 244
    :cond_3
    iput-boolean v4, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mVTEnabled:Z

    .line 245
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "vt"

    invoke-virtual {v1, v2, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method
