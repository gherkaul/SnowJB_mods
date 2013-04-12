.class Lcom/lge/systemui/ArrowHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "ArrowHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/ArrowHorizontalScrollView;->showLeftArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$2;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$2;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mLeftVisibleArrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$900(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 204
    return-void
.end method
