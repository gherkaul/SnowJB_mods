.class public Lcom/lge/systemui/power/LGPowerUI;
.super Ljava/lang/Object;
.source "LGPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;
    }
.end annotation


# instance fields
.field private mBatteryIdDialog:Landroid/app/AlertDialog;

.field private mCPUThermDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mDelayMillis:J

.field private mFlagAction:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPowerDown:Z

.field private mMessageID:I

.field private mOldMessageID:I

.field private mPowerDownDialog:Landroid/app/AlertDialog;

.field private mSlowChargingCheckBox:Landroid/widget/CheckBox;

.field private mSlowChargingDialog:Landroid/app/AlertDialog;

.field private mThermDialog:Landroid/app/AlertDialog;

.field private mTitleID:I

.field private mWirelessChargingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;

    invoke-direct {v1, p0, v3}, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;-><init>(Lcom/lge/systemui/power/LGPowerUI;Lcom/lge/systemui/power/LGPowerUI$1;)V

    iput-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    .line 43
    iput-boolean v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    .line 73
    iput v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 74
    iput v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 75
    iput v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    .line 83
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    .line 84
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    .line 86
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    .line 88
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingCheckBox:Landroid/widget/CheckBox;

    .line 107
    new-instance v1, Lcom/lge/systemui/power/LGPowerUI$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/power/LGPowerUI$1;-><init>(Lcom/lge/systemui/power/LGPowerUI;)V

    iput-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.ACTION_THERMALDAEMON_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/lge/systemui/power/LGPowerUI;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/systemui/power/LGPowerUI;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/systemui/power/LGPowerUI;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/systemui/power/LGPowerUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/systemui/power/LGPowerUI;->wakeLockShutdown()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private wakeLockShutdown()V
    .locals 5

    .prologue
    .line 129
    iget-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 131
    .local v1, pm:Landroid/os/PowerManager;
    const v3, 0x3000001a

    const-string v4, "PowerUI"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 135
    .local v2, wakeLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_CONFIRM"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method


# virtual methods
.method public DCM_batteryThermNotification(IIIZ)V
    .locals 10
    .parameter "temperature"
    .parameter "batteryStatus"
    .parameter "batteryLevel"
    .parameter "isPlugged"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x2

    const-wide/16 v7, 0x0

    const v5, 0x7f0900f3

    .line 412
    if-ne p2, v9, :cond_0

    move v6, v0

    .line 413
    .local v6, isCharging:Z
    :goto_0
    const-string v2, "LGPowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCM_batteryThermNotification temperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPlugged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCharging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-boolean v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    if-ne v2, v0, :cond_1

    .line 417
    const-string v0, "LGPowerUI"

    const-string v1, "Power down is in progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_1
    return-void

    .end local v6           #isCharging:Z
    :cond_0
    move v6, v1

    .line 412
    goto :goto_0

    .line 420
    .restart local v6       #isCharging:Z
    :cond_1
    if-ne p4, v0, :cond_7

    .line 423
    if-nez v6, :cond_2

    const/16 v2, -0x64

    if-ge p1, v2, :cond_2

    const/16 v2, 0x64

    if-ge p3, v2, :cond_2

    .line 424
    const v1, 0x7f0900fa

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 425
    const v1, 0x7f0900ff

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 426
    iput v9, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 427
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    .line 494
    :goto_2
    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    if-nez v1, :cond_b

    .line 495
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 429
    :cond_2
    const/16 v2, 0x1fe

    if-le p1, v2, :cond_3

    .line 430
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 431
    const v1, 0x7f0900fd

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 432
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 433
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    .line 434
    const-string v1, "LGPowerUI"

    const-string v2, "[DCM/charing] 51 High temperature detected. Powering down."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 438
    :cond_3
    const/16 v2, 0x1ea

    if-le p1, v2, :cond_4

    .line 439
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 440
    const v1, 0x7f090100

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 441
    iput v9, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 442
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 445
    :cond_4
    if-nez v6, :cond_5

    const/16 v2, 0x1c2

    if-le p1, v2, :cond_5

    const/16 v2, 0x64

    if-ge p3, v2, :cond_5

    .line 446
    const v1, 0x7f0900fa

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 447
    const v1, 0x7f0900fe

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 448
    iput v9, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 449
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 452
    :cond_5
    const/16 v2, 0x1e0

    if-le p1, v2, :cond_6

    .line 453
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 454
    const v1, 0x7f0900fb

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 455
    const/4 v1, 0x4

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 456
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 460
    :cond_6
    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 461
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto :goto_2

    .line 465
    :cond_7
    const/16 v2, 0x1fe

    if-le p1, v2, :cond_8

    .line 466
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 467
    const v1, 0x7f0900fd

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 468
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 469
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    .line 470
    const-string v1, "LGPowerUI"

    const-string v2, "[DCM/general] 51 High temperature detected. Powering down."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 474
    :cond_8
    const/16 v2, 0x1ea

    if-le p1, v2, :cond_9

    .line 475
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 476
    const v1, 0x7f090100

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 477
    iput v9, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 478
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto/16 :goto_2

    .line 481
    :cond_9
    const/16 v2, 0x1e0

    if-le p1, v2, :cond_a

    .line 482
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 483
    const v1, 0x7f0900fb

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 484
    const/4 v1, 0x4

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 485
    iput-wide v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto/16 :goto_2

    .line 489
    :cond_a
    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 490
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto/16 :goto_2

    .line 500
    :cond_b
    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    iget v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    iget v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    iget-wide v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/systemui/power/LGPowerUI;->showBatteryDialog(IIIJ)V

    goto/16 :goto_1
