.class Lcom/lge/systemui/SwipeRowLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeRowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/SwipeRowLayout;->removeView(Landroid/view/View;)V
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
    .line 261
    iput-object p1, p0, Lcom/lge/systemui/SwipeRowLayout$3;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    iput-object p2, p0, Lcom/lge/systemui/SwipeRowLayout$3;->val$childF:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout$3;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    iget-object v1, p0, Lcom/lge/systemui/SwipeRowLayout$3;->val$childF:Landroid/view/View;

    #calls: Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/lge/systemui/SwipeRowLayout;->access$001(Lcom/lge/systemui/SwipeRowLayout;Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout$3;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    iget-object v0, v0, Lcom/lge/systemui/SwipeRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lge/systemui/SwipeRowLayout$3;->val$childF:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/lge/systemui/SwipeRowLayout$3;->this$0:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->requestLayout()V

    .line 268
    return-void
.end method
