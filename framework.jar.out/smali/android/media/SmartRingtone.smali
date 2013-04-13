.class Landroid/media/SmartRingtone;
.super Ljava/lang/Object;
.source "SmartRingtone.java"


# static fields
.field private static LGE_DEBUG:Z = false

.field private static final NUM_MAX_FRAMES:I = 0xf

.field private static final SAMPLE_RATE:I = 0xac44

.field private static TAG:Ljava/lang/String; = null

.field private static final filtDen:S = -0x60e4s

.field private static final filtNum:[S

.field private static mNoiseAverage:I

.field private static smart_ringtone_level_1:I

.field private static smart_ringtone_level_2:I

.field private static smart_ringtone_level_3:I

.field private static smart_ringtone_level_4:I

.field private static smart_ringtone_level_vib_1:I

.field private static smart_ringtone_level_vib_2:I

.field private static smart_ringtone_level_vib_3:I

.field private static smart_ringtone_level_vib_4:I


# instance fields
.field arec:Landroid/media/AudioRecord;

.field buffer:[S

.field buffersize:I

.field private mAdjustVolume:I

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedVolumeUpHandler:Landroid/os/Handler;

.field private mExitThread:Z

.field private mIsFromPhoneApp:Z

.field private mMicTestDone:Z

.field private mPrevVolume:I

.field private mSmartRingtoneLevel:I

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v2, "SmartRingtone"

    sput-object v2, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    .line 42
    sput v1, Landroid/media/SmartRingtone;->mNoiseAverage:I

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/SmartRingtone;->filtNum:[S

    return-void

    :cond_0
    move v0, v1

    .line 23
    goto :goto_0

    .line 47
    :array_0
    .array-data 0x2
        0x71t 0x70t
        0x8ft 0x8ft
    .end array-data
.end method

.method public constructor <init>(Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 3
    .parameter "manager"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 30
    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 31
    iput v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    .line 59
    new-instance v0, Landroid/media/SmartRingtone$1;

    invoke-direct {v0, p0}, Landroid/media/SmartRingtone$1;-><init>(Landroid/media/SmartRingtone;)V

    iput-object v0, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    iput-object p2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    .line 85
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTECallApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTelephony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 94
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    .line 96
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    .line 97
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    .line 98
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    .line 99
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    .line 100
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    .line 101
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    .line 102
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    .line 103
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    .line 105
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_3

    .line 106
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vib_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_3
    return-void
.end method

.method static synthetic access$000(Landroid/media/SmartRingtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    return v0
.end method

.method static synthetic access$1000()[S
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/media/SmartRingtone;->filtNum:[S

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/SmartRingtone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 21
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput p0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return p0
.end method

.method static synthetic access$1112(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    add-int/2addr v0, p0

    sput v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1136(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    sget v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    div-int/2addr v0, p0

    sput v0, Landroid/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$1200(Landroid/media/SmartRingtone;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/SmartRingtone;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/SmartRingtone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    return v0
.end method

.method static synthetic access$400(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/SmartRingtone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/media/SmartRingtone;->setSmartRingtoneLevel()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/SmartRingtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/SmartRingtone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    return v0
.end method

.method private calculateSmartRingtoneLevel(I)V
    .locals 9
    .parameter "noise"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 276
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIBRATE_WHEN_RINGING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    if-lt p1, v0, :cond_1

    .line 279
    iput v8, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    if-lt p1, v0, :cond_2

    .line 281
    iput v7, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 282
    :cond_2
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    if-lt p1, v0, :cond_3

    .line 283
    iput v6, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 284
    :cond_3
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    if-lt p1, v0, :cond_0

    .line 285
    iput v5, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 288
    :cond_4
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_4:I

    if-lt p1, v0, :cond_5

    .line 289
    iput v8, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 290
    :cond_5
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_3:I

    if-lt p1, v0, :cond_6

    .line 291
    iput v7, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 292
    :cond_6
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_2:I

    if-lt p1, v0, :cond_7

    .line 293
    iput v6, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 294
    :cond_7
    sget v0, Landroid/media/SmartRingtone;->smart_ringtone_level_1:I

    if-lt p1, v0, :cond_0

    .line 295
    iput v5, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0
.end method

.method private setSmartRingtoneLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x2

    .line 302
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    .line 308
    iget v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    iput v3, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0

    .line 313
    :cond_1
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    iput v0, p0, Landroid/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0
.end method


# virtual methods
.method public onExitRecordingLoop()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    .line 320
    return-void
.end method

.method public onNoiseEstimation()V
    .locals 8

    .prologue
    const v3, 0xac44

    const/16 v7, 0x140

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 137
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    if-eq v0, v2, :cond_0

    .line 141
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getSmartRingtoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v2, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mExitThread:Z

    .line 147
    invoke-static {v3, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    .line 151
    iget-object v0, p0, Landroid/media/SmartRingtone;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 152
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "Process doesn\'t have RECORD_AUDIO permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Landroid/media/SmartRingtone;->buffersize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 169
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "arec AudioRecord.STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    goto :goto_0

    .line 162
    :catch_0
    move-exception v6

    .line 163
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "smart ringtone caught "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 175
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :cond_3
    iget v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/media/SmartRingtone;->buffer:[S

    .line 176
    iget-object v0, p0, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 178
    iget v0, p0, Landroid/media/SmartRingtone;->buffersize:I

    if-le v0, v7, :cond_4

    .line 179
    iput v7, p0, Landroid/media/SmartRingtone;->buffersize:I

    .line 182
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/SmartRingtone$3;

    invoke-direct {v1, p0}, Landroid/media/SmartRingtone$3;-><init>(Landroid/media/SmartRingtone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized restoreVolumeAfterStop()V
    .locals 4

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mIsFromPhoneApp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    iget v0, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 330
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    iget v2, p0, Landroid/media/SmartRingtone;->mPrevVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 333
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SmartRingtone;->mMicTestDone:Z

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    .line 124
    iput-object p1, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    .line 125
    iget v0, p0, Landroid/media/SmartRingtone;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Landroid/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/SmartRingtone$2;

    invoke-direct {v1, p0}, Landroid/media/SmartRingtone$2;-><init>(Landroid/media/SmartRingtone;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 118
    iput p1, p0, Landroid/media/SmartRingtone;->mStreamType:I

    .line 119
    return-void
.end method
