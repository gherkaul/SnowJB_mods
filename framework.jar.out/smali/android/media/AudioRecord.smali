.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecord-Java"


# instance fields
.field private mAudioFormat:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:I

.field private mNativeRecorderInJavaObj:I

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 12
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/16 v1, 0x5622

    iput v1, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 149
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 153
    const/16 v1, 0x10

    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 157
    const/16 v1, 0x10

    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 163
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 175
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 179
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 206
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 239
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 240
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 243
    const-string/jumbo v1, "persist.sys.voice_state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recording"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getServiceEx()Landroid/media/IAudioService;

    move-result-object v9

    .line 246
    .local v9, am:Landroid/media/IAudioService;
    if-eqz v9, :cond_2

    .line 247
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord()........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/media/IAudioService;->sendBroadcastIntent(I)V

    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v9           #am:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_1

    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 264
    :cond_1
    invoke-direct/range {p0 .. p4}, Landroid/media/AudioRecord;->audioParamCheck(IIII)V

    .line 266
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 269
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 270
    .local v8, session:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 273
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iget v4, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioRecord;->mChannels:I

    iget v6, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;IIIII[I)I

    move-result v11

    .line 276
    .local v11, initResult:I
    if-eqz v11, :cond_3

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioRecord object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 284
    :goto_1
    return-void

    .line 251
    .end local v8           #session:[I
    .end local v11           #initResult:I
    .restart local v9       #am:Landroid/media/IAudioService;
    :cond_2
    :try_start_1
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord().. AM is null !!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 253
    .end local v9           #am:Landroid/media/IAudioService;
    :catch_0
    move-exception v10

    .line 254
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "AudioRecord-Java"

    const-string v2, "AudioRecord()..Exception!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v8       #session:[I
    .restart local v11       #initResult:I
    :cond_3
    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 283
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 4
    .parameter "audioBufferSize"

    .prologue
    .line 376
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 377
    const/4 v0, 0x1

    .line 383
    .local v0, bytesPerSample:I
    :goto_0
    iget v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int v1, v2, v0

    .line 384
    .local v1, frameSizeInBytes:I
    rem-int v2, p1, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_3

    .line 385
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid audio buffer size."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    .end local v0           #bytesPerSample:I
    .end local v1           #frameSizeInBytes:I
    :cond_1
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 380
    const/16 v0, 0x3d

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 382
    .end local v0           #bytesPerSample:I
    :cond_2
    const/4 v0, 0x2

    .restart local v0       #bytesPerSample:I
    goto :goto_0

    .line 388
    .restart local v1       #frameSizeInBytes:I
    :cond_3
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 389
    return-void
.end method

