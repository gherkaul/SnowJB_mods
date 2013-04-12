.class public Lcom/lge/systemui/DragDropListView;
.super Landroid/widget/ListView;
.source "DragDropListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/DragDropListView$MoveBlankListener;,
        Lcom/lge/systemui/DragDropListView$DoExpansionListener;,
        Lcom/lge/systemui/DragDropListView$DropListener;,
        Lcom/lge/systemui/DragDropListView$DragListener;,
        Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDDViewId:I

.field private mDiff:I

.field private mDoExpansionListener:Lcom/lge/systemui/DragDropListView$DoExpansionListener;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageX:I

.field private mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

.field private mScrollHander:Landroid/os/Handler;

.field private mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

.field private mScrollState:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/DragDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 49
    iput v1, p0, Lcom/lge/systemui/DragDropListView;->mScrollState:I

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;

    .line 52
    iput v1, p0, Lcom/lge/systemui/DragDropListView;->mDiff:I

    .line 90
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lge/systemui/DragDropListView;->mTouchSlop:I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/DragDropListView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/systemui/DragDropListView;->scroll(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/systemui/DragDropListView;Lcom/lge/systemui/DragDropListView$ScrollRunnable;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/systemui/DragDropListView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/systemui/DragDropListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/systemui/DragDropListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/systemui/DragDropListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$MoveBlankListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    return-object v0
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 266
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 267
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    .line 270
    :cond_0
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 271
    iget v0, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lge/systemui/DragDropListView;->mLowerBound:I

    .line 273
    :cond_1
    return-void
.end method

.method private dragView(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lge/systemui/DragDropListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/lge/systemui/DragDropListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/lge/systemui/DragDropListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 384
    .local v0, bottonOffset:I
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v1, v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    return-void
.end method

.method private scroll(I)Z
    .locals 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, speed:I
    invoke-direct {p0, p1}, Lcom/lge/systemui/DragDropListView;->adjustScrollBounds(I)V

    .line 279
    iget v4, p0, Lcom/lge/systemui/DragDropListView;->mLowerBound:I

    if-le p1, v4, :cond_4

    .line 280
    iget v4, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    iget v5, p0, Lcom/lge/systemui/DragDropListView;->mLowerBound:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_2

    const/16 v1, 0x1e

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    .line 283
    iget v4, p0, Lcom/lge/systemui/DragDropListView;->mDragPoint:I

    sub-int v0, p1, v4

    .line 284
    .local v0, adjustedy:I
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 287
    const/4 v1, 0x0

    .line 302
    .end local v0           #adjustedy:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 303
    iget v3, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_6

    .line 304
    const/16 v3, 0x15e

    invoke-virtual {p0, v1, v3}, Lcom/lge/systemui/DragDropListView;->smoothScrollBy(II)V

    .line 308
    :goto_2
    const/4 v3, 0x1

    .line 310
    :cond_1
    return v3

    .line 280
    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    .line 288
    .restart local v0       #adjustedy:I
    .restart local v2       #view:Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/lit8 v5, v0, 0xa

    if-ge v4, v5, :cond_0

    .line 289
    const/4 v1, 0x4

    goto :goto_1

    .line 293
    .end local v0           #adjustedy:I
    .end local v2           #view:Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    if-ge p1, v4, :cond_0

    .line 294
    iget v4, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_5

    const/16 v1, -0x1e

    .line 295
    :goto_3
    invoke-virtual {p0, v3}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 297
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getPaddingTop()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 298
    const/4 v1, 0x0

    goto :goto_1

    .line 294
    .end local v2           #view:Landroid/view/View;
    :cond_5
    const/4 v1, -0x4

    goto :goto_3

    .line 306
    :cond_6
    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Lcom/lge/systemui/DragDropListView;->smoothScrollBy(II)V

    goto :goto_2
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 351
    invoke-direct {p0}, Lcom/lge/systemui/DragDropListView;->stopDragging()V

    .line 353
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 354
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 355
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lge/systemui/DragDropListView;->mDragImageX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 356
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/lge/systemui/DragDropListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/lge/systemui/DragDropListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x428aa8f6

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 365
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 366
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 368
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 369
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, v:Landroid/widget/ImageView;
    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 375
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowManager:Landroid/view/WindowManager;

    .line 376
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/lge/systemui/DragDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iput-object v0, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    .line 379
    .end local v0           #v:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 394
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 395
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iput-object v3, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    .line 399
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/lge/systemui/DragDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    iput-object v3, p0, Lcom/lge/systemui/DragDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 403
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 8
    .parameter "deletion"

    .prologue
    const/4 v7, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 321
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_2

    .line 322
    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getFirstVisiblePosition()I

    move-result v2

    .line 324
    .local v2, position:I
    const/4 v5, 0x0

    .line 325
    .local v5, y:I
    invoke-virtual {p0, v7}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 327
    .local v3, temp:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/systemui/DragDropListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    invoke-virtual {p0, v2, v5}, Lcom/lge/systemui/DragDropListView;->setSelectionFromTop(II)V

    .line 334
    .end local v2           #position:I
    .end local v3           #temp:Landroid/view/View;
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->layoutChildren()V

    .line 335
    invoke-virtual {p0, v0}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 337
    if-nez v4, :cond_2

    .line 339
    return-void

    .line 343
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 344
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightNormal:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 96
    iget-object v11, p0, Lcom/lge/systemui/DragDropListView;->mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/lge/systemui/DragDropListView;->mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

    if-eqz v11, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 167
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    :goto_1
    return v11

    .line 99
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    .line 100
    .local v9, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    .line 101
    .local v10, y:I
    invoke-virtual {p0, v9, v10}, Lcom/lge/systemui/DragDropListView;->pointToPosition(II)I

    move-result v4

    .line 103
    .local v4, itemnum:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p0, v11}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 108
    .local v3, item:Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightNormal:I

    .line 112
    iget v11, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightNormal:I

    mul-int/lit8 v11, v11, 0x2

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightExpanded:I

    .line 114
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    sub-int v11, v10, v11

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mDragPoint:I

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v11, v10

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mCoordOffset:I

    .line 116
    iget v11, p0, Lcom/lge/systemui/DragDropListView;->mDDViewId:I

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_2

    .line 119
    move-object v1, v3

    .line 121
    :cond_2
    iget-object v6, p0, Lcom/lge/systemui/DragDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 122
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 123
    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/lge/systemui/DragDropListView;->mDragPoint:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mDiff:I

    .line 126
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightNormal:I

    add-int/2addr v11, v12

    if-ge v9, v11, :cond_5

    const/4 v2, 0x1

    .line 127
    .local v2, isDragDrop:Z
    :goto_2
    if-eqz v2, :cond_9

    .line 129
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 131
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 134
    .local v7, src:Landroid/graphics/Bitmap;
    :try_start_0
    sget-boolean v11, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_PRADAUI:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 135
    const v11, 0x7f0c0010

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 136
    .local v5, name:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0203de

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    if-eqz v7, :cond_3

    .line 138
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v10}, Lcom/lge/systemui/DragDropListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 141
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0203df

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v5           #name:Landroid/widget/TextView;
    :cond_4
    :goto_3
    iput v4, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    .line 153
    iget v11, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mFirstDragPos:I

    .line 154
    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    .line 155
    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mTouchSlop:I

    .line 156
    .local v8, touchSlop:I
    sub-int v11, v10, v8

    iget v12, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    .line 157
    add-int v11, v10, v8

    iget v12, p0, Lcom/lge/systemui/DragDropListView;->mHeight:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/lge/systemui/DragDropListView;->mLowerBound:I

    .line 158
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 126
    .end local v2           #isDragDrop:Z
    .end local v7           #src:Landroid/graphics/Bitmap;
    .end local v8           #touchSlop:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v11

    iget v12, p0, Lcom/lge/systemui/DragDropListView;->mItemHeightNormal:I

    sub-int/2addr v11, v12

    if-le v9, v11, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 143
    .restart local v2       #isDragDrop:Z
    .restart local v7       #src:Landroid/graphics/Bitmap;
    :cond_8
    if-eqz v7, :cond_4

    .line 144
    :try_start_1
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v10}, Lcom/lge/systemui/DragDropListView;->startDragging(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 148
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    goto :goto_3

    .line 161
    .end local v7           #src:Landroid/graphics/Bitmap;
    :cond_9
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    .line 162
    invoke-direct {p0}, Lcom/lge/systemui/DragDropListView;->stopDragging()V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 172
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

    if-eqz v7, :cond_a

    :cond_0
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v7, :cond_a

    .line 173
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    if-eqz v7, :cond_1

    .line 174
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;

    iget-object v8, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 243
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v6

    .line 183
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 184
    .local v2, r:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 185
    invoke-direct {p0}, Lcom/lge/systemui/DragDropListView;->stopDragging()V

    .line 187
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    if-ltz v7, :cond_3

    iget v7, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/lge/systemui/DragDropListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 188
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mFirstDragPos:I

    iget v9, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lcom/lge/systemui/DragDropListView$DropListener;->drop(II)V

    .line 191
    :cond_3
    invoke-direct {p0, v6}, Lcom/lge/systemui/DragDropListView;->unExpandViews(Z)V

    goto :goto_0

    .line 196
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 197
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 199
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lcom/lge/systemui/DragDropListView;->dragView(II)V

    .line 201
    iget v7, p0, Lcom/lge/systemui/DragDropListView;->mDiff:I

    add-int/2addr v7, v5

    invoke-virtual {p0, v9, v7}, Lcom/lge/systemui/DragDropListView;->pointToPosition(II)I

    move-result v1

    .line 203
    .local v1, itemnum:I
    if-ltz v1, :cond_8

    .line 204
    if-eqz v0, :cond_4

    iget v7, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    if-eq v1, v7, :cond_6

    .line 205
    :cond_4
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

    if-eqz v7, :cond_5

    .line 206
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-interface {v7, v8, v1}, Lcom/lge/systemui/DragDropListView$DragListener;->drag(II)V

    .line 209
    :cond_5
    iput v1, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    .line 210
    if-nez v0, :cond_6

    .line 211
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDoExpansionListener:Lcom/lge/systemui/DragDropListView$DoExpansionListener;

    if-eqz v7, :cond_6

    .line 212
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mDoExpansionListener:Lcom/lge/systemui/DragDropListView$DoExpansionListener;

    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mFirstDragPos:I

    invoke-interface {v7, v8}, Lcom/lge/systemui/DragDropListView$DoExpansionListener;->doExpansion(I)V

    .line 217
    :cond_6
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    if-eqz v7, :cond_7

    .line 218
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-interface {v7, v8}, Lcom/lge/systemui/DragDropListView$MoveBlankListener;->moveBlank(I)V

    .line 233
    :cond_7
    :goto_1
    invoke-direct {p0, v5}, Lcom/lge/systemui/DragDropListView;->scroll(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 234
    new-instance v7, Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    invoke-direct {v7, p0, v5}, Lcom/lge/systemui/DragDropListView$ScrollRunnable;-><init>(Lcom/lge/systemui/DragDropListView;I)V

    iput-object v7, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    .line 235
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;

    iget-object v8, p0, Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    const-wide/16 v9, 0x1e

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :cond_8
    iget v7, p0, Lcom/lge/systemui/DragDropListView;->mUpperBound:I

    if-ge v5, v7, :cond_9

    .line 222
    invoke-virtual {p0, v9}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 223
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_9

    .line 224
    invoke-virtual {p0, v3}, Lcom/lge/systemui/DragDropListView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    .line 225
    const-string v7, "QuickSettingsDragNDropView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ScrollRunnable:run : mDragPos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v3           #view:Landroid/view/View;
    :cond_9
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    if-eqz v7, :cond_7

    .line 229
    iget-object v7, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    iget v8, p0, Lcom/lge/systemui/DragDropListView;->mDragPos:I

    invoke-interface {v7, v8}, Lcom/lge/systemui/DragDropListView$MoveBlankListener;->moveBlank(I)V

    goto :goto_1

    .line 243
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoExpansionListener(Lcom/lge/systemui/DragDropListView$DoExpansionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mDoExpansionListener:Lcom/lge/systemui/DragDropListView$DoExpansionListener;

    .line 423
    return-void
.end method

.method public setDragListener(Lcom/lge/systemui/DragDropListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mDragListener:Lcom/lge/systemui/DragDropListView$DragListener;

    .line 407
    return-void
.end method

.method public setDropListener(Lcom/lge/systemui/DragDropListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mDropListener:Lcom/lge/systemui/DragDropListView$DropListener;

    .line 411
    return-void
.end method

.method public setMoveBlankListener(Lcom/lge/systemui/DragDropListView$MoveBlankListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    .line 427
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 314
    iput p1, p0, Lcom/lge/systemui/DragDropListView;->mScrollState:I

    .line 315
    return-void
.end method
