.class public Lcom/lge/quicksettings/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/QuickSettings$LabelUpdater;
    }
.end annotation


# static fields
.field public static sCurItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COLUMN_LANDSCAPE:D

.field private COLUMN_PORTRAIT:D

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mPage:Landroid/widget/LinearLayout;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3
    .parameter "context"
    .parameter "statusBarWindowView"
    .parameter "phoneStatusBar"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    new-instance v1, Lcom/lge/quicksettings/QuickSettings$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/QuickSettings$1;-><init>(Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/lge/quicksettings/QuickSettings;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 107
    iput-object p3, p0, Lcom/lge/quicksettings/QuickSettings;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 113
    const-string v1, "QuickSettings"

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0088

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 117
    .local v0, hsv:Landroid/widget/HorizontalScrollView;
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsItemList;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/lge/quicksettings/QuickSettingsItemList;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;

    .line 121
    sget-object v1, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    sget-object v2, Lcom/lge/systemui/ButtonListParams;->sOrderComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    .line 124
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 127
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/lge/quicksettings/QuickSettings;->COLUMN_PORTRAIT:D

    .line 129
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/lge/quicksettings/QuickSettings;->COLUMN_LANDSCAPE:D

    .line 131
    sget-object v1, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/quicksettings/QuickSettings;->composePages(Ljava/util/ArrayList;I)V

    .line 133
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettings;->registerReceiver()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsItemList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettings;->unregisterReceiver()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettings;->registerReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/QuickSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;

    return-object v0
.end method

.method private addButtonToPage(Landroid/widget/LinearLayout;Lcom/lge/systemui/ButtonItem;IDI)Lcom/lge/quicksettings/QuickSettingsButton;
    .locals 6
    .parameter "page"
    .parameter "item"
    .parameter "buttonCnt"
    .parameter "column"
    .parameter "width"

    .prologue
    .line 297
    const-wide/16 v1, 0x0

    .line 299
    .local v1, buttonWidth:D
    int-to-double v4, p3

    cmpl-double v4, v4, p4

    if-lez v4, :cond_0

    .line 300
    int-to-double v4, p6

    div-double v1, v4, p4

    .line 305
    :goto_0
    double-to-int v4, v1

    invoke-direct {p0, p1, v4}, Lcom/lge/quicksettings/QuickSettings;->createItemLayout(Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 306
    .local v3, layout:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-direct {v0, p0, p2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;-><init>(Lcom/lge/quicksettings/QuickSettings;Lcom/lge/systemui/ButtonItem;Landroid/widget/LinearLayout;)V

    .line 319
    .local v0, button:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v4, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;-><init>(Lcom/lge/quicksettings/QuickSettings;Lcom/lge/quicksettings/QuickSettingsButton;D)V

    invoke-virtual {v0, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setStatusChangeListener(Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;)V

    .line 322
    return-object v0

    .line 302
    .end local v0           #button:Lcom/lge/quicksettings/QuickSettingsButton;
    .end local v3           #layout:Landroid/widget/LinearLayout;
    :cond_0
    div-int v4, p6, p3

    int-to-double v1, v4

    goto :goto_0
.end method

.method private createItemLayout(Landroid/widget/LinearLayout;I)Landroid/widget/LinearLayout;
    .locals 3
    .parameter "page"
    .parameter "width"

    .prologue
    .line 270
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 278
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 279
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 281
    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.lge.quicksettings.action.SAVE_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->registerReceiver()V

    .line 183
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->unregisterReceiver()V

    .line 190
    return-void
.end method


# virtual methods
.method public addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 146
    return-void
.end method

.method public animateCollapse()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 486
    return-void
.end method

.method public animateCollapse(IF)V
    .locals 1
    .parameter "flags"
    .parameter "velocityMultiplier"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(IF)V

    .line 490
    return-void
.end method

.method public clickEdit()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x1

    sput v0, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    .line 155
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;

    sget-object v1, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->getEnabledItemCount(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 172
    return-void

    .line 158
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/systemui/ButtonListChangeOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "QuickSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public composePages(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 327
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 329
    .local v0, width:I
    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/quicksettings/QuickSettings;->composePages(Ljava/util/ArrayList;II)V

    .line 330
    return-void
.end method

.method public composePages(Ljava/util/ArrayList;II)V
    .locals 18
    .parameter
    .parameter "orientation"
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    .line 443
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v15, 0x0

    .line 336
    .local v15, empty:I
    const-wide/16 v6, 0x0

    .line 337
    .local v6, column:D
    const/4 v5, 0x0

    .line 340
    .local v5, buttonCnt:I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 341
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/quicksettings/QuickSettings;->COLUMN_PORTRAIT:D

    .line 345
    :goto_1
    const/16 v17, 0x0

    .line 347
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/systemui/ButtonItem;>;"
    if-eqz p1, :cond_5

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 349
    .local v4, item:Lcom/lge/systemui/ButtonItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 343
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/systemui/ButtonItem;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/quicksettings/QuickSettings;->COLUMN_LANDSCAPE:D

    goto :goto_1

    .line 353
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/systemui/ButtonItem;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 355
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 357
    :cond_4
    :goto_3
    if-eqz v17, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 361
    .restart local v4       #item:Lcom/lge/systemui/ButtonItem;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    move-object/from16 v2, p0

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/lge/quicksettings/QuickSettings;->addButtonToPage(Landroid/widget/LinearLayout;Lcom/lge/systemui/ButtonItem;IDI)Lcom/lge/quicksettings/QuickSettingsButton;

    goto :goto_3

    .line 366
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 370
    :cond_6
    new-instance v10, Lcom/lge/systemui/ButtonItem;

    invoke-direct {v10}, Lcom/lge/systemui/ButtonItem;-><init>()V

    .line 372
    .local v10, editItem:Lcom/lge/systemui/ButtonItem;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setItemId(I)V

    .line 373
    const v2, 0x7f0900d2

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setItemShortNameId(I)V

    .line 374
    const v2, 0x7f0900d2

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setItemLongNameId(I)V

    .line 375
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 376
    new-instance v2, Lcom/lge/quicksettings/QuickSettings$2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v3, v1}, Lcom/lge/quicksettings/QuickSettings$2;-><init>(Lcom/lge/quicksettings/QuickSettings;Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setHandler(Lcom/lge/quicksettings/QuickSettingsHandler;)V

    .line 435
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v10, v2}, Lcom/lge/systemui/ButtonItem;->setItemIcons([I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lcom/lge/quicksettings/QuickSettings;->addButtonToPage(Landroid/widget/LinearLayout;Lcom/lge/systemui/ButtonItem;IDI)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto/16 :goto_0

    .line 435
    :array_0
    .array-data 0x4
        0x3bt 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOrientation()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 194
    .local v0, conf:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 196
    .local v1, isPortraitOri:Z
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return v2

    .line 194
    .end local v1           #isPortraitOri:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 196
    .restart local v1       #isPortraitOri:Z
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mReceiverStation:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 150
    return-void
.end method

.method public updateAllButtons(Z)V
    .locals 1
    .parameter "compose"

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->updateItems()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings;->mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateAllButtons()V

    .line 482
    return-void
.end method

.method public updateItems()V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettings;->unregisterReceiver()V

    .line 201
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/quicksettings/QuickSettings;->updatePages(Ljava/util/ArrayList;I)V

    .line 202
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettings;->registerReceiver()V

    .line 203
    return-void
.end method

.method public updatePages(Ljava/util/ArrayList;I)V
    .locals 8
    .parameter
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    .line 474
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 450
    .local v1, itemCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 451
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 453
    .local v4, l:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_1

    .line 454
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 450
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 457
    .end local v4           #l:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 459
    const/4 v2, 0x0

    .line 461
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/systemui/ButtonItem;>;"
    if-eqz p1, :cond_3

    .line 462
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 464
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/ButtonItem;

    .line 466
    .local v0, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getHandler()Lcom/lge/quicksettings/QuickSettingsHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    goto :goto_2

    .line 470
    .end local v0           #item:Lcom/lge/systemui/ButtonItem;
    :cond_3
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 471
    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 473
    .local v5, width:I
    invoke-virtual {p0, p1, p2, v5}, Lcom/lge/quicksettings/QuickSettings;->composePages(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method
