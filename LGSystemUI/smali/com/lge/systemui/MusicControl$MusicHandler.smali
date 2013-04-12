.class Lcom/lge/systemui/MusicControl$MusicHandler;
.super Landroid/os/Handler;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicHandler"
.end annotation


# instance fields
.field private final MARQUEE_DELAY:I

.field private final MESSAGE_TICK:I

.field private isPlay:Z

.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 1
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 525
    const/16 v0, 0xfa

    iput v0, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->MARQUEE_DELAY:I

    .line 526
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->MESSAGE_TICK:I

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->isPlay:Z

    return-void
.end method


# virtual methods
.method public getIsPlay()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->isPlay:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 534
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget-boolean v0, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->isPlay:Z

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/systemui/MusicControl$MusicHandler;->tick(Z)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method tick(Z)V
    .locals 6
    .parameter "play"

    .prologue
    const/4 v1, 0x1

    .line 543
    invoke-virtual {p0, v1}, Lcom/lge/systemui/MusicControl$MusicHandler;->removeMessages(I)V

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->isPlay:Z

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$500(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mScreenStatus:Z
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$600(Lcom/lge/systemui/MusicControl;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :try_start_1
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$500(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    iget v2, v2, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/music/IMediaPlaybackService;->duration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 553
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$500(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    iget v2, v2, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/music/IMediaPlaybackService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 554
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$500(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->this$0:Lcom/lge/systemui/MusicControl;

    iget v2, v2, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    :goto_1
    const/4 v1, 0x1

    const-wide/16 v2, 0xfa

    :try_start_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/systemui/MusicControl$MusicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    :cond_0
    :goto_2
    return-void

    .line 548
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/systemui/MusicControl$MusicHandler;->isPlay:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicControl"

    const-string v2, "=====  MusicHandler Exception  ====="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 555
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 556
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "MusicControl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
