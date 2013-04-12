.class Lcom/lge/systemui/ArrowHorizontalScrollView$4;
.super Ljava/lang/Object;
.source "ArrowHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/ArrowHorizontalScrollView;->showRightArrow()V
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
    .line 231
    iput-object p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$4;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$4;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mRightVisibleArrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$1000(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 236
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 238
    return-void
.end method
