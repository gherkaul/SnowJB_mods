.class public Lcom/lge/systemui/ArrowHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ArrowHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

.field private mLeftVisible:Z

.field private mLeftVisibleArrowView:Landroid/widget/ImageView;

.field private mOldLeftVisible:Z

.field private mOldRightVisible:Z

.field private mRightVisible:Z

.field private mRightVisibleArrowView:Landroid/widget/ImageView;

.field private mScroller2:Landroid/widget/OverScroller;

.field private mSkipCheckArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    .line 29
    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    .line 30
    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z

    .line 31
    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z

    .line 83
    iput-object p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;Lcom/lge/systemui/ArrowHorizontalScrollView$1;)V

    iput-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    .line 85
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    .line 86
    invoke-virtual {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->initScrollPos()V

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/systemui/ArrowHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->drawArrow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemui/ArrowHorizontalScrollView;)Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/systemui/ArrowHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/systemui/ArrowHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->hideLeftArrow()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/systemui/ArrowHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/systemui/ArrowHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->hideRightArrow()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private drawArrow()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 141
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 142
    .local v0, scrollRange:I
    if-nez v0, :cond_2

    .line 144
    iput-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    .line 145
    iput-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    .line 161
    :goto_0
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z

    iget-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    if-eq v1, v2, :cond_0

    .line 162
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    if-ne v1, v3, :cond_5

    .line 163
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->showLeftArrow()V

    .line 167
    :goto_1
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    iput-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z

    .line 169
    :cond_0
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z

    iget-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    if-eq v1, v2, :cond_1

    .line 170
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    if-ne v1, v3, :cond_6

    .line 171
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->showRightArrow()V

    .line 175
    :goto_2
    iget-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    iput-boolean v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z

    .line 177
    :cond_1
    return-void

    .line 147
    :cond_2
    iget v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScrollX:I

    if-nez v1, :cond_3

    .line 149
    iput-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    .line 150
    iput-boolean v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    goto :goto_0

    .line 151
    :cond_3
    iget v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScrollX:I

    if-ne v1, v0, :cond_4

    .line 153
    iput-boolean v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    .line 154
    iput-boolean v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    goto :goto_0

    .line 157
    :cond_4
    iput-boolean v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisible:Z

    .line 158
    iput-boolean v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisible:Z

    goto :goto_0

    .line 165
    :cond_5
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->hideLeftArrow()V

    goto :goto_1

    .line 173
    :cond_6
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->hideRightArrow()V

    goto :goto_2
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 250
    invoke-virtual {p0, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 254
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private hideLeftArrow()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/lge/systemui/ArrowHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/lge/systemui/ArrowHorizontalScrollView$1;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 190
    .local v0, arrowListener:Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    const v3, 0x7f040015

    invoke-direct {p0, v3, v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ArrowHorizontalScrollView"

    const-string v3, "Can\'t start animation. Because Fail to load it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideRightArrow()V
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lcom/lge/systemui/ArrowHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lcom/lge/systemui/ArrowHorizontalScrollView$3;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 224
    .local v0, arrowListener:Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    const v3, 0x7f040015

    invoke-direct {p0, v3, v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ArrowHorizontalScrollView"

    const-string v3, "Can\'t start animation. Because Fail to load it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 262
    :cond_0
    return-object v0
.end method

.method private showLeftArrow()V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Lcom/lge/systemui/ArrowHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/lge/systemui/ArrowHorizontalScrollView$2;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 207
    .local v0, arrowListener:Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    const v3, 0x7f040014

    invoke-direct {p0, v3, v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ArrowHorizontalScrollView"

    const-string v3, "Can\'t start animation. Because Fail to load it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRightArrow()V
    .locals 4

    .prologue
    .line 231
    new-instance v0, Lcom/lge/systemui/ArrowHorizontalScrollView$4;

    invoke-direct {v0, p0}, Lcom/lge/systemui/ArrowHorizontalScrollView$4;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 241
    .local v0, arrowListener:Landroid/view/animation/Animation$AnimationListener;
    :try_start_0
    iget-object v2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    const v3, 0x7f040014

    invoke-direct {p0, v3, v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ArrowHorizontalScrollView"

    const-string v3, "Can\'t start animation. Because Fail to load it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->drawArrow()V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public enableDrawArrow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v3}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 137
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    return-void
.end method

.method public initScrollPos()V
    .locals 2

    .prologue
    .line 90
    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/systemui/ArrowHorizontalScrollView;->scrollTo(II)V

    .line 91
    return-void
.end method

.method public moveScroll()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 95
    .local v10, res:Landroid/content/res/Resources;
    const v0, 0x7f0a0008

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 96
    .local v3, velocityX:I
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    const/16 v1, 0x190

    invoke-direct {p0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getScrollRange()I

    move-result v6

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 97
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 98
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v9}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    const-string v0, "ArrowHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveScroll() : velocityX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z

    .line 118
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    invoke-virtual {v0, v3}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    const-wide/16 v1, 0x708

    invoke-virtual {v0, v3, v1, v2}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 121
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerImageView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "leftArrowView"
    .parameter "rightArrowView"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;

    .line 104
    iput-object p2, p0, Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;

    .line 105
    return-void
.end method
