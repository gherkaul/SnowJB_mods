.class public Lcom/android/server/location/LgeGpsLocationProvider;
.super Lcom/android/server/location/GpsLocationProvider;
.source "LgeGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;,
        Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;,
        Lcom/android/server/location/LgeGpsLocationProvider$LgeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SET_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final DEBUG:Z = true

.field public static final EXTRA_DISABLE_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "disable"

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field public static final GPS_DISABLED:I = 0x1

.field public static final GPS_ENABLED:I = 0x0

.field public static final GPS_ENGINE_STATUS:Ljava/lang/String; = "android.location.GPS_ENGINE_STATUS"

.field public static final GPS_ENGINE_STATUS_CHANGE:Ljava/lang/String; = "android.location.GPS_ENGINE_STATUS_CHANGE"

.field public static final GPS_FORCED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GPS_XTRA_DATA_DOWNLOAD:Ljava/lang/String; = "com.lge.gps.GPS_XTRA_DATA_DOWNLOAD"

.field private static INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = null

.field static LED_GPS_ID:I = 0x0

.field private static final LGE_GNSS_CONF_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final LGE_GNSS_LOCK_MODE:I = 0x32

.field private static final LGU_SET_XTRA_ENABLED:I = 0x34

.field private static final MESSAGE_ASSISTED_GPS_ENABLE:I = 0x2

.field private static final MESSAGE_GPS_PROVIDER_ENABLE:I = 0x1

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SPR_FRAMEWORK_EXTRA_CMD:I = 0x33

.field private static SlpServerSetted:Z = false

.field private static final TAG:Ljava/lang/String; = "LgeGpsLocationProvider"

.field private static final XTRA_SHOW_MESSAGE:I = 0xa

.field private static ledOn:I