.end method

.method public batteryIDCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 646
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 653
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v2, 0x20a01cb

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    .line 658
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 660
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 664
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 666
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 669
    :cond_1
    return-void
.end method

.method public batteryThermNotification(IIIZ)V
    .locals 10
    .parameter "temperature"
    .parameter "batteryStatus"
    .parameter "batteryLevel"
    .parameter "isPlugged"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const v5, 0x7f0900f3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 336
    if-ne p2, v4, :cond_0

    move v7, v0

    .line 342
    .local v7, isCharging:Z
    :goto_0
    iget-boolean v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    if-ne v2, v0, :cond_1

    .line 343
    const-string v0, "LGPowerUI"

    const-string v1, "Power down is in progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_1
    return-void

    .end local v7           #isCharging:Z
    :cond_0
    move v7, v1

    .line 336
    goto :goto_0

    .line 347
    .restart local v7       #isCharging:Z
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 352
    .local v6, degreeStopChargingHighTemperature:I
    if-ne p4, v0, :cond_5

    .line 354
    const/16 v2, 0x258

    if-le p1, v2, :cond_2

    .line 355
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 356
    const v1, 0x7f0900fd

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 357
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 358
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    .line 401
    :goto_2
    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    if-nez v1, :cond_8

    .line 402
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 361
    :cond_2
    const/16 v2, 0x23a

    if-le p1, v2, :cond_3

    .line 362
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 363
    const v1, 0x7f090100

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 364
    iput v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 365
    iput-wide v8, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 368
    :cond_3
    if-nez v7, :cond_4

    if-le p1, v6, :cond_4

    const/16 v2, 0x64

    if-ge p3, v2, :cond_4

    .line 369
    const v1, 0x7f0900fa

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 370
    const v1, 0x7f0900fe

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 371
    iput v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 372
    iput-wide v8, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 376
    :cond_4
    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 377
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto :goto_2

    .line 381
    :cond_5
    const/16 v2, 0x258

    if-le p1, v2, :cond_6

    .line 382
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 383
    const v1, 0x7f0900fd

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 384
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 385
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 388
    :cond_6
    const/16 v2, 0x23a

    if-le p1, v2, :cond_7

    .line 389
    iput v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 390
    const v1, 0x7f090100

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 391
    iput v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    .line 392
    iput-wide v8, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    goto :goto_2

    .line 396
    :cond_7
    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto :goto_2

    .line 407
    :cond_8
    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    iget v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    iget v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mFlagAction:I

    iget-wide v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mDelayMillis:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/systemui/power/LGPowerUI;->showBatteryDialog(IIIJ)V

    goto/16 :goto_1
.end method

