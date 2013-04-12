.class Lcom/lge/systemui/MusicControl$5;
.super Landroid/os/Handler;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 912
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 914
    :pswitch_0
    const-string v3, "MusicControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->isCacheVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 916
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 918
    :cond_1
    invoke-static {}, Lcom/lge/systemui/Utils;->getLockStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 919
    const-string v3, "MusicControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MUSIC_PLAYSTATE_CHANGED: Lock screen is entered : mMiniMusicVisibility = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v5, v5, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v5}, Lcom/lge/systemui/LGPhoneStatusBar;->isMiniComponentMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v3}, Lcom/lge/systemui/LGPhoneStatusBar;->isMiniComponentMode()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 921
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v4, 0x108

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(I)V

    goto :goto_0

    .line 926
    :pswitch_1
    const-string v3, "MusicControl"

    const-string v4, "Received : MusicStatusBarControl.MUSIC_SERVICE_UNBIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->unBindService()V

    goto :goto_0

    .line 930
    :pswitch_2
    const-string v3, "MusicControl"

    const-string v4, "Received : MusicStatusBarControl.MUSIC_NO_DISPLAY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 932
    .local v1, temp:Landroid/content/Context;
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3, v1}, Lcom/lge/systemui/MusicControl;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 935
    .end local v1           #temp:Landroid/content/Context;
    :pswitch_3
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #setter for: Lcom/lge/systemui/MusicControl;->mScreenStatus:Z
    invoke-static {v3, v6}, Lcom/lge/systemui/MusicControl;->access$602(Lcom/lge/systemui/MusicControl;Z)Z

    .line 936
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    .line 938
    :try_start_0
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->addComponent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 947
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 948
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 949
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 950
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v5

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 951
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v6

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MusicControl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 956
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #setter for: Lcom/lge/systemui/MusicControl;->mScreenStatus:Z
    invoke-static {v3, v5}, Lcom/lge/systemui/MusicControl;->access$602(Lcom/lge/systemui/MusicControl;Z)Z

    .line 957
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 958
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 959
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 960
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 961
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 966
    :pswitch_5
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->isCacheVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    goto/16 :goto_0

    .line 971
    :pswitch_6
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 973
    :try_start_1
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->pause()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v3}, Lcom/lge/systemui/MusicControl;->unBindService()V

    goto/16 :goto_0

    .line 980
    :pswitch_7
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-boolean v3, v3, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v3, :cond_0

    .line 981
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 982
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "playing"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$5;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v3, v3, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    const-string v5, "name=\'MUSIC\'"

    invoke-virtual {v3, v4, v2, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 984
    const-string v3, "MusicControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dismiss() values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 974
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