.field private static final lge_xtra_download_start_msg:[Ljava/lang/String;

.field private static mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

.field private static mLgeSuplServerHost:Ljava/lang/String;

.field private static mSettingGpsEnable:Z

.field private static mVendorName:Ljava/lang/String;

.field private static mXtraDownloadDate:J

.field private static mXtraDownloadFrequency:I

.field private static nm:Landroid/app/NotificationManager;

.field private static notification:Landroid/app/Notification;

.field private static final sVibratePattern:[J

.field private static soundOn:I


# instance fields
.field private apnName:Ljava/lang/String;

.field private isGpsRecorveryMode:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mExtProperties:Ljava/util/Properties;

.field private mGPSSettingEnabled:Z

.field private mGPSSoundPlayers:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private final mLgeContext:Landroid/content/Context;

.field private mLgeHandler:Landroid/os/Handler;

.field private mLgeProperties:Ljava/util/Properties;

.field private mLgeSuplServerPort:I

.field private mLgeSuplType:I

.field private mLgeTlsMode:I

.field private mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

.field private mNeedSlpChange:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPositionModeSetted:Z

.field private mSKTTmapStarted:Z

.field private final mThread:Ljava/lang/Thread;

.field mToastText:Ljava/lang/CharSequence;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 138
    sput-boolean v4, Lcom/android/server/location/LgeGpsLocationProvider;->SlpServerSetted:Z

    .line 152
    sput-boolean v4, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    .line 159
    const-string v0, "android.location.xtra_setting_changed"

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    .line 164
    const/16 v0, 0x5a0

    sput v0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    .line 165
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 169
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "GPS \ubcf4\uc870\ub370\uc774\ud130\uac00 \ub2e4\uc6b4\ub85c\ub4dc \ub429\ub2c8\ub2e4."

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "Downloading assisted GPS data."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->lge_xtra_download_start_msg:[Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/app/Notification;

    const-string v1, "LED_GPS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->notification:Landroid/app/Notification;

    .line 198
    const/4 v0, 0x7

    sput v0, Lcom/android/server/location/LgeGpsLocationProvider;->LED_GPS_ID:I

    .line 202
    const/4 v0, -0x1

    sput v0, Lcom/android/server/location/LgeGpsLocationProvider;->soundOn:I

    .line 203
    sput v4, Lcom/android/server/location/LgeGpsLocationProvider;->ledOn:I

    .line 205
    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->sVibratePattern:[J

    return-void

    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 13
    .parameter "context"
    .parameter "locationManager"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 130
    iput v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 143
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 149
    iput-boolean v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNeedSlpChange:Z

    .line 150
    iput-boolean v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->apnName:Ljava/lang/String;

    .line 153
    iput-boolean v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    .line 154
    iput-boolean v12, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    .line 158
    iput-boolean v11, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 208
    new-instance v0, Lcom/android/server/location/LgeGpsLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LgeGpsLocationProvider$1;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 277
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "LgeGpsLocationProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadConfig()V

    .line 280
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    .line 281
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "SKT_LTE"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKT_3G"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const-string v0, "com.skt.intent.action.AGPS_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v0, "com.skt.intent.action.AGPS_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v0, "com.skt.intent.action.GPS_TURN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v0, "com.skt.intent.action.GPS_TURN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_1
    const-string v0, "LGU"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const-string v0, "com.android.lge.action_at_timeout_uplus"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    .line 297
    :cond_2
    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    :cond_3
    const-string v0, "VDF"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SFR"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    :cond_4
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "VDF____"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    new-instance v0, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;

    invoke-direct {v0, p0}, Lcom/android/server/location/LgeGpsLocationProvider$LgeGpsLocationProviderThread;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 311
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 314
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "value"

    aput-object v3, v2, v12

    const-string v3, "(name=?) or (name=?) "

    new-array v4, v4, [Ljava/lang/String;

    const-string v10, "location_providers_allowed"

    aput-object v10, v4, v11

    const-string v10, "assisted_gps_enabled"

    aput-object v10, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 333
    .local v7, gpsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 334
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v12, v5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

    .line 335
    new-instance v9, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;

    invoke-direct {v9, p0, v5}, Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;-><init>(Lcom/android/server/location/LgeGpsLocationProvider;Lcom/android/server/location/LgeGpsLocationProvider$1;)V

    .line 336
    .local v9, locPrivacyObserver:Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLocPrivacyContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 340
    .end local v9           #locPrivacyObserver:Lcom/android/server/location/LgeGpsLocationProvider$LocationPrivacyObserver;
    :cond_6
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibrator:Landroid/os/Vibrator;

    .line 342
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->nm:Landroid/app/NotificationManager;

    .line 345
    :cond_7
    return-void

    .line 316
    .end local v7           #gpsCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 317
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private LM_getGpsState()I
    .locals 4

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps_device_managerment_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1349
    .local v0, gpsState:I
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LM_getGpsState return GPS State as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return v0
.end method

.method private LM_setGpsState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1369
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LM_setGpsState sets GPS State to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    packed-switch p1, :pswitch_data_0

    .line 1419
    :goto_0
    return-void

    .line 1376
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1380
    invoke-virtual {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->setUseLocationForServices(Z)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1387
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1391
    invoke-virtual {p0, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->setUseLocationForServices(Z)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1398
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1399
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1402
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_device_managerment_enabled"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LgeGpsLocationProvider;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->handleGpsXTRAEnable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSKTTmapStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_get_indicator_state()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/LgeGpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/LgeGpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->updateGpsLockMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->updateGpsXTRAEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LgeGpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/location/LgeGpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSettingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/LgeGpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LgeGpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/LgeGpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->gpsRilRecovery()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    sput-boolean p0, Lcom/android/server/location/LgeGpsLocationProvider;->mSettingGpsEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/location/LgeGpsLocationProvider;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeGnssLockMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LgeGpsLocationProvider;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->handleFmwExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private activateAGPS()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1015
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "KT LBSExtension activateAGPS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1018
    return v2
.end method

.method private activateGPS()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 995
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "KT LBSExtension activateGPS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 997
    .local v0, mSettingGpsEnable:Z
    if-nez v0, :cond_0

    .line 999
    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1001
    :cond_0
    return v3
.end method

.method private deactivateAGPS()Z
    .locals 3

    .prologue
    .line 1022
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "KT LBSExtension deactivateAGPS()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method private deactivateGPS()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1005
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "KT LBSExtension activateGPS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1007
    .local v0, mSettingGpsEnable:Z
    if-eqz v0, :cond_0

    .line 1009
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1011
    :cond_0
    return v3
.end method

.method private getListenerPackageName(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, packagesName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 412
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getXTRAUserAgent()Ljava/lang/String;
    .locals 25

    .prologue
    .line 1438
    const-string v9, "LG"

    .line 1445
    .local v9, mManufacturer:Ljava/lang/String;
    const-string v18, "Android"

    .line 1446
    .local v18, mUserAgent:Ljava/lang/String;
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "Jan"

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const-string v22, "Feb"

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const-string v22, "Mar"

    aput-object v22, v12, v21

    const/16 v21, 0x3

    const-string v22, "Apr"

    aput-object v22, v12, v21

    const/16 v21, 0x4

    const-string v22, "May"

    aput-object v22, v12, v21

    const/16 v21, 0x5

    const-string v22, "Jun"

    aput-object v22, v12, v21

    const/16 v21, 0x6

    const-string v22, "Jul"

    aput-object v22, v12, v21

    const/16 v21, 0x7

    const-string v22, "Aug"

    aput-object v22, v12, v21

    const/16 v21, 0x8

    const-string v22, "Sep"

    aput-object v22, v12, v21

    const/16 v21, 0x9

    const-string v22, "Oct"

    aput-object v22, v12, v21

    const/16 v21, 0xa

    const-string v22, "Nov"

    aput-object v22, v12, v21

    const/16 v21, 0xb

    const-string v22, "Dec"

    aput-object v22, v12, v21

    .line 1448
    .local v12, mMonth_db:[Ljava/lang/String;
    const-string v21, "SPR"

    sget-object v22, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1449
    const-string v21, "Android"

    .line 1526
    :goto_0
    return-object v21

    .line 1453
    :cond_0
    const-string v21, "ro.cdma.home.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, mCarrierNumeric:Ljava/lang/String;
    const-string v21, "310120"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1456
    const-string v3, "Sprint"

    .line 1471
    .local v3, mCarrierName:Ljava/lang/String;
    :goto_1
    const-string v9, "LG"

    .line 1473
    const-string v21, "ro.product.model"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1475
    .local v10, mModelName:Ljava/lang/String;
    const-string v21, "ro.board.platform"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1477
    .local v5, mChipsetName:Ljava/lang/String;
    const-string v13, "LTE-CDMA"

    .line 1479
    .local v13, mOtherTech:Ljava/lang/String;
    const-string v21, "ro.lge.swversion"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1481
    .local v15, mSoftwareVersion:Ljava/lang/String;
    const-string v8, "Android"

    .line 1483
    .local v8, mDeviceClass:Ljava/lang/String;
    const-string v21, "ro.build.date"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, mBuildDate:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1487
    .local v14, mParsedDate:Ljava/lang/StringBuffer;
    new-instance v20, Ljava/util/StringTokenizer;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v20, stok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1489
    .local v7, mDay:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 1490
    .local v11, mMonth:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1491
    .local v6, mDate:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1492
    .local v17, mTime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 1493
    .local v16, mStandardTime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 1496
    .local v19, mYear:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1497
    const-string v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1499
    const-string v21, "Jan"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "01"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1512
    :cond_1
    :goto_2
    const-string v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1513
    const-string v21, "%02d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1524
    const-string v21, "LgeGpsLocationProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gpsOneXTRA HTTP User-Agent : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v18

    .line 1526
    goto/16 :goto_0

    .line 1458
    .end local v2           #mBuildDate:Ljava/lang/String;
    .end local v3           #mCarrierName:Ljava/lang/String;
    .end local v5           #mChipsetName:Ljava/lang/String;
    .end local v6           #mDate:Ljava/lang/String;
    .end local v7           #mDay:Ljava/lang/String;
    .end local v8           #mDeviceClass:Ljava/lang/String;
    .end local v10           #mModelName:Ljava/lang/String;
    .end local v11           #mMonth:Ljava/lang/String;
    .end local v13           #mOtherTech:Ljava/lang/String;
    .end local v14           #mParsedDate:Ljava/lang/StringBuffer;
    .end local v15           #mSoftwareVersion:Ljava/lang/String;
    .end local v16           #mStandardTime:Ljava/lang/String;
    .end local v17           #mTime:Ljava/lang/String;
    .end local v19           #mYear:Ljava/lang/String;
    .end local v20           #stok:Ljava/util/StringTokenizer;
    :cond_2
    const-string v21, "311490"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1460
    const-string v3, "Virgin"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1462
    .end local v3           #mCarrierName:Ljava/lang/String;
    :cond_3
    const-string v21, "311870"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1464
    const-string v3, "Boost"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1468
    .end local v3           #mCarrierName:Ljava/lang/String;
    :cond_4
    const-string v3, "Wholesale"

    .restart local v3       #mCarrierName:Ljava/lang/String;
    goto/16 :goto_1

    .line 1500
    .restart local v2       #mBuildDate:Ljava/lang/String;
    .restart local v5       #mChipsetName:Ljava/lang/String;
    .restart local v6       #mDate:Ljava/lang/String;
    .restart local v7       #mDay:Ljava/lang/String;
    .restart local v8       #mDeviceClass:Ljava/lang/String;
    .restart local v10       #mModelName:Ljava/lang/String;
    .restart local v11       #mMonth:Ljava/lang/String;
    .restart local v13       #mOtherTech:Ljava/lang/String;
    .restart local v14       #mParsedDate:Ljava/lang/StringBuffer;
    .restart local v15       #mSoftwareVersion:Ljava/lang/String;
    .restart local v16       #mStandardTime:Ljava/lang/String;
    .restart local v17       #mTime:Ljava/lang/String;
    .restart local v19       #mYear:Ljava/lang/String;
    .restart local v20       #stok:Ljava/util/StringTokenizer;
    :cond_5
    const-string v21, "Feb"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "02"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1501
    :cond_6
    const-string v21, "Mar"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "03"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1502
    :cond_7
    const-string v21, "Apr"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "04"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1503
    :cond_8
    const-string v21, "May"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "05"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1504
    :cond_9
    const-string v21, "Jun"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "06"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1505
    :cond_a
    const-string v21, "Jul"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string v21, "07"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1506
    :cond_b
    const-string v21, "Aug"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const-string v21, "08"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1507
    :cond_c
    const-string v21, "Sep"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "09"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1508
    :cond_d
    const-string v21, "Oct"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const-string v21, "10"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1509
    :cond_e
    const-string v21, "Nov"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const-string v21, "11"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 1510
    :cond_f
    const-string v21, "Dec"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "12"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method private gpsRilRecovery()V
    .locals 4

    .prologue
    .line 1061
    const-string v1, "1"

    const-string v2, "ril.reset_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1063
    .local v0, isRilReset:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRilReset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    if-eqz v0, :cond_0

    .line 1066
    const-string v1, "20"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "20"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    .line 1068
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-nez v1, :cond_1

    .line 1069
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Set isGpsRecorveryMode flag is TRUE ......"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 1073
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    if-eqz v1, :cond_2

    .line 1074
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "CP is resetting. Network is available after CP Reset, and then GPS Recorvery Mode Start ...... "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->isGpsRecorveryMode:Z

    .line 1076
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->enable()V

    .line 1079
    :cond_2
    return-void
.end method

.method private handleFmwExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1295
    const/4 v0, 0x1

    .line 1297
    .local v0, ret:Z
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v1, "spr.gps.extracmd.fmw.pde_addr_init"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1301
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "pde_addr_init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v1, "lge.gps.extracmd.raw.pde_addr_init"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.pde_addr_init"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    .line 1331
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->releaseInjectRawCmd()V

    .line 1333
    if-nez v0, :cond_0

    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "SPR Framework Extra Command Fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    return v0

    .line 1304
    :cond_1
    const-string v1, "spr.gps.extracmd.fmw.gpstestprl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1305
    const-string v1, "gps_test_mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1307
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "set gps test prl mode : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v1, "lge.gps.extracmd.raw.spr_gpstestprl.enable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.spr_gpstestprl.enable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    goto :goto_0

    .line 1312
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "set gps test prl mode : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const-string v1, "lge.gps.extracmd.raw.spr_gpstestprl.disable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.spr_gpstestprl.disable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    goto :goto_0

    .line 1317
    :cond_3
    const-string v1, "spr.gps.extracmd.fmw.dm_set_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1318
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_set_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const-string v1, "mode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_setGpsState(I)V

    goto :goto_0

    .line 1321
    :cond_4
    const-string v1, "spr.gps.extracmd.fmw.dm_get_gps_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1322
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "dm_get_gps_state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v1, "mode"

    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->LM_getGpsState()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1327
    :cond_5
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid SPR Framework Extra Command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private handleGpsXTRAEnable(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 1251
    const/4 v0, 0x1

    .line 1253
    .local v0, ret:Z
    if-ne p1, v3, :cond_0

    .line 1254
    const-string v1, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.xtra.enable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    .line 1263
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->releaseInjectRawCmd()V

    .line 1265
    return v3

    .line 1258
    :cond_0
    const-string v1, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "lge.gps.extracmd.raw.xtra.disable"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    goto :goto_0
.end method

.method private ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v8, 0x1

    .line 716
    const/4 v4, 0x0

    .line 718
    .local v4, result:Z
    const-string v5, "activateGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->activateGPS()Z

    move-result v5

    .line 778
    :goto_0
    return v5

    .line 721
    :cond_0
    const-string v5, "deactivateGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->deactivateGPS()Z

    move-result v5

    goto :goto_0

    .line 724
    :cond_1
    const-string v5, "activateAGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 725
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->activateAGPS()Z

    move-result v5

    goto :goto_0

    .line 727
    :cond_2
    const-string v5, "deactivateAGPS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 728
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->deactivateAGPS()Z

    move-result v5

    goto :goto_0

    .line 730
    :cond_3
    const-string v5, "setOllehServer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 731
    if-eqz p2, :cond_5

    .line 732
    const-string v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, KTSuplServerHost:Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 735
    .local v1, KTSuplServerPort:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_setOllehServer() -SUPL_HOST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SUPL_PORT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    .line 739
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 740
    .local v2, LgeExtras:Landroid/os/Bundle;
    const-string v5, "time"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    const-string v5, "delete_aiding_data"

    invoke-super {p0, v5, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 743
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 745
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    .end local v0           #KTSuplServerHost:Ljava/lang/String;
    .end local v1           #KTSuplServerPort:I
    :cond_5
    :goto_1
    move v5, v4

    .line 778
    goto :goto_0

    .line 748
    :cond_6
    const-string v5, "setNativeServer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 749
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "KT_setNativeServer()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 752
    .restart local v2       #LgeExtras:Landroid/os/Bundle;
    const-string v5, "time"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 753
    const-string v5, "delete_aiding_data"

    invoke-super {p0, v5, v2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 754
    const-string v5, "supl.google.com"

    const/16 v6, 0x1c6c

    invoke-virtual {p0, v8, v5, v6}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 755
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 756
    const/4 v4, 0x1

    .line 758
    goto :goto_1

    .line 759
    .end local v2           #LgeExtras:Landroid/os/Bundle;
    :cond_7
    const-string v5, "setMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 760
    if-eqz p2, :cond_5

    .line 761
    const-string v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 763
    .local v3, mode:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_setMode() mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 765
    const/4 v4, 0x1

    .line 766
    goto :goto_1

    .line 768
    .end local v3           #mode:I
    :cond_8
    const-string v5, "getMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 769
    if-eqz p2, :cond_5

    .line 770
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KT_getMode() mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v5, "mode"

    iget v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 776
    :cond_9
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ktHandleExtraCmd: unknown command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private led_off()V
    .locals 3

    .prologue
    .line 1678
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "LED off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1682
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1683
    return-void
.end method

.method private led_on()V
    .locals 3

    .prologue
    .line 1642
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "LED on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1655
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1656
    return-void
.end method

.method private lgeDefaultGnssConfig()V
    .locals 4

    .prologue
    .line 655
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "LGE GNSS Ext Config Default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/ext_gps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 660
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "%s/data/ext_gps.conf delete fail !!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->loadConfig()V

    .line 667
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, " LGE GNSS Ext Config Default Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private lgeGnssLockMode(I)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 1211
    const/4 v1, 0x1

    .line 1212
    .local v1, ret:Z
    const/4 v0, 0x0

    .line 1214
    .local v0, init:Z
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lgeGnssLockMode , mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1217
    const-string v2, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "lge.gps.extracmd.raw.setgnss_lock.enable"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v1

    .line 1226
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->releaseInjectRawCmd()V

    .line 1228
    if-nez v1, :cond_0

    .line 1229
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "lgeGnssLockMode fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    return v1

    .line 1222
    :cond_1
    const-string v2, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "lge.gps.extracmd.raw.setgnss_lock.disable"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v1

    goto :goto_0
.end method

.method private lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v3, 0x1

    .line 472
    const/4 v8, 0x1

    .line 473
    .local v8, ret:Z
    const/4 v7, 0x0

    .line 475
    .local v7, init:Z
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "lge.gps.extracmd.fmw.setgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    const-string v0, "supl_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    .line 479
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-eqz v0, :cond_4

    .line 481
    const-string v0, "pos_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 483
    const-string v0, "supl_host"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, supl_host:Ljava/lang/String;
    const-string v0, "supl_port"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 485
    .local v10, supl_port:I
    if-eqz v9, :cond_0

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    if-eq v10, v0, :cond_2

    .line 488
    :cond_1
    sput-object v9, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 489
    iput v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 491
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 493
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed supl addr, after host : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 497
    :cond_2
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    if-eq v0, v1, :cond_3

    .line 499
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed tls mode, before mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v0, "tls_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 502
    const-string v0, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v8

    .line 505
    .end local v6           #LgeTlsMode:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSaveGnssConfig(IILjava/lang/String;II)V

    .line 524
    .end local v9           #supl_host:Ljava/lang/String;
    .end local v10           #supl_port:I
    :goto_0
    return v8

    .line 509
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeDefaultGnssConfig()V

    goto :goto_0

    .line 512
    :cond_5
    const-string v0, "lge.gps.extracmd.fmw.getgnss_settinginfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 513
    const-string v0, "supl_type"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const-string v0, "supl_host"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "supl_port"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    const-string v0, "tls_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    const-string v0, "pos_mode"

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 521
    :cond_6
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid LGE Framework Extra Command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private lgeSaveGnssConfig(IILjava/lang/String;II)V
    .locals 9
    .parameter "PositionMode"
    .parameter "SuplType"
    .parameter "SuplHost"
    .parameter "SuplPort"
    .parameter "TlsMode"

    .prologue
    .line 631
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LGE GNSS Ext Config Save, posMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SuplType ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_HOST ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SUPL_PORT ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TLS_MODE ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v3, 0x0

    .line 635
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/ext_gps.conf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v3           #writer:Ljava/io/FileWriter;
    .local v4, writer:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "%s=%d\n%s=%d\n%s=%s\n%s=%d\n%s=%d\n"

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "POSITION_MODE"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "SUPL_TYPE"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "SUPL_HOST"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p3, v6, v7

    const/4 v7, 0x6

    const-string v8, "SUPL_PORT"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "TLS_MODE"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, config:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 647
    if-eqz v4, :cond_0

    .line 648
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 652
    .end local v0           #config:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File save Fail"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 647
    if-eqz v3, :cond_1

    .line 648
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 649
    :catch_1
    move-exception v1

    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 647
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 648
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 647
    :cond_2
    :goto_4
    throw v5

    .line 649
    :catch_2
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "LgeGpsLocationProvider"

    const-string v7, "LG GNSS Config File close Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v0       #config:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "LG GNSS Config File close Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 647
    .end local v0           #config:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_3

    .line 644
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private lge_force_indicator_state(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1848
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1850
    const-string v2, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indicator_state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "active"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    return-void

    .line 1850
    :cond_0
    const-string v1, "inactive"

    goto :goto_0
.end method

.method private lge_get_indicator_state()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1831
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1833
    iget-object v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .line 1834
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_1

    .line 1835
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 1840
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v2

    .line 1838
    .restart local v0       #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method private lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "command"
    .parameter "extras"

    .prologue
    const/16 v5, 0x5a0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, result:Z
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_4

    .line 785
    const-string v3, "Invisible_Indi"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 787
    .local v1, uid:I
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 788
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGUGPSON, add, packages = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uid = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_0
    const/4 v0, 0x1

    .end local v1           #uid:I
    :cond_0
    :goto_1
    move v2, v0

    .line 861
    :goto_2
    return v2

    .line 794
    .restart local v1       #uid:I
    :cond_1
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGUGPSON, add duplicated uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    .end local v1           #uid:I
    :cond_2
    const-string v2, "visible_Indi"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 800
    .restart local v1       #uid:I
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3

    .line 801
    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 803
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGUGPSON, remove, packages = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  uid = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    .line 807
    :cond_3
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LGUGPSON, remove nonexisting uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 812
    .end local v1           #uid:I
    :cond_4
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 813
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 814
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 817
    :cond_5
    const-string v3, "request_xtra_download"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 818
    const-string v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-super {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 820
    :cond_6
    const-string v3, "call_xtra_setting"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 821
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraSettings()V

    .line 822
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 824
    :cond_7
    const-string v3, "set_xtra_download_frequency"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 825
    const-string v2, "set_xtra_download_frequency_024"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_8

    .line 826
    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    .line 854
    :goto_4
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_xtra_download_frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 828
    :cond_8
    const-string v2, "set_xtra_download_frequency_048"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_9

    .line 829
    const/16 v2, 0xb40

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 831
    :cond_9
    const-string v2, "set_xtra_download_frequency_072"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_a

    .line 832
    const/16 v2, 0x10e0

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 834
    :cond_a
    const-string v2, "set_xtra_download_frequency_096"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_b

    .line 835
    const/16 v2, 0x1680

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 837
    :cond_b
    const-string v2, "set_xtra_download_frequency_120"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_c

    .line 838
    const/16 v2, 0x1c20

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 840
    :cond_c
    const-string v2, "set_xtra_download_frequency_144"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_d

    .line 841
    const/16 v2, 0x21c0

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 843
    :cond_d
    const-string v2, "set_xtra_download_frequency_168"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_e

    .line 844
    const/16 v2, 0x2760

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 847
    :cond_e
    if-eqz p2, :cond_f

    .line 848
    const-string v2, "xtra_download_frequency"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 851
    :cond_f
    sput v5, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_4

    .line 858
    :cond_10
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lguHandleExtraCmd: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private loadConfig()V
    .locals 11

    .prologue
    .line 529
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    .line 531
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 533
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    invoke-virtual {v8, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 534
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 536
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v9, "LGE_GPS_POSITION_MODE"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 537
    .local v4, posMode:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 539
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    :cond_0
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 547
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, mLgeSuplPortString:Ljava/lang/String;
    sget-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    .line 550
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 556
    :cond_1
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v9, "LGE_TLS_MODE"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 557
    .local v0, TlsModeString:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 559
    :try_start_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 567
    :cond_2
    :goto_2
    :try_start_6
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeProperties:Ljava/util/Properties;

    const-string v9, "VENDOR"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    .line 570
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gps.conf - mPositionMode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_HOST ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_PORT ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", TLS_MODE ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",VendorName ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 576
    .end local v0           #TlsModeString:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    .end local v4           #posMode:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :goto_3
    :try_start_7
    new-instance v2, Ljava/io/File;

    const-string v8, "/data/ext_gps.conf"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 579
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    iput-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    .line 580
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 581
    .restart local v5       #stream:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    invoke-virtual {v8, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 582
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 584
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v9, "POSITION_MODE"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v4

    .line 585
    .restart local v4       #posMode:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 587
    :try_start_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 593
    :cond_3
    :goto_4
    :try_start_9
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v9, "SUPL_TYPE"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v6

    .line 594
    .local v6, suplType:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 596
    :try_start_a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 602
    :cond_4
    :goto_5
    :try_start_b
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 604
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v9, "SUPL_PORT"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v3

    .line 605
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 607
    :try_start_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 613
    :cond_5
    :goto_6
    :try_start_d
    iget-object v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mExtProperties:Ljava/util/Properties;

    const-string v9, "TLS_MODE"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v7

    .line 614
    .local v7, tlsMode:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 616
    :try_start_e
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 623
    :cond_6
    :goto_7
    :try_start_f
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ext_gps.conf - posMode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_HOST ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", SUPL_PORT ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", TLS_MODE ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 628
    .end local v2           #file:Ljava/io/File;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    .end local v4           #posMode:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v6           #suplType:Ljava/lang/String;
    .end local v7           #tlsMode:Ljava/lang/String;
    :cond_7
    :goto_8
    return-void

    .line 541
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #posMode:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse LGE_GPS_POSITION_MODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    .line 571
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #posMode:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 572
    .local v1, e:Ljava/io/IOException;
    const-string v8, "LgeGpsLocationProvider"

    const-string v9, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 551
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    .restart local v4       #posMode:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 552
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_11
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 560
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #TlsModeString:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 561
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse LGE_TLS_MODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_2

    .line 588
    .end local v0           #TlsModeString:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #mLgeSuplPortString:Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 589
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    :try_start_12
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse POSITION_MODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_4

    .line 625
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #posMode:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    .line 626
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "LgeGpsLocationProvider"

    const-string v9, " LG GNSS Ext Config File does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 597
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #posMode:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v6       #suplType:Ljava/lang/String;
    :catch_6
    move-exception v1

    .line 598
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_13
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_TYPE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 608
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #mLgeSuplPortString:Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 609
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse SUPL_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 617
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #tlsMode:Ljava/lang/String;
    :catch_8
    move-exception v1

    .line 618
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v8, "LgeGpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse TLS_MODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_7
.end method

.method private releaseInjectRawCmd()V
    .locals 3

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1156
    .local v0, gpsEnable:Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->disable()V

    .line 1157
    :cond_0
    return-void
.end method

.method private sendInjectRawCmd(IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 4
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "extras"

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->enable()V

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1145
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1146
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1147
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1148
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1149
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1150
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 2
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 934
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 935
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 936
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 937
    return-void
.end method

.method private sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 670
    const/4 v1, 0x0

    .line 671
    .local v1, result:Z
    if-eqz p2, :cond_1

    .line 672
    const-string v4, "opType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, str_opType:Ljava/lang/String;
    const-string v4, "cmdType"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, str_cmdType:Ljava/lang/String;
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.skt.intent.action.AGPS :cmdType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v4, "on"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 678
    const-string v4, "msBased"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 682
    .local v0, LgeExtras:Landroid/os/Bundle;
    const-string v4, "time"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 683
    const-string v4, "delete_aiding_data"

    invoke-super {p0, v4, v0}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 685
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 690
    .end local v0           #LgeExtras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 691
    const-string v4, "wpde.nate.com"

    const/16 v5, 0x1c6b

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 692
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNeedSlpChange:Z

    .line 693
    const/4 v1, 0x1

    .line 712
    .end local v2           #str_cmdType:Ljava/lang/String;
    .end local v3           #str_opType:Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 687
    .restart local v2       #str_cmdType:Ljava/lang/String;
    .restart local v3       #str_opType:Ljava/lang/String;
    :cond_2
    const-string v4, "msAssisted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 688
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 695
    :cond_3
    const-string v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 696
    const-string v4, "SKT_LTE"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 697
    iput v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 702
    :cond_4
    :goto_2
    iput-boolean v8, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionModeSetted:Z

    .line 703
    const/4 v1, 0x1

    goto :goto_1

    .line 699
    :cond_5
    const-string v4, "SKT_3G"

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 700
    const-string v4, "supl.google.com"

    const/16 v5, 0x1c6c

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_2

    .line 707
    :cond_6
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid sktHandleExtraCmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sound_vib_off()V
    .locals 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayers:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    if-eqz v0, :cond_0

    .line 1739
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "mGPSSoundPlayers != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayers:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->stop()V

    .line 1741
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1743
    :cond_0
    return-void
.end method

.method private sound_vib_on()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1660
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_gps_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/location/LgeGpsLocationProvider;->soundOn:I

    .line 1663
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/location/LgeGpsLocationProvider;->soundOn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    sget v0, Lcom/android/server/location/LgeGpsLocationProvider;->soundOn:I

    if-ne v0, v3, :cond_0

    .line 1666
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if SOUND on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/location/LgeGpsLocationProvider;->soundOn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-direct {v0}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayers:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    .line 1668
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mGPSSoundPlayers:Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;

    invoke-virtual {v0}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->play()V

    .line 1669
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "player started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->sVibratePattern:[J

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1674
    :cond_0
    return-void
.end method

.method private updateGpsLockMode()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1160
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatGpsLockMode - vendor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "MPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "CRK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "ACG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1175
    .local v7, loc_provider:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1176
    const/4 v2, 0x0

    .line 1178
    .local v2, gps_lock_value:I
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatGpsLockMode - loc_provider: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    const/4 v2, 0x1

    .line 1206
    :goto_1
    const/16 v1, 0x32

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->sendInjectRawCmd(IIILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1188
    :cond_2
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1190
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 1194
    .local v6, gpsEnable:Z
    if-eqz v6, :cond_3

    .line 1195
    const/4 v2, 0x0

    goto :goto_1

    .line 1198
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1203
    .end local v6           #gpsEnable:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateGpsXTRAEnable()V
    .locals 7

    .prologue
    .line 1236
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "updateGpsXTRAEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v0, "LGU"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 1241
    .local v2, agpsEnabled:I
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGpsXTRAEnable, LGU+ agpsEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/16 v1, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->sendInjectRawCmd(IIILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    .end local v2           #agpsEnabled:I
    :cond_0
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v6

    .line 1245
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "LgeGpsLocationProvider"

    const-string v1, "Exception in updateGpsXTRAEnable:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastXtraDownload(Ljava/lang/String;)V
    .locals 8
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1038
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const-string v1, "GPS \ubcf4\uc870\ub370\uc774\ud130\uac00 \ub2e4\uc6b4\ub85c\ub4dc \ub429\ub2c8\ub2e4."

    aput-object v1, v7, v2

    const-string v1, "Downloading assisted GPS data."

    aput-object v1, v7, v0

    .line 1043
    .local v7, lge_xtra_download_start_msg:[Ljava/lang/String;
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1044
    const/16 v1, 0xa

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    aget-object v4, v7, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LgeGpsLocationProvider;->sendInjectRawCmd(IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1057
    :cond_1
    :goto_0
    return-void

    .line 1046
    :cond_2
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ntpfail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.lge.gps.GPS_XTRA_DATA_DOWNLOAD"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "xtra_download"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1052
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xtra_download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public broadcastXtraSettings()V
    .locals 4

    .prologue
    .line 1030
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "xtra_download_date"

    sget-wide v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1032
    const-string v1, "xtra_download_frequency"

    sget v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1034
    return-void
.end method

.method public checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 263
    const-string v0, "SKT_LTE"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKT_3G"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->apnName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->apnName:Ljava/lang/String;

    const-string v1, "web.sktelecom.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const-string v0, "wpde.nate.com"

    const/16 v1, 0x1c6b

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 265
    iput-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNeedSlpChange:Z

    .line 270
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    .line 271
    return-void

    .line 267
    :cond_2
    const-string v0, "KT"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 865
    const-string v4, "com.lge.extraCommand.AGPS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    const-string v4, "LgeGpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agpsTestSetting() : extras = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz p2, :cond_1

    .line 870
    const-string v4, "sulp_address"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, str_supl_address:Ljava/lang/String;
    const-string v4, "sulp_Port"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 873
    .local v1, supl_port:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    if-eqz v1, :cond_0

    .line 874
    sput-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 875
    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 877
    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 878
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set supl address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    const-string v3, "LgeGpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agpsTestSetting() : mSuplServerHost = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Host Port ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v0           #str_supl_address:Ljava/lang/String;
    .end local v1           #supl_port:I
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 367
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLocationTracking -enable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPositionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-ne p1, v3, :cond_3

    .line 370
    const-string v0, "SKT_3G"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNeedSlpChange:Z

    if-ne v0, v3, :cond_1

    .line 372
    const-string v0, "supl.google.com"

    const/16 v1, 0x1c6c

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNeedSlpChange:Z

    .line 395
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->enableLocationTracking(Z)V

    .line 396
    return-void

    .line 375
    :cond_1
    const-string v0, "KDDI_JP"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->led_on()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->sound_vib_on()V

    goto :goto_0

    .line 387
    :cond_3
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->led_off()V

    .line 390
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->sound_vib_off()V

    goto :goto_0
.end method

.method public handleAddListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 423
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    .line 424
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_change_indicator_state()V

    .line 425
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleDownloadXtraData()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 959
    const/4 v0, 0x0

    .line 961
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_0

    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    const-string v1, "start"

    invoke-virtual {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 964
    :cond_0
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()Z

    move-result v0

    .line 966
    if-ne v0, v3, :cond_1

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    .line 969
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v1, :cond_2

    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    if-ne v0, v3, :cond_3

    .line 972
    const-string v1, "end"

    invoke-virtual {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 977
    :cond_2
    :goto_0
    return v0

    .line 974
    :cond_3
    const-string v1, "fail"

    invoke-virtual {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleEnable(I)V
    .locals 5
    .parameter "provider_message_type"

    .prologue
    const/4 v4, 0x1

    .line 348
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnable(I)V

    .line 349
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "handleEnable(provider_message_type)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable :native_set_agps_server ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ),mLgeSuplServerPort ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 359
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    .line 363
    .end local v0           #LgeTlsMode:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleInjectNtpTime()Z
    .locals 3

    .prologue
    .line 987
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()Z

    move-result v0

    .line 988
    .local v0, result:Z
    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 989
    const-string v1, "ntpfail"

    invoke-virtual {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 990
    :cond_0
    return v0
.end method

.method public handleRemoveListener(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 431
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_change_indicator_state()V

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/location/LgeGpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public lgeSetSlpFromSim(II)V
    .locals 8
    .parameter "mcc_i"
    .parameter "mnc_i"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1c6b

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1567
    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplType:I

    if-ne v1, v3, :cond_0

    .line 1637
    :goto_0
    return-void

    .line 1569
    :cond_0
    if-ne p1, v3, :cond_1

    if-eq p2, v3, :cond_2

    :cond_1
    if-ne p1, v3, :cond_3

    if-ne p2, v4, :cond_3

    .line 1571
    :cond_2
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "Spirent SIM inserted, ignore Slp setting from SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1575
    :cond_3
    const-string v1, "VDF"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1576
    const/16 v1, 0x106

    if-ne p1, v1, :cond_4

    if-eq p2, v4, :cond_e

    :cond_4
    const/16 v1, 0xd6

    if-ne p1, v1, :cond_5

    if-eq p2, v3, :cond_e

    :cond_5
    const/16 v1, 0xd6

    if-ne p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p2, v1, :cond_e

    :cond_6
    const/16 v1, 0xde

    if-ne p1, v1, :cond_7

    if-eq p2, v5, :cond_e

    :cond_7
    const/16 v1, 0xcc

    if-ne p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p2, v1, :cond_e

    :cond_8
    const/16 v1, 0x10c

    if-ne p1, v1, :cond_9

    if-eq p2, v3, :cond_e

    :cond_9
    const/16 v1, 0xe2

    if-ne p1, v1, :cond_a

    if-eq p2, v3, :cond_e

    :cond_a
    const/16 v1, 0xca

    if-ne p1, v1, :cond_b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_e

    :cond_b
    const/16 v1, 0x1f9

    if-ne p1, v1, :cond_c

    const/4 v1, 0x3

    if-eq p2, v1, :cond_e

    :cond_c
    const/16 v1, 0x114

    if-ne p1, v1, :cond_d

    if-eq p2, v4, :cond_e

    :cond_d
    const/16 v1, 0xea

    if-ne p1, v1, :cond_10

    const/16 v1, 0xf

    if-ne p2, v1, :cond_10

    .line 1590
    :cond_e
    const-string v1, "supl.vodafone.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1591
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1592
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    .line 1621
    :cond_f
    :goto_1
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1632
    const-string v1, "lge.gps.extracmd.raw.tls.mode#%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, LgeTlsMode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    goto/16 :goto_0

    .line 1594
    .end local v0           #LgeTlsMode:Ljava/lang/String;
    :cond_10
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_11

    if-ne p2, v5, :cond_11

    .line 1596
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1597
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1598
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1606
    :cond_11
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1607
    const/16 v1, 0x1c6c

    iput v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1608
    iput v7, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1

    .line 1612
    :cond_12
    const-string v1, "SFR"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1613
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_f

    if-ne p2, v5, :cond_f

    .line 1615
    const-string v1, "supl.google.com"

    sput-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerHost:Ljava/lang/String;

    .line 1616
    iput v6, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeSuplServerPort:I

    .line 1617
    iput v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeTlsMode:I

    goto :goto_1
.end method

.method public lgeUpdateSimState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 1531
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1533
    .local v4, stateExtra:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1535
    .local v3, numeric:Ljava/lang/String;
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lgeUpdateSimState : state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1541
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1542
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getMccCode numeric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 1546
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1547
    .local v1, mcc_i:I
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1548
    .local v2, mnc_i:I
    const-string v5, "LgeGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- getMccCode mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeSetSlpFromSim(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    .end local v1           #mcc_i:I
    .end local v2           #mnc_i:I
    :goto_0
    return-void

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "Exception parsing mcc/mnc: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "- getMccCode numeric is null or length is less than 4\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1560
    :cond_1
    const-string v5, "LgeGpsLocationProvider"

    const-string v6, "ICC records Load is not complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected lge_broadcast_engine_state(Z)V
    .locals 4
    .parameter "wasEngineOn"

    .prologue
    .line 1890
    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mEngineOn:Z

    if-eq v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mEngineOn:Z

    if-nez v1, :cond_0

    .line 1891
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENGINE_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.location.GPS_ENGINE_STATUS"

    iget-boolean v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1893
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1894
    const-string v1, "LgeGpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportStatus, GPS_ENGINE_STATUS_CHANGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected lge_change_indicator_state()V
    .locals 3

    .prologue
    .line 1864
    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    .line 1865
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_get_indicator_state()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1871
    iget-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1873
    const-string v1, "LgeGpsLocationProvider"

    const-string v2, "indicator_state, send intent GPS_FIX_CHANGE_ACTION TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mNavigating:Z

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_force_indicator_state(Z)V

    goto :goto_0

    .line 1880
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_force_indicator_state(Z)V

    goto :goto_0
.end method

.method protected lge_check_xtra_data_validity()Z
    .locals 4

    .prologue
    .line 1905
    iget-boolean v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeIsXtraRetry:Z

    if-eqz v0, :cond_1

    .line 1906
    sget-wide v0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/location/LgeGpsLocationProvider;->mXtraDownloadFrequency:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1908
    :cond_0
    const/4 v0, 0x1

    .line 1911
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected lge_deactivate_indicator_state()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1854
    invoke-direct {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_get_indicator_state()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1855
    invoke-direct {p0, v0}, Lcom/android/server/location/LgeGpsLocationProvider;->lge_force_indicator_state(Z)V

    .line 1858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected lge_get_vendor_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1900
    sget-object v0, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    return-object v0
.end method

.method public requestSingleShotFix()Z
    .locals 3

    .prologue
    .line 399
    const-string v0, "LgeGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSingleShotFix, mPositionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "KDDI_JP"

    sget-object v1, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mPositionMode:I

    .line 405
    :cond_0
    invoke-super {p0}, Lcom/android/server/location/GpsLocationProvider;->requestSingleShotFix()Z

    move-result v0

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, result:Z
    const-string v1, "lge.gps.extracmd.fmw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lgeHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 464
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 465
    invoke-super {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 467
    .end local v0           #result:Z
    :cond_1
    return v0

    .line 444
    .restart local v0       #result:Z
    :cond_2
    const-string v1, "lge.gps.extracmd.raw"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/LgeGpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v0

    goto :goto_0

    .line 448
    :cond_3
    const-string v1, "SKT_LTE"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SKT_3G"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 449
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 451
    :cond_5
    const-string v1, "KT"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->ktHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_6
    const-string v1, "LGU"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->lguHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 457
    :cond_7
    const-string v1, "DCM"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->dcmHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 460
    :cond_8
    const-string v1, "SPR"

    sget-object v2, Lcom/android/server/location/LgeGpsLocationProvider;->mVendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->sprHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setUseLocationForServices(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 1423
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1425
    const-string v3, "disable"

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1427
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider;->mLgeContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_1
    return-void

    .line 1425
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "DeviceManager"

    const-string v3, "Problem while starting GSF location activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sprHandleExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1277
    const/4 v1, 0x1

    .line 1278
    .local v1, ret:Z
    const/4 v0, 0x0

    .line 1280
    .local v0, init:Z
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider;->native_init()Z

    move-result v0

    .line 1283
    if-nez v0, :cond_0

    .line 1284
    const-string v2, "LgeGpsLocationProvider"

    const-string v3, "native_init() return fails."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v2, 0x0

    .line 1290
    :goto_0
    return v2

    .line 1289
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LgeGpsLocationProvider;->handleFmwExtraCmd(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    move v2, v1

    .line 1290
    goto :goto_0
.end method
