.class abstract Landroid/widget/Editor$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected isStartHandle:Z

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field protected mStatusBarHeight:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x7d2

    const/4 v4, 0x0

    const/4 v7, -0x2

    .line 2445
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2515
    iput-boolean v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->isStartHandle:Z

    .line 2446
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    .line 2451
    const/4 v0, 0x0

    .line 2452
    .local v0, isFloatingWindow:Z
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 2453
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2454
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_0

    .line 2455
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FrameView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 2460
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/widget/Editor;->access$1200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "geehrc_shb_sg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2461
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2468
    :goto_1
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2469
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2471
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    .line 2473
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2475
    .local v3, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2477
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2478
    return-void

    .end local v3           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    move v0, v4

    .line 2455
    goto :goto_0

    .line 2463
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto :goto_1
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2503
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    .line 2504
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 2505
    .local v2, width:I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 2506
    .local v1, offset:I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2507
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2509
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2510
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2511
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2512
    return-void
.end method

.method private updatePosition(II)V
    .locals 21
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    .line 2518
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    move/from16 v18, v0

    add-int v9, p1, v18

    .line 2519
    .local v9, positionX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    move/from16 v18, v0

    add-int v10, p2, v18

    .line 2523
    .local v10, positionY:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$ActionPopupWindow;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v18, :cond_3

    .line 2524
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    move-result v10

    .line 2531
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2532
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    .line 2533
    .local v15, width:I
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    sub-int v18, v18, v15

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2534
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2537
    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$ActionPopupWindow;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2538
    const/4 v5, 0x0

    .line 2539
    .local v5, isFloatingWindow:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 2540
    .local v11, rootView:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 2541
    .local v8, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v8, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2542
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .end local v8           #params:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "FrameView"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v5, 0x1

    .line 2547
    :cond_0
    :goto_1
    if-eqz v5, :cond_7

    .line 2549
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    .line 2550
    .local v12, screenLocation:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2551
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [I

    .line 2552
    .local v4, drawingLocation:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2553
    const/16 v18, 0x0

    aget v18, v12, v18

    const/16 v19, 0x0

    aget v19, v4, v19

    sub-int v16, v18, v19

    .line 2554
    .local v16, winX:I
    const/16 v18, 0x1

    aget v18, v12, v18

    const/16 v19, 0x1

    aget v19, v4, v19

    sub-int v17, v18, v19

    .line 2557
    .local v17, winY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->isStartHandle:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 2559
    .local v6, offsetEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v19

    add-int v7, v18, v19

    .line 2561
    .local v7, offsetPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 2562
    .local v14, viewWidth:I
    const/high16 v13, 0x3f80

    .line 2563
    .local v13, sf:F
    int-to-float v0, v7

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    const v20, 0x3ea8f5c3

    mul-float v19, v19, v20

    cmpg-float v18, v18, v19

    if-gez v18, :cond_5

    const/high16 v13, 0x3e80

    .line 2566
    :goto_2
    int-to-float v0, v7

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    mul-float v19, v19, v13

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2567
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    move/from16 v18, v0

    add-int v9, p1, v18

    .line 2571
    .end local v6           #offsetEnd:I
    .end local v7           #offsetPosition:I
    .end local v13           #sf:F
    .end local v14           #viewWidth:I
    :cond_1
    add-int v9, v9, v16

    .line 2572
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    add-int v10, v10, v18

    .line 2589
    .end local v4           #drawingLocation:[I
    .end local v5           #isFloatingWindow:Z
    .end local v11           #rootView:Landroid/view/View;
    .end local v12           #screenLocation:[I
    .end local v16           #winX:I
    .end local v17           #winY:I
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2590
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Editor$ActionPopupWindow;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    sget-boolean v18, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-eqz v18, :cond_8

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v10, v15, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2599
    :goto_4
    return-void

    .line 2526
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v15           #width:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    move-result v10

    goto/16 :goto_0

    .line 2542
    .restart local v3       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v5       #isFloatingWindow:Z
    .restart local v11       #rootView:Landroid/view/View;
    .restart local v15       #width:I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2564
    .restart local v4       #drawingLocation:[I
    .restart local v6       #offsetEnd:I
    .restart local v7       #offsetPosition:I
    .restart local v12       #screenLocation:[I
    .restart local v13       #sf:F
    .restart local v14       #viewWidth:I
    .restart local v16       #winX:I
    .restart local v17       #winY:I
    :cond_5
    int-to-float v0, v7

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    const v20, 0x3f28f5c3

    mul-float v19, v19, v20

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    const/high16 v13, 0x3f40

    goto :goto_2

    .line 2565
    :cond_6
    const/high16 v13, 0x3f00

    goto :goto_2

    .line 2576
    .end local v4           #drawingLocation:[I
    .end local v6           #offsetEnd:I
    .end local v7           #offsetPosition:I
    .end local v12           #screenLocation:[I
    .end local v13           #sf:F
    .end local v14           #viewWidth:I
    .end local v16           #winX:I
    .end local v17           #winY:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->isStartHandle:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    int-to-float v0, v15

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2580
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2581
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    move/from16 v18, v0

    add-int v9, p1, v18

    goto/16 :goto_3

    .line 2593
    .end local v5           #isFloatingWindow:Z
    .end local v11           #rootView:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_4

    .line 2596
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_4
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2603
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2604
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 2490
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2491
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 2496
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2481
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2483
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2485
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2486
    .local v0, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(IIZZ)V

    .line 2487
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 2610
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_BUBBLE_POPUP:Z

    if-nez v0, :cond_4

    .line 2611
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    #calls: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2612
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2613
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2638
    :cond_2
    :goto_0
    return-void

    .line 2615
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0

    .line 2621
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    #calls: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    #calls: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2623
    :cond_5
    if-nez p4, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2624
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    goto :goto_0

    .line 2630
    :cond_8
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2631
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2632
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    goto :goto_0
.end method
