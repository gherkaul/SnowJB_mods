.class public Lcom/lge/debug/LayoutGuide;
.super Ljava/lang/Object;
.source "LayoutGuide.java"

# interfaces
.implements Lcom/lge/debug/IDebugDisplay;


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDockHeight:I

.field private mHeight:I

.field private mLongAxis:I

.field private mShortAxis:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mWidth:I

    .line 41
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mHeight:I

    .line 42
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mHeight:I

    iget v5, p0, Lcom/lge/debug/LayoutGuide;->mWidth:I

    if-le v4, v5, :cond_0

    .line 43
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mHeight:I

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mLongAxis:I

    .line 44
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mWidth:I

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mShortAxis:I

    .line 50
    :goto_0
    const/4 v2, 0x0

    .line 52
    .local v2, homeContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.lge.launcher2"

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 54
    .local v3, res:Landroid/content/res/Resources;
    const-string v4, "hotseat_bg_height"

    const-string v5, "dimen"

    const-string v6, "com.lge.launcher2"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mDockHeight:I

    .line 55
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mLongAxis:I

    sget v5, Lcom/lge/debug/DebugDisplay_Svc;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/debug/LayoutGuide;->mDockHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mCellHeight:I

    .line 56
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mShortAxis:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mCellWidth:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 46
    .end local v2           #homeContext:Landroid/content/Context;
    :cond_0
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mWidth:I

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mLongAxis:I

    .line 47
    iget v4, p0, Lcom/lge/debug/LayoutGuide;->mHeight:I

    iput v4, p0, Lcom/lge/debug/LayoutGuide;->mShortAxis:I

    goto :goto_0

    .line 57
    .restart local v2       #homeContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public display(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "context"
    .parameter "canvas"
    .parameter "rect"

    .prologue
    .line 63
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v5, paintPen1:Landroid/graphics/Paint;
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    const-string v0, "Capp"

    const-string v1, "display LayoutGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 69
    const/4 v1, 0x0

    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mCellHeight:I

    mul-int/2addr v0, v6

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mShortAxis:I

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mCellHeight:I

    mul-int/2addr v0, v6

    int-to-float v4, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    .line 72
    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mCellWidth:I

    mul-int/2addr v0, v6

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mCellWidth:I

    mul-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/lge/debug/LayoutGuide;->mLongAxis:I

    int-to-float v4, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method

.method public log()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
