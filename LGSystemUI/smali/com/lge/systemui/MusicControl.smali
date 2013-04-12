.class public Lcom/lge/systemui/MusicControl;
.super Lcom/lge/systemui/Component;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/MusicControl$CustomClickListener;,
        Lcom/lge/systemui/MusicControl$AlbumImageRunnable;,
        Lcom/lge/systemui/MusicControl$audioInfoRunnable;,
        Lcom/lge/systemui/MusicControl$MusicHandler;,
        Lcom/lge/systemui/MusicControl$CustomThread;
    }
.end annotation


# static fields
.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mAlbumAnimationImg:[Landroid/widget/ImageView;

.field private mAlbumImg:[Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field public mConnection:Landroid/content/ServiceConnection;

.field private mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

.field private mFfwdListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastSeekEventTime:J

.field private mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

.field private mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

.field private mOldTrackName:Ljava/lang/String;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlayBtn:[Landroid/widget/ImageButton;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/os/PowerManager;

.field private mProgressBar:[Landroid/widget/ProgressBar;

.field private mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

.field private mRewListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

.field private mScreenStatus:Z

.field private mSeeking:Z

.field private mSongTitleTextView:[Landroid/widget/TextView;

.field private mStartSeekPos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/systemui/MusicControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/lge/systemui/SwipeRowLayout;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 4
    .parameter "context"
    .parameter "statusBarWindowView"
    .parameter "srl"
    .parameter "phoneStatusBar"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 106
    invoke-direct {p0}, Lcom/lge/systemui/Component;-><init>()V

    .line 81
    iput-object v3, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    .line 82
    iput-object v3, p0, Lcom/lge/systemui/MusicControl;->mPm:Landroid/os/PowerManager;

    .line 84
    new-array v1, v2, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    .line 85
    new-array v1, v2, [Lcom/lge/systemui/RepeatingImageButton;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    .line 86
    new-array v1, v2, [Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    .line 87
    new-array v1, v2, [Lcom/lge/systemui/RepeatingImageButton;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    .line 88
    new-array v1, v2, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    .line 89
    new-array v1, v2, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    .line 90
    new-array v1, v2, [Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    .line 94
    iput-object v3, p0, Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;

    .line 95
    new-instance v1, Lcom/lge/systemui/MusicControl$MusicHandler;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$MusicHandler;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/systemui/MusicControl;->mSeeking:Z

    .line 99
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/systemui/MusicControl;->mScreenStatus:Z

    .line 142
    new-instance v1, Lcom/lge/systemui/MusicControl$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$1;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mConnection:Landroid/content/ServiceConnection;

    .line 413
    new-instance v1, Lcom/lge/systemui/MusicControl$3;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$3;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mRewListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    .line 420
    new-instance v1, Lcom/lge/systemui/MusicControl$4;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$4;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mFfwdListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    .line 910
    new-instance v1, Lcom/lge/systemui/MusicControl$5;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$5;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    .line 990
    new-instance v1, Lcom/lge/systemui/MusicControl$6;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$6;-><init>(Lcom/lge/systemui/MusicControl;)V

    iput-object v1, p0, Lcom/lge/systemui/MusicControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 109
    iput-object p3, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    .line 110
    iget-object v1, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v1, p0}, Lcom/lge/systemui/SwipeRowLayout;->setMusicControl(Lcom/lge/systemui/MusicControl;)V

    .line 111
    iput-object p4, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 112
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->isVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 113
    iget-object v1, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const v2, 0x7f030012

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    .line 114
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.lge.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "com.lge.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "com.android.server.status.unbind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "com.lge.music.saveNoDisplay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "com.lge.music.refreshalbumart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/systemui/MusicControl;Lcom/lge/music/IMediaPlaybackService;)Lcom/lge/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/systemui/MusicControl;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/systemui/MusicControl;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/lge/systemui/MusicControl;->isNoFiles(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/systemui/MusicControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/lge/systemui/MusicControl;->isMediaMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lge/systemui/MusicControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemui/MusicControl;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/systemui/MusicControl;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/systemui/MusicControl;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/systemui/MusicControl;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/systemui/MusicControl;)Lcom/lge/systemui/MusicControl$MusicHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/systemui/MusicControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/systemui/MusicControl;->mScreenStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/systemui/MusicControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/systemui/MusicControl;->mScreenStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/systemui/MusicControl;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/systemui/MusicControl;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 504
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 505
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x1

    .line 508
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMediaMounted()Z
    .locals 2

    .prologue
    .line 337
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNoFiles(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 174
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v9

    const-string v4, "is_music=1"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/systemui/MusicControl;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    if-eqz v7, :cond_1

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    :goto_0
    return v0

    .line 182
    :cond_2
    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private scanBackward(IJ)V
    .locals 11
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    .line 428
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-nez v5, :cond_0

    .line 463
    :goto_0
    return-void

    .line 430
    :cond_0
    if-nez p1, :cond_1

    .line 431
    :try_start_0
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    .line 432
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    .line 433
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/systemui/MusicControl;->mSeeking:Z

    goto :goto_0

    .line 461
    :catch_0
    move-exception v5

    goto :goto_0

    .line 435
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/systemui/MusicControl;->mSeeking:Z

    .line 436
    const-wide/16 v5, 0x1388

    cmp-long v5, p2, v5

    if-gez v5, :cond_5

    .line 437
    const-wide/16 v5, 0xa

    mul-long/2addr p2, v5

    .line 441
    :goto_1
    iget-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    sub-long v3, v5, p2

    .line 442
    .local v3, newpos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    .line 443
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v2, 0x1

    .line 445
    .local v2, isFirstSong:Z
    :goto_2
    if-eqz v2, :cond_7

    .line 446
    const-wide/16 v3, 0x0

    .line 455
    .end local v2           #isFirstSong:Z
    :cond_2
    :goto_3
    iget-wide v5, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p1, :cond_4

    .line 456
    :cond_3
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5, v3, v4}, Lcom/lge/music/IMediaPlaybackService;->seek(J)J

    .line 457
    iput-wide p2, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    .line 459
    :cond_4
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lge/systemui/MusicControl$MusicHandler;->tick(Z)V

    goto :goto_0

    .line 439
    .end local v3           #newpos:J
    :cond_5
    const-wide/32 v5, 0xc350

    const-wide/16 v7, 0x1388

    sub-long v7, p2, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p2, v5, v7

    goto :goto_1

    .line 443
    .restart local v3       #newpos:J
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 448
    .restart local v2       #isFirstSong:Z
    :cond_7
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->prev()V

    .line 449
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 450
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 451
    .local v0, duration:J
    iget-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    add-long/2addr v3, v0

    goto :goto_3
.end method

.method private scanForward(IJ)V
    .locals 12
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 466
    iget-object v6, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-nez v6, :cond_0

    .line 501
    :goto_0
    return-void

    .line 468
    :cond_0
    if-nez p1, :cond_1

    .line 469
    :try_start_0
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    .line 470
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    .line 471
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/systemui/MusicControl;->mSeeking:Z

    goto :goto_0

    .line 499
    :catch_0
    move-exception v5

    goto :goto_0

    .line 473
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/systemui/MusicControl;->mSeeking:Z

    .line 474
    cmp-long v6, p2, v8

    if-gez v6, :cond_5

    .line 475
    const-wide/16 v6, 0xa

    mul-long/2addr p2, v6

    .line 479
    :goto_1
    iget-wide v6, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    add-long v3, v6, p2

    .line 480
    .local v3, newpos:J
    iget-object v6, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/lge/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 481
    .local v0, duration:J
    cmp-long v6, v3, v0

    if-ltz v6, :cond_2

    .line 482
    iget-object v6, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/lge/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/lge/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    iget-object v7, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/lge/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 484
    .local v2, isLastSong:Z
    :goto_2
    if-eqz v2, :cond_7

    .line 485
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 493
    .end local v2           #isLastSong:Z
    :cond_2
    :goto_3
    iget-wide v5, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    if-gez p1, :cond_4

    .line 494
    :cond_3
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5, v3, v4}, Lcom/lge/music/IMediaPlaybackService;->seek(J)J

    .line 495
    iput-wide p2, p0, Lcom/lge/systemui/MusicControl;->mLastSeekEventTime:J

    .line 497
    :cond_4
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lge/systemui/MusicControl$MusicHandler;->tick(Z)V

    goto :goto_0

    .line 477
    .end local v0           #duration:J
    .end local v3           #newpos:J
    :cond_5
    const-wide/32 v6, 0xc350

    sub-long v8, p2, v8

    const-wide/16 v10, 0x28

    mul-long/2addr v8, v10

    add-long p2, v6, v8

    goto :goto_1

    .restart local v0       #duration:J
    .restart local v3       #newpos:J
    :cond_6
    move v2, v5

    .line 482
    goto :goto_2

    .line 487
    .restart local v2       #isLastSong:Z
    :cond_7
    iget-object v5, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/lge/music/IMediaPlaybackService;->next()V

    .line 488
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 489
    iget-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/lge/systemui/MusicControl;->mStartSeekPos:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    sub-long/2addr v3, v0

    goto :goto_3
.end method


# virtual methods
.method protected addComponent()V
    .locals 5

    .prologue
    .line 269
    const-string v2, "MusicControl"

    const-string v3, "addComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->removeComponent()V

    .line 272
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    const-string v2, "MusicControl"

    const-string v3, "addComponent() called but, isVisible() is false, Skip addComponent."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 278
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    iget-object v3, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, swipeRowLayoutParent:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v2, 0x7f0c0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    .line 282
    const-string v2, "MusicControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSwipeComponentView.getVisibility() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 285
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->initMusicControl()V

    goto :goto_0
.end method

.method public disableMiniComponent()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemui/Component;->mComponentType:I

    .line 334
    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 265
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    return-void
.end method

.method public enableMiniComponent()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemui/Component;->mComponentType:I

    .line 330
    return-void
.end method

.method public initMusicControl()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const-wide/16 v7, 0x104

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 341
    const-string v2, "MusicControl"

    const-string v3, "initMusicControl()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    .local v1, tv:Landroid/widget/TextView;
    const-string v2, "musiccontrol"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c0074

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 346
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c0074

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c0075

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v6

    .line 348
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c0075

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v5

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    :cond_2
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c0077

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v6

    .line 352
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c0077

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v5

    .line 353
    :cond_3
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 354
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 356
    :cond_4
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c007a

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/RepeatingImageButton;

    aput-object v2, v3, v6

    .line 357
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c007a

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/RepeatingImageButton;

    aput-object v2, v3, v5

    .line 358
    :cond_5
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c007b

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v3, v6

    .line 359
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c007b

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v3, v5

    .line 360
    :cond_6
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c007c

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/RepeatingImageButton;

    aput-object v2, v3, v6

    .line 361
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c007c

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/RepeatingImageButton;

    aput-object v2, v3, v5

    .line 362
    :cond_7
    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0c0078

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    aput-object v2, v3, v6

    .line 363
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v4, 0x7f0c0078

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    aput-object v2, v3, v5

    .line 364
    :cond_8
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v6

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v6}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Lcom/lge/systemui/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v5

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v6}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Lcom/lge/systemui/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :cond_9
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    aget-object v2, v2, v6

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v5}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    aget-object v2, v2, v5

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v5}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :cond_a
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v6

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v9}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Lcom/lge/systemui/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v5

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v9}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Lcom/lge/systemui/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :cond_b
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v10}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    new-instance v3, Lcom/lge/systemui/MusicControl$CustomClickListener;

    invoke-direct {v3, p0, v10}, Lcom/lge/systemui/MusicControl$CustomClickListener;-><init>(Lcom/lge/systemui/MusicControl;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :cond_c
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mRewListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v7, v8}, Lcom/lge/systemui/RepeatingImageButton;->setRepeatListener(Lcom/lge/systemui/RepeatingImageButton$RepeatListener;J)V

    .line 374
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mRewListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v7, v8}, Lcom/lge/systemui/RepeatingImageButton;->setRepeatListener(Lcom/lge/systemui/RepeatingImageButton$RepeatListener;J)V

    .line 375
    :cond_d
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mFfwdListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v7, v8}, Lcom/lge/systemui/RepeatingImageButton;->setRepeatListener(Lcom/lge/systemui/RepeatingImageButton$RepeatListener;J)V

    .line 376
    iget-object v2, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mFfwdListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v7, v8}, Lcom/lge/systemui/RepeatingImageButton;->setRepeatListener(Lcom/lge/systemui/RepeatingImageButton$RepeatListener;J)V

    .line 379
    :cond_e
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const v3, 0x7f040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;

    .line 383
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_f

    .line 384
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/lge/systemui/MusicControl$2;

    invoke-direct {v3, p0}, Lcom/lge/systemui/MusicControl$2;-><init>(Lcom/lge/systemui/MusicControl;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    :cond_f
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 401
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_10

    .line 402
    const/16 v2, 0x1a

    const-string v3, "MusicControl"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/lge/systemui/MusicControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 403
    sget-object v2, Lcom/lge/systemui/MusicControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 405
    :cond_10
    iget-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-eqz v2, :cond_11

    .line 406
    const-string v2, "MusicControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Music] SwipeComponentView is ready. Height is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/systemui/MusicControl;->setHeight(I)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_11
    const-string v2, "MusicControl"

    const-string v3, "[Music] SwipeComponentView is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPlayingMusic()Z
    .locals 3

    .prologue
    .line 289
    const-string v0, "MusicControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicHandler.isPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$MusicHandler;->getIsPlay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    invoke-virtual {v0}, Lcom/lge/systemui/MusicControl$MusicHandler;->getIsPlay()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 294
    const/4 v7, 0x0

    .line 295
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 296
    .local v6, bReturnValue:Z
    const-string v0, "MusicControl"

    const-string v1, "isVisible() ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/systemui/MusicControl;->COMPONENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "playing"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "MUSIC"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 299
    if-nez v7, :cond_1

    .line 317
    if-eqz v7, :cond_0

    .line 319
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v0, v12

    .line 325
    :goto_1
    return v0

    .line 320
    :catch_0
    move-exception v10

    .line 321
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "MusicControl"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 302
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 303
    .local v8, dbcount:I
    if-lez v8, :cond_3

    .line 304
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 306
    .local v9, display:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 308
    .local v11, playing:I
    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    .line 309
    const/4 v6, 0x1

    .line 311
    :cond_2
    const-string v0, "MusicControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisible() display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bReturnValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 317
    .end local v9           #display:I
    .end local v11           #playing:I
    :cond_3
    if-eqz v7, :cond_4

    .line 319
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v8           #dbcount:I
    :cond_4
    :goto_2
    move v0, v6

    .line 325
    goto :goto_1

    .line 320
    .restart local v8       #dbcount:I
    :catch_1
    move-exception v10

    .line 321
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "MusicControl"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 314
    .end local v8           #dbcount:I
    .end local v10           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 317
    if-eqz v7, :cond_4

    .line 319
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 320
    :catch_3
    move-exception v10

    .line 321
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "MusicControl"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 317
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 319
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 322
    :cond_5
    :goto_3
    throw v0

    .line 320
    :catch_4
    move-exception v10

    .line 321
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v1, "MusicControl"

    const-string v2, "=====  Cursor Close Exception  ====="

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onBindService()V
    .locals 5

    .prologue
    .line 130
    const-string v2, "MusicControl"

    const-string v3, "onBindService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.lge.music"

    const-string v3, "com.lge.music.MediaPlaybackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MusicControl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDBChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 876
    const-string v0, "MusicControl"

    const-string v1, "MusicDBObserver - onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v0, :cond_2

    .line 897
    :cond_0
    :goto_0
    const-string v0, "MusicControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicDBObserver() mVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/systemui/Component;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {}, Lcom/lge/systemui/Utils;->getLockStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 900
    const-string v0, "MusicControl"

    const-string v1, "MusicDBObserver(): LockStatus on Secure is true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->isMiniComponentMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 903
    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v1, 0x109

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(I)V

    .line 908
    :cond_1
    return-void

    .line 884
    :cond_2
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->addComponent()V

    .line 885
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    goto :goto_0

    .line 888
    :cond_3
    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v0, :cond_0

    .line 889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 890
    iget-object v0, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->removeComponent()V

    goto :goto_0
.end method

.method public performUpdate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    const-string v2, "MusicControl"

    const-string v3, "performUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 205
    const-string v2, "MusicControl"

    const-string v3, "mSwipeComponentView is null. Skip performUpdate()."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-eqz v2, :cond_9

    .line 211
    :try_start_0
    iget-boolean v2, p0, Lcom/lge/systemui/MusicControl;->mScreenStatus:Z

    if-eqz v2, :cond_0

    .line 214
    new-instance v2, Lcom/lge/systemui/MusicControl$CustomThread;

    new-instance v3, Lcom/lge/systemui/MusicControl$audioInfoRunnable;

    invoke-direct {v3, p0}, Lcom/lge/systemui/MusicControl$audioInfoRunnable;-><init>(Lcom/lge/systemui/MusicControl;)V

    invoke-direct {v2, p0, v3}, Lcom/lge/systemui/MusicControl$CustomThread;-><init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$CustomThread;->start()V

    .line 215
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/lge/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/systemui/MusicControl$MusicHandler;->tick(Z)V

    .line 216
    :cond_2
    const-string v1, ""

    .line 217
    .local v1, trackName:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/lge/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 219
    new-instance v2, Lcom/lge/systemui/MusicControl$CustomThread;

    new-instance v3, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;-><init>(Lcom/lge/systemui/MusicControl;ZZ)V

    invoke-direct {v2, p0, v3}, Lcom/lge/systemui/MusicControl$CustomThread;-><init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$CustomThread;->start()V

    .line 220
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/lge/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    .line 232
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/lge/music/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 233
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1           #trackName:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/lge/systemui/MusicControl;->isNoFiles(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 253
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lcom/lge/systemui/RepeatingImageButton;->setEnabled(Z)V

    .line 254
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Lcom/lge/systemui/RepeatingImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 222
    .restart local v1       #trackName:Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    .line 223
    :try_start_1
    new-instance v2, Lcom/lge/systemui/MusicControl$CustomThread;

    new-instance v3, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;-><init>(Lcom/lge/systemui/MusicControl;ZZ)V

    invoke-direct {v2, p0, v3}, Lcom/lge/systemui/MusicControl$CustomThread;-><init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$CustomThread;->start()V

    .line 224
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    .line 225
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 227
    :cond_6
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 240
    .end local v1           #trackName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MusicControl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #trackName:Ljava/lang/String;
    :cond_7
    :try_start_2
    new-instance v2, Lcom/lge/systemui/MusicControl$CustomThread;

    new-instance v3, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;-><init>(Lcom/lge/systemui/MusicControl;ZZ)V

    invoke-direct {v2, p0, v3}, Lcom/lge/systemui/MusicControl$CustomThread;-><init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$CustomThread;->start()V

    goto/16 :goto_1

    .line 236
    :cond_8
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/lge/systemui/MusicControl;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 238
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mSongTitleTextView:[Landroid/widget/TextView;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 244
    .end local v1           #trackName:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/lge/systemui/MusicControl;->onBindService()V

    .line 245
    new-instance v2, Lcom/lge/systemui/MusicControl$CustomThread;

    new-instance v3, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;

    invoke-direct {v3, p0, v7, v7}, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;-><init>(Lcom/lge/systemui/MusicControl;ZZ)V

    invoke-direct {v2, p0, v3}, Lcom/lge/systemui/MusicControl$CustomThread;-><init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl$CustomThread;->start()V

    .line 246
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    .line 247
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mProgressBar:[Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 249
    :cond_a
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/systemui/MusicControl;->mOldTrackName:Ljava/lang/String;

    goto/16 :goto_2

    .line 257
    :cond_b
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mRewBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Lcom/lge/systemui/RepeatingImageButton;->setEnabled(Z)V

    .line 258
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mPlayBtn:[Landroid/widget/ImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 259
    iget-object v2, p0, Lcom/lge/systemui/MusicControl;->mFFBtn:[Lcom/lge/systemui/RepeatingImageButton;

    iget v3, p0, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v7}, Lcom/lge/systemui/RepeatingImageButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v8, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v8

    .line 198
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 194
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 195
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v8

    .line 196
    goto :goto_0

    .line 197
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .local v6, eex:Ljava/lang/IllegalArgumentException;
    move-object v1, v8

    .line 198
    goto :goto_0
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;

    .line 167
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/MusicControl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
