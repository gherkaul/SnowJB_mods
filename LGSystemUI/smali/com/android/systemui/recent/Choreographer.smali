.class Lcom/android/systemui/recent/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mCmdBtnView:Landroid/view/View;

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mContentView:Landroid/view/View;

.field mHotkeyView:Landroid/view/View;

.field mListener:Landroid/animation/Animator$AnimatorListener;

.field mNoRecentAppsView:Landroid/view/View;

.field mPanelHeight:I

.field mRootView:Lcom/android/systemui/recent/RecentsPanelView;

.field mScrimView:Landroid/view/View;

.field mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "root"
    .parameter "scrim"
    .parameter "content"
    .parameter "noRecentApps"
    .parameter "listener"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recent/Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 64
    iput-object p1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    .line 66
    iput-object p3, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    .line 67
    iput-object p5, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 68
    iput-object p4, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "root"
    .parameter "scrim"
    .parameter "content"
    .parameter "cmdbtnview"
    .parameter "noRecentApps"
    .parameter "listener"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recent/Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 74
    iput-object p1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    .line 77
    iput-object p4, p0, Lcom/android/systemui/recent/Choreographer;->mCmdBtnView:Landroid/view/View;

    .line 78
    iput-object p6, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 79
    iput-object p5, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "root"
    .parameter "scrim"
    .parameter "content"
    .parameter "cmdbtnview"
    .parameter "noRecentApps"
    .parameter "hotkey"
    .parameter "listener"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/recent/Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 84
    iput-object p1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    .line 86
    iput-object p3, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    .line 87
    iput-object p4, p0, Lcom/android/systemui/recent/Choreographer;->mCmdBtnView:Landroid/view/View;

    .line 88
    iput-object p7, p0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    .line 89
    iput-object p5, p0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    .line 90
    iput-object p6, p0, Lcom/android/systemui/recent/Choreographer;->mHotkeyView:Landroid/view/View;

    .line 91
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 22
    .parameter "appearing"

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationY()F

    move-result v16

    .line 100
    .local v16, y:F
    if-eqz p1, :cond_7

    .line 103
    const/high16 v17, 0x4348

    cmpg-float v17, v16, v17

    if-gez v17, :cond_6

    move/from16 v15, v16

    .line 104
    .local v15, start:F
    :goto_0
    const/4 v7, 0x0

    .line 110
    .local v7, end:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v17, v0

    const-string v18, "translationY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 112
    .local v12, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_8

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x4020

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    if-eqz p1, :cond_9

    const-wide/16 v17, 0x88

    :goto_3
    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAlpha()F

    move-result v21

    aput v21, v20, v17

    const/16 v21, 0x1

    if-eqz p1, :cond_a

    const/high16 v17, 0x3f80

    :goto_4
    aput v17, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 119
    .local v8, fadeAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_b

    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    if-eqz p1, :cond_c

    const-wide/16 v17, 0x88

    :goto_6
    move-wide/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 124
    const/4 v11, 0x0

    .line 125
    .local v11, noRecentAppsFadeAnim:Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mNoRecentAppsView:Landroid/view/View;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAlpha()F

    move-result v21

    aput v21, v20, v17

    const/16 v21, 0x1

    if-eqz p1, :cond_d

    const/high16 v17, 0x3f80

    :goto_7
    aput v17, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 128
    if-eqz p1, :cond_e

    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    if-eqz p1, :cond_f

    const-wide/16 v17, 0x88

    :goto_9
    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 134
    :cond_0
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 138
    .local v5, builder:Landroid/animation/AnimatorSet$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mCmdBtnView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mCmdBtnView:Landroid/view/View;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAlpha()F

    move-result v21

    aput v21, v20, v17

    const/16 v21, 0x1

    if-eqz p1, :cond_10

    const/high16 v17, 0x3f80

    :goto_a
    aput v17, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 141
    .local v6, cmdbtnAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_11

    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_b
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    if-eqz p1, :cond_12

    const-wide/16 v17, 0x88

    :goto_c
    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 148
    .end local v6           #cmdbtnAnim:Landroid/animation/Animator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mHotkeyView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mHotkeyView:Landroid/view/View;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getAlpha()F

    move-result v21

    aput v21, v20, v17

    const/16 v21, 0x1

    if-eqz p1, :cond_13

    const/high16 v17, 0x3f80

    :goto_d
    aput v17, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 151
    .local v9, hotkeyAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_14

    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_e
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    if-eqz p1, :cond_15

    const-wide/16 v17, 0x88

    :goto_f
    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 155
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    .end local v9           #hotkeyAnim:Landroid/animation/Animator;
    :cond_2
    if-eqz v11, :cond_3

    .line 160
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    :cond_3
    if-eqz p1, :cond_19

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 165
    .local v2, background:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 166
    const-string v18, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz p1, :cond_16

    const/16 v17, 0x0

    :goto_10
    aput v17, v19, v20

    const/16 v20, 0x1

    if-eqz p1, :cond_17

    const/16 v17, 0xff

    :goto_11
    aput v17, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 168
    .local v3, bgAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_18

    const-wide/16 v17, 0x190

    :goto_12
    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 169
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 186
    .end local v2           #background:Landroid/graphics/drawable/Drawable;
    .end local v3           #bgAnim:Landroid/animation/Animator;
    :cond_4
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    :cond_5
    return-void

    .line 103
    .end local v5           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v7           #end:F
    .end local v8           #fadeAnim:Landroid/animation/Animator;
    .end local v11           #noRecentAppsFadeAnim:Landroid/animation/Animator;
    .end local v12           #posAnim:Landroid/animation/Animator;
    .end local v15           #start:F
    :cond_6
    const/high16 v15, 0x4348

    goto/16 :goto_0

    .line 106
    :cond_7
    move/from16 v15, v16

    .line 107
    .restart local v15       #start:F
    move/from16 v7, v16

    .restart local v7       #end:F
    goto/16 :goto_1

    .line 112
    .restart local v12       #posAnim:Landroid/animation/Animator;
    :cond_8
    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x4020

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/16 :goto_2

    .line 115
    :cond_9
    const-wide/16 v17, 0xe6

    goto/16 :goto_3

    .line 117
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 119
    .restart local v8       #fadeAnim:Landroid/animation/Animator;
    :cond_b
    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x4020

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/16 :goto_5

    .line 122
    :cond_c
    const-wide/16 v17, 0xe6

    goto/16 :goto_6

    .line 126
    .restart local v11       #noRecentAppsFadeAnim:Landroid/animation/Animator;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 128
    :cond_e
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_8

    .line 131
    :cond_f
    const-wide/16 v17, 0xe6

    goto/16 :goto_9

    .line 139
    .restart local v5       #builder:Landroid/animation/AnimatorSet$Builder;
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 141
    .restart local v6       #cmdbtnAnim:Landroid/animation/Animator;
    :cond_11
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_b

    .line 144
    :cond_12
    const-wide/16 v17, 0xe6

    goto/16 :goto_c

    .line 149
    .end local v6           #cmdbtnAnim:Landroid/animation/Animator;
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_d

    .line 151
    .restart local v9       #hotkeyAnim:Landroid/animation/Animator;
    :cond_14
    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto/16 :goto_e

    .line 154
    :cond_15
    const-wide/16 v17, 0xe6

    goto/16 :goto_f

    .line 166
    .end local v9           #hotkeyAnim:Landroid/animation/Animator;
    .restart local v2       #background:Landroid/graphics/drawable/Drawable;
    :cond_16
    const/16 v17, 0xff

    goto/16 :goto_10

    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_11

    .line 168
    .restart local v3       #bgAnim:Landroid/animation/Animator;
    :cond_18
    const-wide/16 v17, 0xe6

    goto/16 :goto_12

    .line 172
    .end local v2           #background:Landroid/graphics/drawable/Drawable;
    .end local v3           #bgAnim:Landroid/animation/Animator;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 173
    .local v14, res:Landroid/content/res/Resources;
    const/high16 v17, 0x7f08

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 174
    .local v10, isTablet:Z
    if-nez v10, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v17, v0

    const v18, 0x7f0c00c3

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 177
    .local v13, recentsTransitionBackground:Landroid/view/View;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v17, -0x100

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 179
    .local v4, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 181
    .restart local v3       #bgAnim:Landroid/animation/Animator;
    const-wide/16 v17, 0xe6

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 182
    new-instance v17, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v18, 0x3f80

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_13

    .line 180
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method jumpTo(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_2

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    const v2, 0x7f0c00c3

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, recentsTransitionBackground:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->requestLayout()V

    .line 218
    return-void

    .line 210
    .end local v0           #recentsTransitionBackground:Landroid/view/View;
    :cond_1
    iget v1, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    int-to-float v1, v1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 226
    const-string v0, "RecentsPanelView"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 229
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "RecentsPanelView"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mRootView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->hideWindow()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 238
    iput-object v2, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 239
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 245
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 3
    .parameter "h"

    .prologue
    .line 221
    const-string v0, "RecentsPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panelHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iput p1, p0, Lcom/android/systemui/recent/Choreographer;->mPanelHeight:I

    .line 223
    return-void
.end method

.method startAnimation(Z)V
    .locals 3
    .parameter "appearing"

    .prologue
    .line 193
    const-string v0, "RecentsPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation(appearing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/Choreographer;->createAnimation(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/recent/Choreographer;->mVisible:Z

    .line 207
    return-void
.end method
