.class Lcom/lge/systemui/SwipeRowLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeRowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/SwipeRowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/SwipeRowLayout;

.field final synthetic val$childF:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/systemui/SwipeRowLayout;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout$2;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    iput-object p2, p0, Lcom/lge/systemui/SwipeRowLayout$2;->val$childF:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout$2;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    iget-object v0, v0, Lcom/lge/systemui/SwipeRowLayout;->mAppearingViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lge/systemui/SwipeRowLayout$2;->val$childF:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout$2;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    .line 202
    return-void
.end method
