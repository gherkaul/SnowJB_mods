.class Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;
.super Ljava/lang/Object;
.source "CameraSoundScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/CameraSoundScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSoundPlayer"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mSoundId:I

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mAudioStreamType:I

    .line 109
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->release()V

    .line 143
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayCount:I

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 124
    monitor-enter p0

    .line 125
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mExit:Z

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_0
    iput-object v1, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 136
    iput-object v1, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 138
    :cond_1
    return-void

    .line 127
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 73
    const-string v1, "/system/media/audio/ui/camera_click.ogg"

    .line 74
    .local v1, soundFilePath:Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mAudioStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 77
    iget-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 79
    iget-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mExit:Z

    if-eqz v2, :cond_0

    .line 90
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    const-string v2, "CameraSoundScreenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting up sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayCount:I

    if-gtz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraSoundScreenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error playing sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_5
    iget v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayCount:I

    .line 98
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :try_start_6
    iget-object v2, p0, Lcom/lge/systemui/CameraSoundScreenshot$CameraSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0
.end method
