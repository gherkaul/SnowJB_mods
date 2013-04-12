.class public Lcom/lge/systemui/StatusBarLinearLayout;
.super Landroid/widget/LinearLayout;
.source "StatusBarLinearLayout.java"


# instance fields
.field private mIconSize:I

.field private mNotificationIcons:Landroid/widget/LinearLayout;

.field private mOperatorText:Landroid/widget/TextView;

.field private mStatusBarHeight:I

.field private mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/systemui/StatusBarLinearLayout;->mIconSize:I

    .line 27
    invoke-virtual {p0}, Lcom/lge/systemui/StatusBarLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusBarHeight:I

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/lge/systemui/StatusBarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 34
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/lge/systemui/StatusBarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/systemui/StatusBarLinearLayout;->mNotificationIcons:Landroid/widget/LinearLayout;

    .line 35
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/lge/systemui/StatusBarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/StatusBarLinearLayout;->mOperatorText:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 40
    const/16 v17, 0x0

    .line 41
    .local v17, nTotalWidth:I
    const/4 v13, 0x0

    .line 42
    .local v13, nOtherWidth:I
    const/4 v4, 0x0

    .line 43
    .local v4, bMoreIcon:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v15

    .line 44
    .local v15, nStatusIconsWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mOperatorText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 45
    .local v8, mOperatorTextWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/systemui/StatusBarLinearLayout;->getChildCount()I

    move-result v6

    .line 48
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 49
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lge/systemui/StatusBarLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 51
    .local v5, child:Landroid/view/View;
    if-nez v5, :cond_1

    .line 52
    const-string v20, "StatusBarLinearLayout"

    const-string v21, "child is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v5           #child:Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 56
    .restart local v5       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 48
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 61
    .local v19, w:I
    add-int v17, v17, v19

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v5, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mNotificationIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v5, v0, :cond_2

    .line 64
    add-int v13, v13, v19

    goto :goto_2

    .line 67
    .end local v5           #child:Landroid/view/View;
    .end local v19           #w:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v20, p4, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 68
    .local v14, nRealWidth:I
    sub-int v10, v14, v17

    .line 71
    .local v10, nDiff:I
    const/4 v9, 0x0

    .line 72
    .local v9, nAccLeft:I
    const/16 v18, 0x0

    .line 73
    .local v18, nWidth:I
    const/4 v12, 0x0

    .line 75
    .local v12, nNotiIconsWidth:I
    const/4 v11, 0x0

    .line 76
    .local v11, nExtraWidth:I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_0

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lge/systemui/StatusBarLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 79
    .restart local v5       #child:Landroid/view/View;
    if-nez v5, :cond_5

    .line 80
    const-string v20, "StatusBarLinearLayout"

    const-string v21, "child is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v5, v0, :cond_9

    .line 85
    move/from16 v18, v15

    .line 87
    add-int v20, v9, v18

    add-int v16, v20, v13

    .line 88
    .local v16, nSumWidth:I
    move/from16 v0, v16

    if-le v0, v14, :cond_6

    .line 89
    add-int v20, v12, v13

    sub-int v18, v14, v20

    .line 92
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mIconSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v12, v0, :cond_7

    .line 93
    add-int v9, v12, v8

    .line 96
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mIconSize:I

    move/from16 v20, v0

    rem-int v11, v18, v20

    .line 97
    sub-int v18, v18, v11

    .line 98
    add-int/2addr v9, v11

    .line 109
    .end local v16           #nSumWidth:I
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 110
    const/16 v18, 0x0

    .line 113
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v20, v20, v9

    const/16 v21, 0x0

    add-int v22, v9, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mStatusBarHeight:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 114
    add-int v9, v9, v18

    .line 115
    const/4 v11, 0x0

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 99
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mNotificationIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v5, v0, :cond_b

    .line 100
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v18, v20, v10

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mNotificationIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    if-lez v20, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mIconSize:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_a

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/systemui/StatusBarLinearLayout;->mNotificationIcons:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 104
    :cond_a
    move/from16 v12, v18

    goto :goto_4

    .line 106
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    goto :goto_4
.end method
