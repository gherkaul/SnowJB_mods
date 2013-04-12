.class public Lcom/lge/systemui/SwipeRowLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRowLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mFMRadio:Lcom/lge/systemui/FMRadio;

.field mHeight:I

.field private mMusicControl:Lcom/lge/systemui/MusicControl;

.field mNumRows:I

.field mRemoveViews:Z

.field mRowHeight:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/systemui/SwipeRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v4, p0, Lcom/lge/systemui/SwipeRowLayout;->mAnimateBounds:Z

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 53
    iput v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mNumRows:I

    .line 54
    iput v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    .line 55
    iput v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mHeight:I

    .line 57
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    .line 64
    iput-boolean v4, p0, Lcom/lge/systemui/SwipeRowLayout;->mRemoveViews:Z

    .line 77
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/systemui/SwipeRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 99
    .local v1, pagingTouchSlop:F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 100
    return-void
.end method

.method static synthetic access$001(Lcom/lge/systemui/SwipeRowLayout;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 191
    move-object v1, p1

    .line 192
    .local v1, childF:Landroid/view/View;
    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    .line 194
    iget-boolean v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mAnimateBounds:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 195
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    .local v0, alphaFade:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    new-instance v2, Lcom/lge/systemui/SwipeRowLayout$2;

    invoke-direct {v2, p0, v1}, Lcom/lge/systemui/SwipeRowLayout$2;-><init>(Lcom/lge/systemui/SwipeRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 207
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    .line 211
    .end local v0           #alphaFade:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 195
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 120
    const v1, 0x7f0c0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, veto:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7
    .parameter "ev"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v1

    .line 155
    .local v1, count:I
    const/4 v4, 0x0

    .line 156
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 157
    .local v3, touchY:I
    const/4 v0, 0x0

    .line 159
    .local v0, childIdx:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 160
    invoke-virtual {p0, v0}, Lcom/lge/systemui/SwipeRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, slidingChild:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget v5, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    add-int/2addr v4, v5

    .line 166
    if-ge v3, v4, :cond_0

    .line 170
    .end local v2           #slidingChild:Landroid/view/View;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "v"

    .prologue
    .line 174
    return-object p1
.end method

.method public getForcedHeight()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/lge/systemui/SwipeRowLayout;->mHeight:I

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/systemui/SwipeRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 125
    const v2, 0x7f0c0038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, veto:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mRemoveViews:Z

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 128
    invoke-virtual {p0, p1}, Lcom/lge/systemui/SwipeRowLayout;->removeView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    .line 130
    const v2, 0x7f0c0037

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "musiccontrol"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mMusicControl:Lcom/lge/systemui/MusicControl;

    iget-object v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lge/systemui/MusicControl;->dismiss(Landroid/content/Context;)V

    .line 133
    const-string v2, "SwipeRowLayout"

    const-string v3, "dismiss() mMusicControl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0       #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "fmradio"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mFMRadio:Lcom/lge/systemui/FMRadio;

    iget-object v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lge/systemui/FMRadio;->dismiss(Landroid/content/Context;)V

    .line 136
    const-string v2, "SwipeRowLayout"

    const-string v3, "dismiss() mFMRadio"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    const-string v2, "SwipeRowLayout"

    const-string v3, "no View"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 181
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 182
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 183
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/lge/systemui/SwipeRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 184
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 150
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 299
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/SwipeRowLayout;->setWillNotDraw(Z)V

    .line 285
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 363
    sub-int v6, p4, p2

    .line 364
    .local v6, width:I
    sub-int v2, p5, p3

    .line 368
    .local v2, height:I
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v1

    .line 369
    .local v1, count:I
    const/4 v7, 0x0

    .line 370
    .local v7, y:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 371
    invoke-virtual {p0, v3}, Lcom/lge/systemui/SwipeRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 370
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_1
    const/high16 v4, 0x3f80

    .line 378
    .local v4, progress:F
    iget-object v8, p0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 379
    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    .line 383
    :cond_2
    :goto_2
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-lez v8, :cond_3

    .line 387
    const/high16 v4, 0x3f80

    .line 389
    :cond_3
    iget v8, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 395
    .local v5, thisRowHeight:I
    const/4 v8, 0x0

    add-int v9, v7, v5

    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/view/View;->layout(IIII)V

    .line 396
    add-int/2addr v7, v5

    goto :goto_1

    .line 380
    .end local v5           #thisRowHeight:I
    :cond_4
    iget-object v8, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 381
    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    goto :goto_2

    .line 403
    .end local v0           #child:Landroid/view/View;
    .end local v4           #progress:F
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v10, 0x8

    .line 303
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v4

    .line 306
    .local v4, count:I
    const/4 v6, 0x0

    .line 307
    .local v6, numRows:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 308
    invoke-virtual {p0, v5}, Lcom/lge/systemui/SwipeRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 307
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v7, p0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 320
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v7, p0, Lcom/lge/systemui/SwipeRowLayout;->mNumRows:I

    if-eq v6, v7, :cond_3

    .line 323
    iget v7, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    mul-int v3, v6, v7

    .line 329
    .local v3, computedHeight:I
    iput v6, p0, Lcom/lge/systemui/SwipeRowLayout;->mNumRows:I

    .line 331
    iget-boolean v7, p0, Lcom/lge/systemui/SwipeRowLayout;->mAnimateBounds:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 332
    const-string v7, "forcedHeight"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 341
    .end local v3           #computedHeight:I
    :cond_3
    :goto_2
    move v2, p1

    .line 342
    .local v2, childWidthMS:I
    iget v7, p0, Lcom/lge/systemui/SwipeRowLayout;->mRowHeight:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 345
    .local v1, childHeightMS:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_7

    .line 346
    invoke-virtual {p0, v5}, Lcom/lge/systemui/SwipeRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 345
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 336
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMS:I
    .end local v2           #childWidthMS:I
    .restart local v3       #computedHeight:I
    :cond_5
    invoke-virtual {p0, v3}, Lcom/lge/systemui/SwipeRowLayout;->setForcedHeight(I)V

    goto :goto_2

    .line 352
    .end local v3           #computedHeight:I
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childHeightMS:I
    .restart local v2       #childWidthMS:I
    :cond_6
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 356
    .end local v0           #child:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Lcom/lge/systemui/SwipeRowLayout;->getDefaultSize(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->getForcedHeight()I

    move-result v8

    invoke-static {v8, p2}, Lcom/lge/systemui/SwipeRowLayout;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/lge/systemui/SwipeRowLayout;->setMeasuredDimension(II)V

    .line 359
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 9
    .parameter "child"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 234
    iget-boolean v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mRemoveViews:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mAnimateBounds:Z

    if-eqz v3, :cond_5

    .line 241
    iget-object v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 250
    .local v2, currentAlpha:F
    float-to-double v3, v2

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 251
    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 259
    .local v0, anim:Landroid/animation/ValueAnimator;
    :goto_1
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 260
    move-object v1, p1

    .line 261
    .local v1, childF:Landroid/view/View;
    new-instance v3, Lcom/lge/systemui/SwipeRowLayout$3;

    invoke-direct {v3, p0, v1}, Lcom/lge/systemui/SwipeRowLayout$3;-><init>(Lcom/lge/systemui/SwipeRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 272
    iget-object v3, p0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    goto :goto_0

    .line 253
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v1           #childF:Landroid/view/View;
    :cond_3
    cmpl-float v3, v2, v7

    if-lez v3, :cond_4

    .line 255
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 257
    :cond_4
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0       #anim:Landroid/animation/ValueAnimator;
    goto :goto_1

    .line 276
    .end local v0           #anim:Landroid/animation/ValueAnimator;
    .end local v2           #currentAlpha:F
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 257
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setFMRadio(Lcom/lge/systemui/FMRadio;)V
    .locals 0
    .parameter "fr"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout;->mFMRadio:Lcom/lge/systemui/FMRadio;

    .line 423
    return-void
.end method

.method public setForcedHeight(I)V
    .locals 1
    .parameter "h"

    .prologue
    .line 407
    iget v0, p0, Lcom/lge/systemui/SwipeRowLayout;->mHeight:I

    if-eq p1, v0, :cond_0

    .line 408
    iput p1, p0, Lcom/lge/systemui/SwipeRowLayout;->mHeight:I

    .line 409
    invoke-virtual {p0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    .line 411
    :cond_0
    return-void
.end method

.method public setMusicControl(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter "mc"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout;->mMusicControl:Lcom/lge/systemui/MusicControl;

    .line 419
    return-void
.end method