.method private audioParamCheck(IIII)V
    .locals 3
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 300
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 309
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 318
    iput p3, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 320
    sparse-switch p3, :sswitch_data_0

    .line 337
    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 338
    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 339
    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 325
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 345
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 359
    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :sswitch_1
    iput v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 330
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    .line 333
    :sswitch_2
    const/4 v0, 0x6

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 334
    const/high16 v0, 0x3f

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    .line 347
    :sswitch_3
    iput v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 363
    :goto_1
    return-void

    .line 356
    :sswitch_4
    iput p4, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_1

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x3f0000 -> :sswitch_2
    .end sparse-switch

    .line 345
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 529
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 518
    :sswitch_0
    const/4 v0, 0x1

    .line 534
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/16 v4, 0x64

    if-eq p2, v4, :cond_1

    const/16 v4, 0x65

    if-eq p2, v4, :cond_1

    const/16 v4, 0x66

    if-eq p2, v4, :cond_1

    const/16 v4, 0x67

    if-eq p2, v4, :cond_1

    const/16 v4, 0x68

    if-eq p2, v4, :cond_1

    .line 540
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 541
    goto :goto_0

    .line 522
    :sswitch_1
    const/4 v0, 0x2

    .line 523
    goto :goto_1

    .line 525
    :sswitch_2
    const/4 v0, 0x6

    .line 526
    goto :goto_1

    .line 544
    :cond_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 545
    .local v1, size:I
    if-nez v1, :cond_2

    move v1, v2

    .line 546
    goto :goto_0

    .line 548
    :cond_2
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 549
    goto :goto_0

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x3f0000 -> :sswitch_2
    .end sparse-switch
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 568
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 570
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 571
    const-string v1, "AudioRecord-Java"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 979
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 983
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiorecord_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 926
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 927
    .local v1, recorder:Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 932
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 934
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_finalize()V

    .line 412
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "audioBuffer"
    .parameter "sizeInBytes"

    .prologue
    .line 772
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 773
    const/4 v0, -0x3

    .line 780
    :goto_0
    return v0

    .line 776
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    .line 777
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 780
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    .line 724
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 725
    const/4 v0, -0x3

    .line 733
    :goto_0
    return v0

    .line 728
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 730
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    .line 748
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 749
    const/4 v0, -0x3

    .line 757
    :goto_0
    return v0

    .line 752
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 754
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 757
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 400
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 406
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    .line 846
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 794
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 806
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 808
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 810
    if-eqz p1, :cond_1

    .line 811
    if-eqz p2, :cond_0

    .line 812
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 820
    :goto_0
    monitor-exit v1

    .line 822
    return-void

    .line 815
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 818
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 587
    const-string v3, "AudioRecord-Java"

    const-string/jumbo v4, "~1 startRecording()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v3, v7, :cond_0

    .line 589
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    :cond_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 595
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v3, v5}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v3

    if-nez v3, :cond_2

    .line 598
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 599
    .local v0, am:Landroid/app/IActivityManager;
    invoke-static {}, Landroid/media/AudioRecord;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 601
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    :try_start_1
    invoke-interface {v0}, Landroid/app/IActivityManager;->isThereTopOverlay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-interface {v0}, Landroid/app/IActivityManager;->isMediaOverlayActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 604
    const-string v3, "AudioRecord-Java"

    const-string v5, "[AudioRecord] am.disableOverlayForMediaPlayer"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->disableOverlayForMediaPlayer(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    :cond_1
    :goto_0
    const/4 v3, 0x3

    :try_start_2
    iput v3, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 616
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cappuccino/IMdm;->checkAllowMicrophone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 621
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 622
    iput v7, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 625
    :cond_3
    return-void

    .line 609
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "AudioRecord-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===================================>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 8
    .parameter "syncEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 636
    const-string v3, "AudioRecord-Java"

    const-string/jumbo v4, "~1 startRecording(syncEvent)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v3, v7, :cond_0

    .line 638
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 644
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v5

    invoke-direct {p0, v3, v5}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v3

    if-nez v3, :cond_2

    .line 647
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 648
    .local v0, am:Landroid/app/IActivityManager;
    invoke-static {}, Landroid/media/AudioRecord;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 650
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    :try_start_1
    invoke-interface {v0}, Landroid/app/IActivityManager;->isThereTopOverlay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    invoke-interface {v0}, Landroid/app/IActivityManager;->isMediaOverlayActivity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    const-string v3, "AudioRecord-Java"

    const-string v5, "[AudioRecord] am.disableOverlayForMediaPlayer"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->disableOverlayForMediaPlayer(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 663
    :cond_1
    :goto_0
    const/4 v3, 0x3

    :try_start_2
    iput v3, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 665
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 668
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/cappuccino/IMdm;->checkAllowMicrophone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 670
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 671
    iput v7, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 674
    :cond_3
    return-void

    .line 658
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 659
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "AudioRecord-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===================================>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 682
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v3, :cond_0

    .line 683
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_0
    const-string/jumbo v2, "persist.sys.voice_state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recording"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getServiceEx()Landroid/media/IAudioService;

    move-result-object v0

    .line 690
    .local v0, am:Landroid/media/IAudioService;
    if-eqz v0, :cond_2

    .line 691
    const-string v2, "AudioRecord-Java"

    const-string v3, "AudioRecord::stop()........."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/media/IAudioService;->sendBroadcastIntent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v0           #am:Landroid/media/IAudioService;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 704
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 705
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 706
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    return-void

    .line 694
    .restart local v0       #am:Landroid/media/IAudioService;
    :cond_2
    :try_start_2
    const-string v2, "AudioRecord-Java"

    const-string v3, "AudioRecord::stop().. AM is null !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 696
    .end local v0           #am:Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 697
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AudioRecord-Java"

    const-string v3, "AudioRecord::stop()..Exception!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
