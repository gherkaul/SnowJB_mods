.class public Lcom/lge/floatinglauncher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sLastTime:J


# instance fields
.field H:Landroid/os/Handler;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mClassName:Ljava/lang/String;

.field private mClickDisabled:Z

.field private mDisabledInSetting:Z

.field private mFloatingIconPaddVertical:I

.field private mFloatingIconSize:I

.field private mFloatingLauncher:Lcom/lge/floatinglauncher/FloatingLauncher;

.field private mIconId:I

.field private mIntent:Landroid/content/Intent;

.field private mLabelId:I

.field public mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/floatinglauncher/BubbleTextView;->sLastTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    .line 61
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    .line 62
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    .line 64
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    .line 289
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView$2;

    invoke-direct {v0, p0}, Lcom/lge/floatinglauncher/BubbleTextView$2;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->H:Landroid/os/Handler;

    .line 72
    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    .line 61
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    .line 62
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    .line 64
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    .line 289
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView$2;

    invoke-direct {v0, p0}, Lcom/lge/floatinglauncher/BubbleTextView$2;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->H:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    .line 61
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    .line 62
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    .line 64
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    .line 289
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView$2;

    invoke-direct {v0, p0}, Lcom/lge/floatinglauncher/BubbleTextView$2;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->H:Landroid/os/Handler;

    .line 83
    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/floatinglauncher/FloatingLauncher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appControlBar"
    .parameter "packagename"
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    .line 61
    iput v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    .line 62
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    .line 64
    iput-boolean v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    .line 289
    new-instance v0, Lcom/lge/floatinglauncher/BubbleTextView$2;

    invoke-direct {v0, p0}, Lcom/lge/floatinglauncher/BubbleTextView$2;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->H:Landroid/os/Handler;

    .line 88
    iput-object p2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingLauncher:Lcom/lge/floatinglauncher/FloatingLauncher;

    .line 89
    iput-object p3, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/lge/floatinglauncher/BubbleTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/floatinglauncher/BubbleTextView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/floatinglauncher/BubbleTextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFloating(Ljava/lang/String;)Z
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 381
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_2

    .line 382
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_0

    move v6, v7

    .line 400
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    return v6

    .line 387
    .restart local v3       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 388
    const-string v9, "com.lge.app.floating.FloatingWindowService"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f090179

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0b004f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 392
    .local v5, yOffset:I
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 393
    .local v4, toast:Landroid/widget/Toast;
    const/16 v6, 0x31

    invoke-virtual {v4, v6, v7, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 394
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v6, v8

    .line 395
    goto :goto_0

    .line 387
    .end local v2           #msg:Ljava/lang/CharSequence;
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #yOffset:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v3           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2
    move v6, v7

    .line 400
    goto :goto_0
.end method

.method private checkNumOfWindows()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 354
    const/4 v3, 0x0

    .line 356
    .local v3, nFloatingService:I
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 357
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_2

    .line 358
    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 359
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v4, :cond_0

    move v7, v8

    .line 376
    .end local v4           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_0
    return v7

    .line 362
    .restart local v4       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 363
    const-string v9, "com.lge.app.floating.FloatingWindowService"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    add-int/lit8 v3, v3, 0x1

    .line 362
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    .end local v1           #i:I
    .end local v4           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2
    const/4 v7, 0x2

    if-lt v3, v7, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f090178

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 370
    .local v2, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b004f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 371
    .local v6, yOffset:I
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 372
    .local v5, toast:Landroid/widget/Toast;
    const/16 v7, 0x31

    invoke-virtual {v5, v7, v8, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 373
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 374
    const/4 v7, 0x1

    goto :goto_0

    .end local v2           #msg:Ljava/lang/CharSequence;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #yOffset:I
    :cond_3
    move v7, v8

    .line 376
    goto :goto_0
.end method

.method private getPackageIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const v1, 0x7f020081

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setBackgroundResource(I)V

    .line 226
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    .line 227
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void
.end method

.method private makeEnableDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20a01cb

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 299
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/floatinglauncher/BubbleTextView$3;

    invoke-direct {v2, p0}, Lcom/lge/floatinglauncher/BubbleTextView$3;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lge/floatinglauncher/BubbleTextView$4;

    invoke-direct {v2, p0}, Lcom/lge/floatinglauncher/BubbleTextView$4;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addIntentFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public checkLowProfile()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 326
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingLauncher:Lcom/lge/floatinglauncher/FloatingLauncher;

    invoke-virtual {v9}, Lcom/lge/floatinglauncher/FloatingLauncher;->getLowProfilePkgs()Ljava/util/ArrayList;

    move-result-object v4

    .line 327
    .local v4, lowProfilePkgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 330
    :try_start_0
    iget-object v12, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, appName:Ljava/lang/String;
    const-string v9, "com.lge.clock"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v12, 0x7f09017b

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, msg:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b004f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 342
    .local v8, yOffset:I
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 343
    .local v7, toast:Landroid/widget/Toast;
    const/16 v9, 0x31

    invoke-virtual {v7, v9, v11, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 344
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 345
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 346
    .local v6, s:Ljava/lang/String;
    const-string v9, "QSlideApps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lowProfilePkgs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #msg:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #toast:Landroid/widget/Toast;
    .end local v8           #yOffset:I
    :catch_0
    move-exception v2

    .line 332
    .local v2, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 334
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 339
    .restart local v1       #appName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v12, 0x7f09017a

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v1, v13, v11

    invoke-virtual {v9, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #msg:Ljava/lang/String;
    goto :goto_2

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v7       #toast:Landroid/widget/Toast;
    .restart local v8       #yOffset:I
    :cond_2
    move v9, v10

    .line 350
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #appName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #toast:Landroid/widget/Toast;
    .end local v8           #yOffset:I
    :goto_4
    return v9

    :cond_3
    move v9, v11

    goto :goto_4
.end method

.method public makeView()Lcom/lge/floatinglauncher/BubbleTextView;
    .locals 13

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    if-nez v9, :cond_0

    .line 137
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v5, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const/high16 v9, 0x2000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/high16 v9, 0x80

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v5}, Lcom/lge/floatinglauncher/BubbleTextView;->setIntent(Landroid/content/Intent;)Z

    .line 144
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->updateLabel()V

    .line 146
    iget v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 147
    iget-object v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 155
    .local v7, r:Landroid/content/res/Resources;
    const v9, 0x7f0b004d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconPaddVertical:I

    .line 156
    const v9, 0x7f0b004e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    .line 157
    if-eqz v2, :cond_1

    iget v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    if-lez v9, :cond_1

    .line 158
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v6, mOldBounds:Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 160
    .local v0, c:Landroid/graphics/Bitmap$Config;
    iget v9, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    iget v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 161
    .local v8, thumb:Landroid/graphics/Bitmap;
    const/16 v9, 0xa0

    invoke-virtual {v8, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 162
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    iget v12, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconSize:I

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 167
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v6           #mOldBounds:Landroid/graphics/Rect;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const/4 v9, 0x0

    iget v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconPaddVertical:I

    const/4 v11, 0x0

    iget v12, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingIconPaddVertical:I

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/lge/floatinglauncher/BubbleTextView;->setPadding(IIII)V

    .line 172
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0050

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 173
    .local v4, fontSize:I
    const/4 v9, 0x1

    const/high16 v10, 0x4140

    invoke-virtual {p0, v9, v10}, Lcom/lge/floatinglauncher/BubbleTextView;->setTextSize(IF)V

    .line 174
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setTextColor(I)V

    .line 175
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 176
    const/16 v9, 0x11

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setGravity(I)V

    .line 177
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setMaxLines(I)V

    .line 178
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v2, v10, v11}, Lcom/lge/floatinglauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-object p0

    .line 132
    .end local v4           #fontSize:I
    .end local v7           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 133
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 152
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/lge/floatinglauncher/BubbleTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const-wide/16 v12, 0x3e8

    .line 241
    iget-boolean v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    if-eqz v8, :cond_0

    .line 242
    const-string v8, "QSlideApps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skip, mPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mClassName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClassName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z

    .line 247
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/lge/floatinglauncher/BubbleTextView$1;

    invoke-direct {v9, p0}, Lcom/lge/floatinglauncher/BubbleTextView$1;-><init>(Lcom/lge/floatinglauncher/BubbleTextView;)V

    invoke-virtual {v8, v9, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :try_start_0
    iget-boolean v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    if-nez v8, :cond_6

    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, exception:Z
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->checkLowProfile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 259
    const/4 v5, 0x1

    .line 261
    :cond_1
    if-nez v5, :cond_2

    iget-object v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lge/floatinglauncher/BubbleTextView;->checkFloating(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 262
    const/4 v5, 0x1

    .line 264
    :cond_2
    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->checkNumOfWindows()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    const/4 v5, 0x1

    .line 267
    :cond_3
    if-nez v5, :cond_4

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, currentTime:J
    sget-wide v8, Lcom/lge/floatinglauncher/BubbleTextView;->sLastTime:J

    add-long v6, v8, v12

    .line 271
    .local v6, upToTime:J
    iget-object v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->H:Landroid/os/Handler;

    const/4 v9, 0x0

    sget-wide v10, Lcom/lge/floatinglauncher/BubbleTextView;->sLastTime:J

    add-long/2addr v10, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 272
    cmp-long v8, v6, v0

    if-lez v8, :cond_5

    .end local v6           #upToTime:J
    :goto_1
    sput-wide v6, Lcom/lge/floatinglauncher/BubbleTextView;->sLastTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v0           #currentTime:J
    .end local v5           #exception:Z
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mFloatingLauncher:Lcom/lge/floatinglauncher/FloatingLauncher;

    iget-object v8, v8, Lcom/lge/floatinglauncher/FloatingLauncher;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 284
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v0       #currentTime:J
    .restart local v5       #exception:Z
    .restart local v6       #upToTime:J
    :cond_5
    move-wide v6, v0

    .line 272
    goto :goto_1

    .line 275
    .end local v0           #currentTime:J
    .end local v5           #exception:Z
    .end local v6           #upToTime:J
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->makeEnableDialog()Landroid/app/AlertDialog;

    move-result-object v2

    .line 276
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 277
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 279
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :catch_1
    move-exception v4

    .line 280
    .local v4, e1:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public queryExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getPackageIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCustomIcon(I)Lcom/lge/floatinglauncher/BubbleTextView;
    .locals 0
    .parameter "resId"

    .prologue
    .line 231
    iput p1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIconId:I

    .line 232
    return-object p0
.end method

.method public setCustomLabel(I)V
    .locals 0
    .parameter "redId"

    .prologue
    .line 236
    iput p1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    .line 237
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iput-object p1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;

    const-string v3, "com.lge.app.floating.launchAsFloating"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->toggleDisableInSetting()V

    .line 212
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->queryExist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, p0}, Lcom/lge/floatinglauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setVisibility(I)V

    .line 218
    invoke-virtual {p0, p0}, Lcom/lge/floatinglauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    return-void
.end method

.method public toggleDisableInSetting()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->queryExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mDisabledInSetting:Z

    .line 100
    .end local v0           #state:I
    :cond_1
    return-void

    .line 97
    .restart local v0       #state:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateLabel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 103
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, label:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setSingleLine(Z)V

    .line 112
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setMaxLines(I)V

    .line 118
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/floatinglauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    .end local v0           #label:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/lge/floatinglauncher/BubbleTextView;->mLabelId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #label:Ljava/lang/String;
    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {p0, v3}, Lcom/lge/floatinglauncher/BubbleTextView;->setSingleLine(Z)V

    .line 115
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/lge/floatinglauncher/BubbleTextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_2
.end method
