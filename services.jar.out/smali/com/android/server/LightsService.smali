.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$FlashingTask;,
        Lcom/android/server/LightsService$FlashEventReceiver;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field static final FLASH_1_ONTIME:I = 0x1f4

.field static final FLASH_2_OFFTIME:I = 0x1f4

.field static final FLASH_3_ONTIME:I = 0x1f4

.field static FLASH_4_OFFTIME:I = 0x0

.field static FLASH_CHARGING_PERIOD:I = 0x0

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_STATE:I = 0x2

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_OFF_STATE:I = 0x0

.field static final LIGHT_ON_STATE:I = 0x1

.field static final MIN_OFF_MS:I = 0x64

.field static final MIN_ON_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field static final flashEvent:Ljava/lang/String; = "com.lge.intent.action.LIGHTS_FLASH"


# instance fields
.field intent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPattern:I

.field public mFlashingDefendOnLCD:Z

.field private mFlashingInitTime:J

.field public mFlashingNoTimeoutOnCharging:Z

.field private mFlashingTask:Lcom/android/server/LightsService$FlashingTask;

.field private mFlashingUseHWContol:Z

.field private mFlashingUseHWContol_2:Z

.field private mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreFlashingDefendOnLCD:Z

.field public mIsCharging:Z

.field private mIsFlashingOn:Z

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field public mOldIsCharging:Z

.field private mOperator:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z

.field public mUseLEDForG:Z

.field mWakelock:Landroid/os/PowerManager$WakeLock;

.field sender:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x927c0

    sput v0, Lcom/android/server/LightsService;->FLASH_CHARGING_PERIOD:I

    .line 99
    const v0, 0xe09c

    sput v0, Lcom/android/server/LightsService;->FLASH_4_OFFTIME:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 373
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v3, v7, [Lcom/android/server/LightsService$Light;

    iput-object v3, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 71
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mIsCharging:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mOldIsCharging:Z

    .line 74
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mIsFlashingOn:Z

    .line 75
    const-string v3, "NULL"

    iput-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    .line 76
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mFlashingNoTimeoutOnCharging:Z

    .line 81
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mScreenOn:Z

    .line 82
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mFlashingDefendOnLCD:Z

    .line 83
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z

    .line 91
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol:Z

    .line 92
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol_2:Z

    .line 100
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/LightsService;->mCurrentPattern:I

    .line 338
    new-instance v3, Lcom/android/server/LightsService$1;

    invoke-direct {v3, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 434
    new-instance v3, Lcom/android/server/LightsService$2;

    invoke-direct {v3, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v3, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 375
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v3

    iput v3, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 376
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 378
    const-string v3, "hardware"

    iget-object v4, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v4, Lcom/android/server/LightsService$Light;

    invoke-direct {v4, p0, v1, v8}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v4, v3, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 387
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x2060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    .line 389
    iget-boolean v3, p0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    if-eqz v3, :cond_5

    .line 391
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    .line 392
    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mFlashingNoTimeoutOnCharging:Z

    .line 395
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mFlashingDefendOnLCD:Z

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "KDDI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 400
    :cond_3
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol:Z

    .line 410
    :cond_4
    :goto_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/LightsService;->mPowerManager:Landroid/os/PowerManager;

    .line 411
    iget-object v3, p0, Lcom/android/server/LightsService;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "LightsService"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 412
    iget-object v3, p0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 413
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;

    .line 414
    new-instance v3, Lcom/android/server/LightsService$FlashingTask;

    invoke-direct {v3, p0}, Lcom/android/server/LightsService$FlashingTask;-><init>(Lcom/android/server/LightsService;)V

    iput-object v3, p0, Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.lge.intent.action.LIGHTS_FLASH"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/LightsService$FlashEventReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/LightsService$FlashEventReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_5
    return-void

    .line 403
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol:Z

    .line 404
    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "SPR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    const-string v4, "ATT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    :cond_7
    iput-boolean v6, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol_2:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIsFlashingOn:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIsFlashingOn:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/LightsService;->mCurrentPattern:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/LightsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/server/LightsService;->mCurrentPattern:I

    return p1
.end method

.method static synthetic access$1508(Lcom/android/server/LightsService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/LightsService;->mCurrentPattern:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LightsService;->mCurrentPattern:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mFlashingUseHWContol_2:Z

    return v0
.end method

.method static synthetic access$200(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 41
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/server/LightsService;->mFlashingInitTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/LightsService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/server/LightsService;->mFlashingInitTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mScreenOn:Z

    return p1
.end method

.method private static native finalize_native(I)V
.end method

.method static getAlarmService()Landroid/app/IAlarmManager;
    .locals 3

    .prologue
    .line 444
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    .line 446
    .local v0, alarmService:Landroid/app/IAlarmManager;
    if-nez v0, :cond_0

    .line 447
    const-string v1, "LightsService"

    const-string v2, "Unable to find IAlarmManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    return-object v0
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 426
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 427
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method