.method public cancelSlowChargingNotification()V
    .locals 3

    .prologue
    .line 278
    const-string v1, "sys.factory.qem"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 282
    const-string v1, "LGPowerUI"

    const-string v2, "cancelSlowChargingNotification(): NOTIFICATION_SERVICE is not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 287
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_3

    .line 288
    const-string v1, "LGPowerUI"

    const-string v2, "cancelSlowChargingNotification(): NotificationManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    const v1, 0x7f0202b2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 293
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public cancelfullChargingNotification()V
    .locals 3

    .prologue
    .line 186
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "LGPowerUI"

    const-string v2, "cancelfullChargingNotification(): NOTIFICATION_SERVICE is not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 192
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 193
    const-string v1, "LGPowerUI"

    const-string v2, "cancelfullChargingNotification(): NotificationManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    const v1, 0x7f0202b1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public fullChargingNotification(ZI)V
    .locals 13
    .parameter "playSound"
    .parameter "plugType"

    return-void #SnowLeopardJB - disable full charging notification

    .prologue
    const v12, 0x7f090108

    const v11, 0x7f0202b1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 143
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_0

    .line 144
    const-string v7, "LGPowerUI"

    const-string v8, "fullChargingNotification(): NOTIFICATION_SERVICE is not ready!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 149
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 150
    const-string v7, "LGPowerUI"

    const-string v8, "fullChargingNotification(): NotificationManager is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 155
    .local v3, pi:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 156
    .local v0, chargingFullNotification:Landroid/app/Notification;
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v8, 0x7f090107

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, message:Ljava/lang/String;
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    .line 162
    iput v11, v0, Landroid/app/Notification;->icon:I

    .line 164
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v8, 0x7f090080

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, soundPath:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 168
    .local v5, soundUri:Landroid/net/Uri;
    if-eqz v5, :cond_2

    if-ne p1, v9, :cond_2

    .line 169
    iput-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 173
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_2
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_WIRELESS_CHARGING:Z

    if-ne v7, v9, :cond_3

    const/4 v7, 0x4

    if-ne p2, v7, :cond_3

    .line 174
    iget v7, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v0, Landroid/app/Notification;->defaults:I

    .line 175
    const/4 v7, 0x0

    iput-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 178
    :cond_3
    iput v9, v0, Landroid/app/Notification;->audioStreamType:I

    .line 179
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 180
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v6, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    invoke-virtual {v2, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 182
    invoke-virtual {p0}, Lcom/lge/systemui/power/LGPowerUI;->cancelSlowChargingNotification()V

    goto/16 :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isPowerDown()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    return v0
.end method

.method public showBatteryDialog(IIIJ)V
    .locals 8
    .parameter "titleID"
    .parameter "messageID"
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 506
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_1

    move v2, v4

    .line 507
    .local v2, isPowerDown:Z
    :goto_0
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_2

    move v3, v4

    .line 508
    .local v3, isToastPopup:Z
    :goto_1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_3

    move v1, v4

    .line 511
    .local v1, isDialogPopup:Z
    :goto_2
    iget v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    if-ne p2, v6, :cond_4

    .line 568
    :cond_0
    :goto_3
    return-void

    .end local v1           #isDialogPopup:Z
    .end local v2           #isPowerDown:Z
    .end local v3           #isToastPopup:Z
    :cond_1
    move v2, v5

    .line 506
    goto :goto_0

    .restart local v2       #isPowerDown:Z
    :cond_2
    move v3, v5

    .line 507
    goto :goto_1

    .restart local v3       #isToastPopup:Z
    :cond_3
    move v1, v5

    .line 508
    goto :goto_2

    .line 517
    .restart local v1       #isDialogPopup:Z
    :cond_4
    iget-object v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_5

    .line 518
    iget-object v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 519
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    .line 522
    :cond_5
    if-eqz v3, :cond_7

    .line 523
    iget-object v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v6, p2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 560
    :cond_6
    :goto_4
    iput p2, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    .line 562
    if-eqz v2, :cond_0

    .line 563
    iput-boolean v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    .line 564
    iget-object v4, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 524
    :cond_7
    if-eqz v1, :cond_6

    .line 525
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v7, 0x20a01cb

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 531
    .local v0, b:Landroid/app/AlertDialog$Builder;
    if-nez v2, :cond_8

    .line 532
    const v5, 0x104000a

    new-instance v6, Lcom/lge/systemui/power/LGPowerUI$3;

    invoke-direct {v6, p0}, Lcom/lge/systemui/power/LGPowerUI$3;-><init>(Lcom/lge/systemui/power/LGPowerUI;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 543
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    .line 545
    if-eqz v2, :cond_9

    .line 546
    iget-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 553
    :goto_5
    iget-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x68

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 557
    iget-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    .line 549
    :cond_9
    iget-object v5, p0, Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_5
.end method

.method public showCPUThermWarning()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v2, 0x20a01cb

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    .line 602
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 604
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 608
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 609
    const-string v0, "LGPowerUI"

    const-string v1, "ShowCPUThermWarning() : Powering down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    .line 612
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    :cond_0
    return-void
.end method

.method public showShutDownWarning()V
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v2, 0x20a01cb

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x104015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 580
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 584
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 585
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 586
    const-string v0, "LGPowerUI"

    const-string v1, "showShutDownWarning() : Powering down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mIsPowerDown:Z

    .line 589
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 592
    return-void
.end method

.method public showSlowCharginNotification()V
    .locals 13
        iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SnowJB_slow_notification_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SnowJB_slow_notification_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .prologue
    const v12, 0x7f0202b2

    const/4 v11, 0x1

    const v10, 0x7f090109

    const/4 v9, 0x0

    .line 201
    const-string v7, "sys.factory.qem"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_2

    .line 205
    const-string v7, "LGPowerUI"

    const-string v8, "showSlowCharginNotification(): NOTIFICATION_SERVICE is not ready!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 210
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_3

    .line 211
    const-string v7, "LGPowerUI"

    const-string v8, "showSlowCharginNotification(): NotificationManager is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_3
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-static {v7, v9, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 216
    .local v3, pi:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 217
    .local v4, slowChargingNotification:Landroid/app/Notification;
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, title:Ljava/lang/String;
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v7

    if-nez v7, :cond_5

    .line 221
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v8, 0x7f09010b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, message:Ljava/lang/String;
    :goto_1
    const-wide/16 v7, 0x0

    iput-wide v7, v4, Landroid/app/Notification;->when:J

    .line 226
    iput v12, v4, Landroid/app/Notification;->icon:I

    .line 229
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 231
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    invoke-virtual {v2, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 235
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const-string v8, "power_ui"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "show_slow_charge"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 237
    .local v0, hide:Z
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    .line 238
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_4

    .line 239
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 240
    .local v6, v:Landroid/view/View;
    const v7, 0x7f0c0009

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingCheckBox:Landroid/widget/CheckBox;

    .line 242
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v9, 0x20a01cb

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/lge/systemui/power/LGPowerUI$2;

    invoke-direct {v9, p0}, Lcom/lge/systemui/power/LGPowerUI$2;-><init>(Lcom/lge/systemui/power/LGPowerUI;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    .line 264
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 266
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x68

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 271
    .end local v6           #v:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 223
    .end local v0           #hide:Z
    .end local v1           #message:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v8, 0x7f09010a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public showXOThermWarning(I)V
    .locals 3
    .parameter "xoTemperature"

    .prologue
    const/4 v2, 0x0

    .line 620
    iget v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    if-ne v0, v1, :cond_0

    .line 640
    :goto_0
    return-void

    .line 628
    :cond_0
    const/16 v0, 0x1b8

    if-le p1, v0, :cond_1

    .line 629
    const v0, 0x7f09014b

    iput v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 630
    const v0, 0x7f090146

    iput v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    .line 632
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 633
    iget v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mMessageID:I

    iput v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto :goto_0

    .line 637
    :cond_1
    iput v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mTitleID:I

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/systemui/power/LGPowerUI;->mOldMessageID:I

    goto :goto_0
.end method

.method public wirelessChargingNotification(Z)V
    .locals 6
    .parameter "isCharging"

    .prologue
    const/4 v5, 0x4

    .line 301
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 304
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    .line 310
    :cond_0
    if-eqz p1, :cond_2

    .line 311
    const v1, 0x7f090121

    .line 312
    .local v1, resIdTitle:I
    const v0, 0x7f090122

    .line 318
    .local v0, resIdText:I
    :goto_0
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 319
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;

    const v4, 0x20a01cb

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    .line 325
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 326
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 329
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 330
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    :cond_1
    return-void

    .line 314
    .end local v0           #resIdText:I
    .end local v1           #resIdTitle:I
    :cond_2
    const v1, 0x7f090123

    .line 315
    .restart local v1       #resIdTitle:I
    const v0, 0x7f090124

    .restart local v0       #resIdText:I
    goto :goto_0
.end method
