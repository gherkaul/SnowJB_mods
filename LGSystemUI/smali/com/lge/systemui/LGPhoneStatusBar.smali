.class public Lcom/lge/systemui/LGPhoneStatusBar;
.super Ljava/lang/Object;
.source "LGPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurToastGravity:I

.field public mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

.field private mFMRadio:Lcom/lge/systemui/FMRadio;

.field private mHandler:Landroid/os/Handler;

.field private mIsHidedForCleanView:Z

.field private mIsVisibleMiniComponent:Z

.field private mMiniComponent:Landroid/widget/LinearLayout;

.field private mMiniComponentDBObserver:Landroid/database/ContentObserver;

.field private mMiniComponentMode:Z

.field private mMusicControl:Lcom/lge/systemui/MusicControl;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mPopupView:Landroid/view/View;

.field private mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

.field private mRequestedCleanViewPackage:Ljava/lang/String;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mToastLP:Landroid/view/WindowManager$LayoutParams;

.field mToastListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToastView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/lge/quicksettings/QuickSettings;Lcom/lge/systemui/MusicControl;Lcom/lge/systemui/FMRadio;)V
    .locals 6
    .parameter "context"
    .parameter "statusBarWindow"
    .parameter "statusBarView"
    .parameter "phoneStatusBar"
    .parameter "quickSettings"
    .parameter "musicControl"
    .parameter "fMRadio"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurConfig:Landroid/content/res/Configuration;

    .line 70
    iput-object v4, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    .line 72
    iput-boolean v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentMode:Z

    .line 73
    iput-boolean v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsVisibleMiniComponent:Z

    .line 81
    iput-object v4, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    .line 82
    new-instance v2, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;

    invoke-direct {v2, p0}, Lcom/lge/systemui/LGPhoneStatusBar$MiniComponentDBObserver;-><init>(Lcom/lge/systemui/LGPhoneStatusBar;)V

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentDBObserver:Landroid/database/ContentObserver;

    .line 84
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mRequestedCleanViewPackage:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z

    .line 87
    new-instance v2, Lcom/lge/systemui/LGPhoneStatusBar$1;

    invoke-direct {v2, p0}, Lcom/lge/systemui/LGPhoneStatusBar$1;-><init>(Lcom/lge/systemui/LGPhoneStatusBar;)V

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v2, Lcom/lge/systemui/LGPhoneStatusBar$2;

    invoke-direct {v2, p0}, Lcom/lge/systemui/LGPhoneStatusBar$2;-><init>(Lcom/lge/systemui/LGPhoneStatusBar;)V

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v2, Lcom/lge/systemui/LGPhoneStatusBar$3;

    invoke-direct {v2, p0}, Lcom/lge/systemui/LGPhoneStatusBar$3;-><init>(Lcom/lge/systemui/LGPhoneStatusBar;)V

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastListener:Landroid/view/animation/Animation$AnimationListener;

    .line 173
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 175
    iput-object p3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 176
    iput-object p4, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 177
    iput-object p5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    .line 178
    iput-object p6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    .line 179
    iput-object p7, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/lge/systemui/BAL;->isDualSimSupport()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 184
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "dualdummy2"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string v2, "com.lge.action.minicomponent"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "com.lge.systemui.cleanview.show"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v2, "com.lge.systemui.cleanview.hide"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    const v2, 0x7f03003d

    invoke-static {p1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    .line 196
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/lge/systemui/LGPhoneStatusBar;->addToastView()V

    .line 198
    invoke-static {p0}, Lcom/lge/systemui/Utils;->Init(Lcom/lge/systemui/LGPhoneStatusBar;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentDBObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/LGPhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurToastGravity:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/systemui/LGPhoneStatusBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurToastGravity:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/lge/systemui/FMRadio;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/systemui/LGPhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsVisibleMiniComponent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/systemui/LGPhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/systemui/LGPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/systemui/LGPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/systemui/LGPhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lge/systemui/LGPhoneStatusBar;->setToastVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/systemui/LGPhoneStatusBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mRequestedCleanViewPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/lge/systemui/LGPhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/lge/systemui/MusicControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    return-object v0
.end method

.method private addToastView()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    .line 217
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 218
    .local v6, y:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    .line 225
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x57

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 226
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SystemUIToast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 229
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 230
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastLP:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurToastGravity:I

    .line 232
    return-void
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 258
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    :cond_0
    return-object v0
.end method

.method private setToastVisibility(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void

    .line 244
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public checkCleanViewActivityAvail()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 470
    iget-boolean v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z

    if-nez v5, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 473
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 474
    .local v2, isActivityExist:Z
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 475
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v1, :cond_2

    .line 476
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessSlider:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v5, v7}, Lcom/lge/systemui/BrightnessSlider;->setVisibility(I)V

    .line 477
    iput-boolean v7, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z

    goto :goto_0

    .line 480
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 482
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mRequestedCleanViewPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    const/4 v2, 0x1

    goto :goto_1

    .line 486
    .end local v4           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    if-nez v2, :cond_0

    .line 487
    const-string v5, "LGPhoneStatusBar"

    const-string v6, "Looks like cleanview activity died"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessSlider:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v5, v7}, Lcom/lge/systemui/BrightnessSlider;->setVisibility(I)V

    .line 489
    iput-boolean v7, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z

    goto :goto_0
.end method

.method public getMiniComponentHeight(Landroid/view/View;)I
    .locals 4
    .parameter "closeView"

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, musicControlBarSize:I
    const/4 v0, 0x0

    .line 437
    .local v0, fmRadioBarSize:I
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->getHeight()I

    move-result v1

    .line 438
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->getHeight()I

    move-result v0

    .line 439
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public hideExpandableNotificationGuide()V
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 369
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPopupView:Landroid/view/View;

    const v2, 0x7f0c0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 370
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "help_settings_status_bar_tips"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method public isMiniComponentMode()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentMode:Z

    return v0
.end method

.method public isShowMiniComponentMode()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mIsVisibleMiniComponent:Z

    return v0
.end method

.method public makeMiniComponent(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandParent:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->getMiniComponentView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->getMiniComponentView()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_2

    .line 270
    :cond_0
    const-string v2, "LGPhoneStatusBar"

    const-string v3, "[updateExpandedViewForMusic()] null pointer error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    if-ne p1, v5, :cond_3

    iget-boolean v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentMode:Z

    if-eq v2, v5, :cond_1

    :cond_3
    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentMode:Z

    if-eqz v2, :cond_1

    .line 279
    :cond_4
    iput-boolean p1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponentMode:Z

    .line 281
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->getMiniComponentView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 282
    .local v1, miniMusicControlView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->getMiniComponentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 285
    .local v0, miniFMRadioView:Landroid/view/ViewGroup;
    if-ne p1, v5, :cond_8

    .line 286
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f03000e

    invoke-static {v2, v3, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    .line 287
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 289
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->isCacheVisible()Z

    move-result v2

    if-ne v2, v5, :cond_5

    .line 290
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->enableMiniComponent()V

    .line 291
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 292
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 294
    :cond_5
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->isVisible()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 295
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->enableMiniComponent()V

    .line 296
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 297
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 299
    :cond_6
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 311
    :goto_1
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->isCacheVisible()Z

    move-result v2

    if-ne v2, v5, :cond_7

    .line 312
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->initMusicControl()V

    .line 313
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 315
    :cond_7
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    goto :goto_0

    .line 301
    :cond_8
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 302
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 304
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 305
    iput-object v7, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMiniComponent:Landroid/widget/LinearLayout;

    .line 306
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mMusicControl:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v2}, Lcom/lge/systemui/MusicControl;->disableMiniComponent()V

    .line 307
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mFMRadio:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v2}, Lcom/lge/systemui/FMRadio;->disableMiniComponent()V

    .line 308
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandParent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 206
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 207
    .local v0, conf:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "LGPhoneStatusBar"

    const-string v3, "UpdateToastView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/lge/systemui/LGPhoneStatusBar;->updateToastView()V

    .line 211
    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 214
    :cond_0
    return-void
.end method

.method public sendStatusBarCollapsedBC(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "LGPhoneStatusBar"

    const-string v2, "noti collapsed BC sent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method public sendStatusBarExpandedBC(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "LGPhoneStatusBar"

    const-string v2, "noti expanded BC sent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method public showExpandableNotificationGuide(ZLcom/android/systemui/statusbar/NotificationData;)V
    .locals 11
    .parameter "expanded"
    .parameter "notificationData"

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 327
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "help_settings_status_bar_tips"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_3

    if-eqz p1, :cond_3

    .line 328
    const/4 v4, 0x0

    .line 330
    .local v4, visible:Z
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 331
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 332
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 333
    .local v1, ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    const/4 v4, 0x1

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v1           #ent:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    if-eqz v4, :cond_3

    .line 339
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_2

    .line 340
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 342
    :cond_2
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    const v6, 0x7f030007

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPopupView:Landroid/view/View;

    .line 343
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPopupView:Landroid/view/View;

    invoke-direct {v5, v6, v9, v9, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    .line 344
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v5, v10, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 345
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 347
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mPopupView:Landroid/view/View;

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Lcom/lge/systemui/LGPhoneStatusBar$4;

    invoke-direct {v6, p0}, Lcom/lge/systemui/LGPhoneStatusBar$4;-><init>(Lcom/lge/systemui/LGPhoneStatusBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 356
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v7, 0x3fd999999999999aL

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 361
    .local v3, marginTop:I
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mExpandableNotificationGuidePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v5, v6, v9, v9, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 364
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #marginTop:I
    .end local v4           #visible:Z
    :cond_3
    return-void
.end method

.method public showToast(Ljava/lang/String;IJ)V
    .locals 6
    .parameter "strText"
    .parameter "gravity"
    .parameter "delayMillis"

    .prologue
    const/16 v5, 0x407

    .line 235
    const-string v1, "LGPhoneStatusBar"

    const-string v2, "showToast() Long"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    const v2, 0x7f0c011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x406

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method public updateToastView()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    .line 252
    invoke-direct {p0}, Lcom/lge/systemui/LGPhoneStatusBar;->addToastView()V

    .line 253
    iget-object v0, p0, Lcom/lge/systemui/LGPhoneStatusBar;->mToastView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method
