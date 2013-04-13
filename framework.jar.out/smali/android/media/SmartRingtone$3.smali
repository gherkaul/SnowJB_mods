.class Landroid/media/SmartRingtone$3;
.super Ljava/lang/Object;
.source "SmartRingtone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SmartRingtone;->onNoiseEstimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SmartRingtone;


# direct methods
.method constructor <init>(Landroid/media/SmartRingtone;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 185
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 186
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    const-string v11, "arec startRecording cannot started"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 188
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v12, v12, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 190
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/16 v10, 0xf

    new-array v7, v10, [I

    .line 195
    .local v7, tempAverage:[I
    const/4 v8, 0x0

    .line 196
    .local v8, totalFrameCount:I
    const/4 v9, 0x0

    .line 202
    .local v9, validFrameCount:I
    const/4 v1, 0x0

    .line 203
    .local v1, filtInBuf:S
    const/4 v3, 0x0

    .line 205
    .local v3, filtOutBuf:S
    :goto_1
    :try_start_0
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mExitThread:Z
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$900(Landroid/media/SmartRingtone;)Z

    move-result v10

    if-nez v10, :cond_7

    const/16 v10, 0xf

    if-ge v9, v10, :cond_7

    .line 206
    const/4 v10, 0x0

    aput v10, v7, v9

    .line 207
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v11, v11, Landroid/media/SmartRingtone;->buffer:[S

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget v13, v13, Landroid/media/SmartRingtone;->buffersize:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioRecord;->read([SII)I

    .line 210
    const/4 v10, 0x1

    if-lt v8, v10, :cond_6

    .line 211
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget v10, v10, Landroid/media/SmartRingtone;->buffersize:I

    if-ge v5, v10, :cond_5

    .line 214
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->buffer:[S

    aget-short v10, v10, v5

    invoke-static {}, Landroid/media/SmartRingtone;->access$1000()[S

    move-result-object v11

    const/4 v12, 0x0

    aget-short v11, v11, v12

    mul-int/2addr v10, v11

    invoke-static {}, Landroid/media/SmartRingtone;->access$1000()[S

    move-result-object v11

    const/4 v12, 0x1

    aget-short v11, v11, v12

    mul-int/2addr v11, v1

    add-int/2addr v10, v11

    mul-int/lit16 v11, v3, -0x60e4

    sub-int v2, v10, v11

    .line 215
    .local v2, filtOut:I
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->buffer:[S

    aget-short v1, v10, v5

    .line 216
    shr-int/lit8 v10, v2, 0xf

    int-to-short v3, v10

    .line 218
    if-ltz v3, :cond_2

    .line 219
    aget v10, v7, v9

    add-int/2addr v10, v3

    aput v10, v7, v9

    .line 211
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 221
    :cond_2
    aget v10, v7, v9

    neg-int v11, v3

    add-int/2addr v10, v11

    aput v10, v7, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 247
    .end local v2           #filtOut:I
    .end local v5           #j:I
    :catch_0
    move-exception v0

    .line 248
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "smart ringtone caught "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 251
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v12, v12, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 253
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v12, v12, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    .end local v0           #ex:Ljava/lang/Exception;
    :goto_4
    const/4 v11, 0x0

    iput-object v11, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    .line 257
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mStreamType:I
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$300(Landroid/media/SmartRingtone;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$400(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$400(Landroid/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v10

    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mStreamType:I
    invoke-static {v11}, Landroid/media/SmartRingtone;->access$300(Landroid/media/SmartRingtone;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 260
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    invoke-static {}, Landroid/media/SmartRingtone;->access$1100()I

    move-result v11

    #calls: Landroid/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V
    invoke-static {v10, v11}, Landroid/media/SmartRingtone;->access$1200(Landroid/media/SmartRingtone;I)V

    .line 261
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateSmartRingtoneLevel: mSmartRingtoneLevel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v12}, Landroid/media/SmartRingtone;->access$100(Landroid/media/SmartRingtone;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$1300(Landroid/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 264
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mDelayedVolumeUpHandler.sendEmptyMessageDelayed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    #getter for: Landroid/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v10}, Landroid/media/SmartRingtone;->access$1300(Landroid/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    const-wide/16 v12, 0xdac

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 224
    .restart local v5       #j:I
    :cond_5
    :try_start_2
    aget v10, v7, v9

    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget v11, v11, Landroid/media/SmartRingtone;->buffersize:I

    div-int/2addr v10, v11

    aput v10, v7, v9

    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 229
    .end local v5           #j:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 232
    :cond_7
    if-eqz v9, :cond_9

    .line 233
    invoke-static {}, Landroid/media/SmartRingtone;->access$1100()I

    move-result v6

    .line 235
    .local v6, prevNoiseAverage:I
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/media/SmartRingtone;->access$1102(I)I

    .line 236
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, v9, :cond_8

    .line 237
    aget v10, v7, v4

    invoke-static {v10}, Landroid/media/SmartRingtone;->access$1112(I)I

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 239
    :cond_8
    invoke-static {v9}, Landroid/media/SmartRingtone;->access$1136(I)I

    .line 241
    invoke-static {}, Landroid/media/SmartRingtone;->access$1100()I

    move-result v10

    if-nez v10, :cond_9

    .line 242
    invoke-static {v6}, Landroid/media/SmartRingtone;->access$1102(I)I

    .line 245
    .end local v4           #i:I
    .end local v6           #prevNoiseAverage:I
    :cond_9
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mNoiseAverage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/media/SmartRingtone;->access$1100()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " frameCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    :cond_a
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 251
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v12, v12, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_b
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v10, v10, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 253
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v12, v12, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_c
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    goto/16 :goto_4

    .line 250
    :catchall_0
    move-exception v10

    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v11, v11, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->stop()V

    .line 251
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.stop() getRecordingState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v13, v13, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_d
    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v11, v11, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->release()V

    .line 253
    invoke-static {}, Landroid/media/SmartRingtone;->access$700()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.release() getState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    iget-object v13, v13, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_e
    iget-object v11, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    const/4 v12, 0x0

    iput-object v12, v11, Landroid/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    .line 250
    throw v10

    .line 268
    :cond_f
    iget-object v10, p0, Landroid/media/SmartRingtone$3;->this$0:Landroid/media/SmartRingtone;

    const/4 v11, 0x0

    #setter for: Landroid/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v10, v11}, Landroid/media/SmartRingtone;->access$102(Landroid/media/SmartRingtone;I)I

    goto/16 :goto_0
.end method
