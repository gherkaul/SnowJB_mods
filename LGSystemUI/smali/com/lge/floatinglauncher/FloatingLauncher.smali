.class public Lcom/lge/floatinglauncher/FloatingLauncher;
.super Ljava/lang/Object;
.source "FloatingLauncher.java"


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
.field private mContext:Landroid/content/Context;

.field private mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

.field private mItemCount:I

.field private mItems:[Lcom/lge/systemui/ButtonItem;

.field private mLauncherLayout:Landroid/widget/LinearLayout;

.field private mLowProfilePkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageReceiver:Landroid/content/BroadcastReceiver;

.field public mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 3
    .parameter "context"
    .parameter "expanded"
    .parameter "service"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    .line 58
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/lge/systemui/ButtonItem;

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Lcom/lge/floatinglauncher/FloatingLauncher$1;

    invoke-direct {v1, p0}, Lcom/lge/floatinglauncher/FloatingLauncher$1;-><init>(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v1, Lcom/lge/floatinglauncher/FloatingLauncher$2;

    invoke-direct {v1, p0}, Lcom/lge/floatinglauncher/FloatingLauncher$2;-><init>(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 119
    iput-object p3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 121
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0033

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    .local v0, baseLayout:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->createItems()V

    .line 126
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->createItemList()V

    .line 127
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->loadFromPreferences()Z

    .line 128
    sget-object v1, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    sget-object v2, Lcom/lge/systemui/ButtonListParams;->sOrderComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->updateIconLists()V

    .line 131
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->registerReceiver()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->updateIconLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->saveToPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/floatinglauncher/FloatingLauncher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/floatinglauncher/FloatingLauncher;)Lcom/lge/floatinglauncher/BubbleTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->updateTitle()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/floatinglauncher/FloatingLauncher;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lge/floatinglauncher/FloatingLauncher;->setLowProfile(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->clickEdit()V

    return-void
.end method

.method private addItem(Lcom/lge/systemui/ButtonItem;IZZ)V
    .locals 5
    .parameter "buttonItem"
    .parameter "count"
    .parameter "isDefaultItem"
    .parameter "shouldClearTask"

    .prologue
    .line 172
    invoke-virtual {p1, p2}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    .line 173
    if-eqz p3, :cond_0

    .line 174
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 176
    :cond_0
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView;

    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/lge/floatinglauncher/BubbleTextView;-><init>(Landroid/content/Context;Lcom/lge/floatinglauncher/FloatingLauncher;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v0, btv:Lcom/lge/floatinglauncher/BubbleTextView;
    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemIconId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/floatinglauncher/BubbleTextView;->setCustomIcon(I)Lcom/lge/floatinglauncher/BubbleTextView;

    .line 179
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/systemui/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, label:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p1, v1}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/lge/floatinglauncher/BubbleTextView;->makeView()Lcom/lge/floatinglauncher/BubbleTextView;

    .line 184
    if-eqz p4, :cond_2

    .line 185
    const v2, 0x8000

    invoke-virtual {v0, v2}, Lcom/lge/floatinglauncher/BubbleTextView;->addIntentFlag(I)V

    .line 187
    :cond_2
    invoke-virtual {p1, v0}, Lcom/lge/systemui/ButtonItem;->setItemBubbleTextView(Lcom/lge/floatinglauncher/BubbleTextView;)V

    .line 188
    sget-object v2, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method private addItem(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "activityName"
    .parameter "isDefaultItem"
    .parameter "shouldClearTask"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/lge/floatinglauncher/FloatingLauncher;->getButtonItem(Ljava/lang/String;)Lcom/lge/systemui/ButtonItem;

    move-result-object v0

    .line 165
    .local v0, buttonItem:Lcom/lge/systemui/ButtonItem;
    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/systemui/Utils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItemCount:I

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Lcom/lge/systemui/ButtonItem;IZZ)V

    goto :goto_0
.end method

.method private addToLauncher(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    .end local v0           #ll:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 212
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private clickEdit()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 285
    .line 286
    const/4 v1, 0x2

    sput v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    .line 287
    sget-object v1, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/ButtonItem;

    .line 288
    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/floatinglauncher/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 289
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 292
    :cond_0
    if-nez v1, :cond_2

    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    :goto_2
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 310
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :goto_4
    return-void

    .line 295
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lge/systemui/ButtonListChangeOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 311
    :catch_1
    move-exception v0

    .line 312
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private createItemList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 149
    iput v4, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItemCount:I

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, count:I
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 152
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 153
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_QBROWSER_ATT:Z

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .restart local v1       #count:I
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    move v0, v1

    .line 157
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_1
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .restart local v1       #count:I
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 158
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 159
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .restart local v1       #count:I
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 160
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->addItem(Ljava/lang/String;ZZ)V

    .line 161
    return-void
.end method

.method private createItems()V
    .locals 7

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, itemCnt:I
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #itemCnt:I
    .local v1, itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.lge.videoplayer"

    const-string v5, "com.lge.videoplayer.gadgets.floatingwindow.FloatingPlayer"

    const v6, 0x7f02008a

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 137
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #itemCnt:I
    .restart local v0       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.lge.tdmb"

    const-string v5, "com.lge.tdmb.TdmbMainScreenActivity"

    const v6, 0x7f020086

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v1

    .line 138
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_QBROWSER_ATT:Z

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #itemCnt:I
    .restart local v1       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    const v6, 0x7f020084

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    move v0, v1

    .line 142
    .end local v1           #itemCnt:I
    .restart local v0       #itemCnt:I
    :cond_1
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #itemCnt:I
    .restart local v1       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.lge.app.richnote"

    const-string v5, "com.lge.app.richnote.fragment.RichNoteFragmentMain"

    const v6, 0x7f020085

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 143
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #itemCnt:I
    .restart local v0       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.lge.pa"

    const-string v5, "com.lge.pa.activity.LocalListViewActivity"

    const v6, 0x7f020088

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v1

    .line 144
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #itemCnt:I
    .restart local v1       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.android.calendar"

    const-string v5, "com.android.calendar.FloatingActivity"

    const v6, 0x7f020089

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    .line 145
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #itemCnt:I
    .restart local v0       #itemCnt:I
    new-instance v3, Lcom/lge/systemui/ButtonItem;

    const-string v4, "com.android.calculator2"

    const-string v5, "com.android.calculator2.Calculator"

    const v6, 0x7f020082

    invoke-direct {v3, v4, v5, v6}, Lcom/lge/systemui/ButtonItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v1

    .line 146
    return-void
.end method

.method private getButtonItem(Ljava/lang/String;)Lcom/lge/systemui/ButtonItem;
    .locals 3
    .parameter "activityName"

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v1

    .line 196
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mItems:[Lcom/lge/systemui/ButtonItem;

    aget-object v1, v1, v0

    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getEditButton()Lcom/lge/floatinglauncher/BubbleTextView;
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView;

    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui"

    const-string v3, ""

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/lge/floatinglauncher/BubbleTextView;-><init>(Landroid/content/Context;Lcom/lge/floatinglauncher/FloatingLauncher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    .line 270
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setCustomIcon(I)Lcom/lge/floatinglauncher/BubbleTextView;

    .line 271
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setCustomLabel(I)V

    .line 272
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-virtual {v0}, Lcom/lge/floatinglauncher/BubbleTextView;->makeView()Lcom/lge/floatinglauncher/BubbleTextView;

    .line 273
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setGravity(I)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    new-instance v1, Lcom/lge/floatinglauncher/FloatingLauncher$3;

    invoke-direct {v1, p0}, Lcom/lge/floatinglauncher/FloatingLauncher$3;-><init>(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    invoke-virtual {v0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    return-object v0
.end method

.method private loadFromPreferences()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    iget-object v8, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const-string v9, "floatinglauncher_setting"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 369
    .local v2, preferences:Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v8, "/data/data/com.android.systemui/shared_prefs/floatinglauncher_setting.xml"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, preferencesFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 389
    .end local v3           #preferencesFile:Ljava/io/File;
    :cond_0
    :goto_0
    return v6

    .line 372
    .restart local v3       #preferencesFile:Ljava/io/File;
    :cond_1
    const-string v8, "floatinglauncher_version"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 373
    .local v5, version:I
    if-eq v5, v7, :cond_2

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v3           #preferencesFile:Ljava/io/File;
    .end local v5           #version:I
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v8, "floatinglauncher_item_list"

    const-string v9, ""

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, data:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 384
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "|"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    sget-object v6, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/lge/floatinglauncher/FloatingLauncher;->updateItem(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v6, v7

    .line 389
    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v2, "com.lge.floatinglauncher.action.SAVE_HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v1, filter2:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    :cond_1
    return-void
.end method

.method private saveToPreferences()V
    .locals 8

    .prologue
    .line 343
    const-string v0, ""

    .line 344
    .local v0, data:Ljava/lang/String;
    sget-object v5, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 346
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/systemui/ButtonItem;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/ButtonItem;

    .line 348
    .local v2, item:Lcom/lge/systemui/ButtonItem;
    const-string v3, ""

    .line 350
    .local v3, items:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "true"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    goto/16 :goto_0

    .line 352
    :cond_0
    const-string v5, "false"

    goto :goto_1

    .line 358
    .end local v2           #item:Lcom/lge/systemui/ButtonItem;
    .end local v3           #items:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    const-string v6, "floatinglauncher_setting"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 359
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "floatinglauncher_version"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    const-string v5, "floatinglauncher_item_list"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    return-void
.end method

.method private setLowProfile(ZLjava/lang/String;)V
    .locals 6
    .parameter "setLowProfile"
    .parameter "pkgName"

    .prologue
    .line 433
    const-string v3, "FloatingLauncher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set lowprofile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-eqz p1, :cond_4

    .line 438
    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 443
    .end local v1           #pkg:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 446
    .local v2, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 447
    .restart local v1       #pkg:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    .end local v1           #pkg:Ljava/lang/String;
    :cond_6
    iput-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private updateIconLists()V
    .locals 20

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 219
    const/4 v8, 0x0

    .line 220
    .local v8, itemCount:I
    sget-object v18, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/systemui/ButtonItem;

    .line 221
    .local v12, orgItem:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v12}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v2

    .line 222
    .local v2, btv:Lcom/lge/floatinglauncher/BubbleTextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lge/floatinglauncher/FloatingLauncher;->addToLauncher(Landroid/view/View;)V

    .line 223
    invoke-virtual {v12}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 224
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setVisibility(I)V

    .line 225
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 227
    :cond_0
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 231
    .end local v2           #btv:Lcom/lge/floatinglauncher/BubbleTextView;
    .end local v12           #orgItem:Lcom/lge/systemui/ButtonItem;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->getEditButton()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/floatinglauncher/FloatingLauncher;->addToLauncher(Landroid/view/View;)V

    .line 232
    add-int/lit8 v8, v8, 0x1

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 235
    .local v9, manager:Landroid/view/WindowManager;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 236
    .local v11, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 237
    .local v3, disp:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v18

    if-nez v18, :cond_3

    const/4 v10, 0x4

    .line 238
    .local v10, maxItem:I
    :goto_1
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 239
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    div-int v4, v18, v19

    .line 240
    .local v4, fixedWidth:I
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    div-int v16, v18, v8

    .line 242
    .local v16, resizedWidth:I
    if-le v8, v10, :cond_4

    .line 243
    move/from16 v17, v4

    .line 248
    .local v17, width:I
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 250
    .local v13, outerView:Landroid/view/View;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_5

    .line 248
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 237
    .end local v4           #fixedWidth:I
    .end local v5           #i:I
    .end local v10           #maxItem:I
    .end local v13           #outerView:Landroid/view/View;
    .end local v16           #resizedWidth:I
    .end local v17           #width:I
    :cond_3
    const/4 v10, 0x6

    goto :goto_1

    .line 245
    .restart local v4       #fixedWidth:I
    .restart local v10       #maxItem:I
    .restart local v16       #resizedWidth:I
    :cond_4
    move/from16 v17, v16

    .restart local v17       #width:I
    goto :goto_2

    .restart local v5       #i:I
    .restart local v13       #outerView:Landroid/view/View;
    :cond_5
    move-object/from16 v18, v13

    .line 253
    check-cast v18, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 254
    .local v7, innerView:Landroid/view/View;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_2

    .line 257
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 258
    .local v15, paramsOuter:Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v17

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 262
    .local v14, paramsInner:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 263
    invoke-virtual {v7, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 265
    .end local v7           #innerView:Landroid/view/View;
    .end local v13           #outerView:Landroid/view/View;
    .end local v14           #paramsInner:Landroid/view/ViewGroup$LayoutParams;
    .end local v15           #paramsOuter:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    return-void
.end method

.method private updateItem(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    if-nez p2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ":"

    invoke-direct {v6, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .local v6, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, activityName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 399
    .local v5, order:I
    const-string v7, "true"

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .line 401
    .local v2, enabled:Z
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 402
    .local v4, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 403
    invoke-virtual {v4, v2}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 404
    invoke-virtual {v4, v5}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v0           #activityName:Ljava/lang/String;
    .end local v2           #enabled:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    .end local v5           #order:I
    .end local v6           #tokenizer:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #activityName:Ljava/lang/String;
    .restart local v5       #order:I
    .restart local v6       #tokenizer:Ljava/util/StringTokenizer;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 425
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 426
    .local v1, titleView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_0
    return-void
.end method


# virtual methods
.method public getLowProfilePkgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLowProfilePkgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public updateResource()V
    .locals 3

    .prologue
    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/lge/floatinglauncher/FloatingLauncher;->updateTitle()V

    .line 417
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mLauncherLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 418
    iget-object v1, p0, Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/lge/floatinglauncher/FloatingLauncher;->addToLauncher(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
