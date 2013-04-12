.class Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;
.super Ljava/lang/Object;
.source "LgeGpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GPSSoundPlayer"
.end annotation


# static fields
.field private static final mGPSSound:Ljava/lang/String; = "/system/media/audio/ui/GPS_Alert.ogg"


# instance fields
.field private mAudioStreamType:I

.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1778
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1779
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mAudioStreamType:I

    .line 1780
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->release()V

    .line 1824
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 1785
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1787
    :cond_0
    monitor-enter p0

    .line 1789
    :try_start_0
    monitor-exit p0

    .line 1790
    return-void

    .line 1789
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

    .line 1803
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1804
    monitor-enter p0

    .line 1806
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1812
    :goto_0
    iput-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1815
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1816
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1817
    iput-object v1, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 1819
    :cond_1
    return-void

    .line 1806
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1809
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1760
    const-string v1, "/system/media/audio/ui/GPS_Alert.ogg"

    .line 1761
    .local v1, soundFilePath:Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 1763
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mAudioStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1764
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1765
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1766
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 1774
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    :goto_0
    return-void

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, e:Ljava/io/IOException;
    const-string v2, "LgeGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting up sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1774
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1795
    :cond_0
    monitor-enter p0

    .line 1796
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/android/server/location/LgeGpsLocationProvider$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1799
    :cond_1
    monitor-exit p0

    .line 1800
    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
