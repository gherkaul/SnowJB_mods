.class Lcom/lge/systemui/MusicControl$audioInfoRunnable;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "audioInfoRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 569
    const-string v3, "MusicControl"

    const-string v4, "audioInfoRunnable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_0
    const-string v0, ""

    .line 572
    .local v0, albumName:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 574
    :cond_1
    const-string v0, ""

    .line 577
    :goto_0
    const-string v2, ""

    .line 578
    .local v2, trackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 579
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 580
    :cond_3
    const-string v2, ""

    .line 582
    :cond_4
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 584
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$900(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mPauseDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/lge/systemui/MusicControl;->access$800(Lcom/lge/systemui/MusicControl;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 590
    :goto_1
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v4, v4, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    #calls: Lcom/lge/systemui/MusicControl;->isNoFiles(Landroid/content/Context;)Z
    invoke-static {v3, v4}, Lcom/lge/systemui/MusicControl;->access$1100(Lcom/lge/systemui/MusicControl;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const v4, 0x7f090093

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 592
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 594
    :cond_5
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v4, v4, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    #calls: Lcom/lge/systemui/MusicControl;->isNoFiles(Landroid/content/Context;)Z
    invoke-static {v3, v4}, Lcom/lge/systemui/MusicControl;->access$1100(Lcom/lge/systemui/MusicControl;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #calls: Lcom/lge/systemui/MusicControl;->isMediaMounted()Z
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$1200(Lcom/lge/systemui/MusicControl;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 595
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const v4, 0x7f090094

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 596
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 598
    :cond_6
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #calls: Lcom/lge/systemui/MusicControl;->isMediaMounted()Z
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$1200(Lcom/lge/systemui/MusicControl;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 599
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const v4, 0x7f090095

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 600
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 605
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #trackName:Ljava/lang/String;
    :cond_7
    :goto_2
    return-void

    .line 575
    .restart local v0       #albumName:Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 587
    .restart local v2       #trackName:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$900(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mPlayDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/lge/systemui/MusicControl;->access$1000(Lcom/lge/systemui/MusicControl;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/MusicControl$audioInfoRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v4, v4, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 602
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #trackName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 603
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MusicControl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
