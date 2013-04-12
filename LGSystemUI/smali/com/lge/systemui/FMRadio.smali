.class public Lcom/lge/systemui/FMRadio;
.super Lcom/lge/systemui/Component;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/FMRadio$CustomClickListener;
    }
.end annotation


# static fields
.field private static ACTION_FMRADIO:Ljava/lang/String;


# instance fields
.field private mChannel:[Landroid/widget/TextView;

.field private mFMradioImg:[Landroid/widget/ImageView;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerOffBtn:[Landroid/widget/ImageButton;

.field private mSeekBackwardBtn:[Landroid/widget/ImageButton;

.field private mSeekForwardBtn:[Landroid/widget/ImageButton;

.field private mStationName:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com.lge.fmradio.action.fmradioservice"

    sput-object v0, Lcom/lge/systemui/FMRadio;->ACTION_FMRADIO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/lge/systemui/SwipeRowLayout;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3
    .parameter "context"
    .parameter "statusBarWindowView"
    .parameter "srl"
    .parameter "phoneStatusBar"

    .prologue
    const/4 v1, 0x2

    .line 89
    invoke-direct {p0}, Lcom/lge/systemui/Component;-><init>()V

    .line 36
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mChannel:[Landroid/widget/TextView;

    .line 37
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;

    .line 39
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mFMradioImg:[Landroid/widget/ImageView;

    .line 40
    new-array v0, v1, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mSeekBackwardBtn:[Landroid/widget/ImageButton;

    .line 41
    new-array v0, v1, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mPowerOffBtn:[Landroid/widget/ImageButton;

    .line 42
    new-array v0, v1, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mSeekForwardBtn:[Landroid/widget/ImageButton;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mFilter:Landroid/content/IntentFilter;

    .line 45
    new-instance v0, Lcom/lge/systemui/FMRadio$1;

    invoke-direct {v0, p0}, Lcom/lge/systemui/FMRadio$1;-><init>(Lcom/lge/systemui/FMRadio;)V

    iput-object v0, p0, Lcom/lge/systemui/FMRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 92
    iput-object p3, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    .line 93
    iget-object v0, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0, p0}, Lcom/lge/systemui/SwipeRowLayout;->setFMRadio(Lcom/lge/systemui/FMRadio;)V

    .line 94
    iput-object p4, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 95
    invoke-virtual {p0}, Lcom/lge/systemui/FMRadio;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 96
    iget-object v0, p0, Lcom/lge/systemui/FMRadio;->mFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/lge/systemui/FMRadio;->ACTION_FMRADIO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    .line 101
    iget-object v0, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/systemui/FMRadio;->ACTION_FMRADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/systemui/FMRadio;->mChannel:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected addComponent()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 158
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030009

    iget-object v3, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, swipeRowLayoutParent:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    .line 162
    const-string v2, "FMRadio"

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

    .line 164
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 165
    invoke-virtual {p0}, Lcom/lge/systemui/FMRadio;->initFMRadio()V

    .line 166
    return-void
.end method

.method public disableMiniComponent()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemui/Component;->mComponentType:I

    .line 146
    return-void
.end method

.method public dismiss(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 149
    iget-boolean v1, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "playing"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/FMRadio;->COMPONENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'FMRADIO\'"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "request"

    const-string v4, "power_off"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public enableMiniComponent()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/systemui/Component;->mComponentType:I

    .line 142
    return-void
.end method

.method public initFMRadio()V
    .locals 8

    .prologue
    const v3, 0x7f0c0039

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, tv:Landroid/widget/TextView;
    const-string v1, "fmradio"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mFMradioImg:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v4

    .line 110
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mFMradioImg:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v5

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mSeekBackwardBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c003c

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 112
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mSeekBackwardBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v3, 0x7f0c003c

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mPowerOffBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c003d

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 114
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mPowerOffBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v3, 0x7f0c003d

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mSeekForwardBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c003e

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    .line 116
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mSeekForwardBtn:[Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v3, 0x7f0c003e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mChannel:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c003a

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 119
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mChannel:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v3, 0x7f0c003a

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c003b

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 122
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    const v3, 0x7f0c003b

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mFMradioImg:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v7}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mFMradioImg:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v7}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_6
    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mSeekBackwardBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v4}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mSeekBackwardBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v4}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_7
    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mPowerOffBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v5}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mPowerOffBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v5}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_8
    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mSeekForwardBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v6}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mSeekForwardBtn:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    new-instance v2, Lcom/lge/systemui/FMRadio$CustomClickListener;

    invoke-direct {v2, p0, v6}, Lcom/lge/systemui/FMRadio$CustomClickListener;-><init>(Lcom/lge/systemui/FMRadio;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_9
    iget-object v1, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eqz v1, :cond_a

    .line 133
    const-string v1, "FMRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FM] SwipeComponentView is ready. Height is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/systemui/FMRadio;->setHeight(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_a
    const-string v1, "FMRadio"

    const-string v2, "[FM] SwipeComponentView is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isVisible()Z
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 172
    .local v6, bReturnValue:Z
    :try_start_0
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/systemui/FMRadio;->COMPONENT_URI:Landroid/net/Uri;

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

    const-string v13, "FMRADIO"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 173
    if-nez v7, :cond_1

    .line 191
    if-eqz v7, :cond_0

    .line 193
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v0, v12

    .line 199
    :goto_1
    return v0

    .line 194
    :catch_0
    move-exception v10

    .line 195
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "FMRadio"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 177
    .local v8, dbcount:I
    if-lez v8, :cond_3

    .line 178
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 180
    .local v9, display:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 182
    .local v11, playing:I
    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    .line 183
    const/4 v6, 0x1

    .line 185
    :cond_2
    const-string v0, "FMRadio"

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

    .line 191
    .end local v9           #display:I
    .end local v11           #playing:I
    :cond_3
    if-eqz v7, :cond_4

    .line 193
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v8           #dbcount:I
    :cond_4
    :goto_2
    move v0, v6

    .line 199
    goto :goto_1

    .line 194
    .restart local v8       #dbcount:I
    :catch_1
    move-exception v10

    .line 195
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "FMRadio"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 188
    .end local v8           #dbcount:I
    .end local v10           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 191
    if-eqz v7, :cond_4

    .line 193
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 194
    :catch_3
    move-exception v10

    .line 195
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "FMRadio"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 191
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 193
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 196
    :cond_5
    :goto_3
    throw v0

    .line 194
    :catch_4
    move-exception v10

    .line 195
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v1, "FMRadio"

    const-string v2, "=====  Cursor Close Exception  ====="

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onDBChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 203
    const-string v0, "FMRadio"

    const-string v1, "FMRadioDBObserver - onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/lge/systemui/FMRadio;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v0, :cond_2

    .line 225
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/systemui/Utils;->getLockStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "FMRadio"

    const-string v1, "FMRadioDBObserver(): LockStatus on Secure is true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0}, Lcom/lge/systemui/LGPhoneStatusBar;->isMiniComponentMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v1, 0x109

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(I)V

    .line 234
    :cond_1
    return-void

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/lge/systemui/FMRadio;->addComponent()V

    .line 211
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/systemui/FMRadio;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :cond_3
    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 216
    iget-object v0, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/lge/systemui/FMRadio;->removeComponent()V

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/FMRadio;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
