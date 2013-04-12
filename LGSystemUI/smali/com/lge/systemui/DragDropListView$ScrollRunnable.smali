.class Lcom/lge/systemui/DragDropListView$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragDropListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/DragDropListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/DragDropListView;

.field private y:I


# direct methods
.method public constructor <init>(Lcom/lge/systemui/DragDropListView;I)V
    .locals 0
    .parameter
    .parameter "y"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->y:I

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    iget v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->y:I

    #calls: Lcom/lge/systemui/DragDropListView;->scroll(I)Z
    invoke-static {v2, v3}, Lcom/lge/systemui/DragDropListView;->access$000(Lcom/lge/systemui/DragDropListView;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/DragDropListView;->access$200(Lcom/lge/systemui/DragDropListView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    invoke-static {v3}, Lcom/lge/systemui/DragDropListView;->access$100(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    iget v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->y:I

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemui/DragDropListView;->pointToPosition(II)I

    move-result v0

    .line 66
    .local v0, itemnum:I
    if-ltz v0, :cond_2

    .line 67
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #setter for: Lcom/lge/systemui/DragDropListView;->mDragPos:I
    invoke-static {v2, v0}, Lcom/lge/systemui/DragDropListView;->access$302(Lcom/lge/systemui/DragDropListView;I)I

    .line 77
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;
    invoke-static {v2}, Lcom/lge/systemui/DragDropListView;->access$500(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mMoveBlankListener:Lcom/lge/systemui/DragDropListView$MoveBlankListener;
    invoke-static {v2}, Lcom/lge/systemui/DragDropListView;->access$500(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$MoveBlankListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mDragPos:I
    invoke-static {v3}, Lcom/lge/systemui/DragDropListView;->access$300(Lcom/lge/systemui/DragDropListView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/systemui/DragDropListView$MoveBlankListener;->moveBlank(I)V

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    new-instance v3, Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    iget-object v4, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    iget v5, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->y:I

    invoke-direct {v3, v4, v5}, Lcom/lge/systemui/DragDropListView$ScrollRunnable;-><init>(Lcom/lge/systemui/DragDropListView;I)V

    #setter for: Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    invoke-static {v2, v3}, Lcom/lge/systemui/DragDropListView;->access$102(Lcom/lge/systemui/DragDropListView;Lcom/lge/systemui/DragDropListView$ScrollRunnable;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    .line 81
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/DragDropListView;->access$200(Lcom/lge/systemui/DragDropListView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    invoke-static {v3}, Lcom/lge/systemui/DragDropListView;->access$100(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    .end local v0           #itemnum:I
    :goto_1
    return-void

    .line 69
    .restart local v0       #itemnum:I
    :cond_2
    iget v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->y:I

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mUpperBound:I
    invoke-static {v3}, Lcom/lge/systemui/DragDropListView;->access$400(Lcom/lge/systemui/DragDropListView;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 70
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v2, v4}, Lcom/lge/systemui/DragDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v3, v1}, Lcom/lge/systemui/DragDropListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    #setter for: Lcom/lge/systemui/DragDropListView;->mDragPos:I
    invoke-static {v2, v3}, Lcom/lge/systemui/DragDropListView;->access$302(Lcom/lge/systemui/DragDropListView;I)I

    .line 73
    const-string v2, "QuickSettingsDragNDropView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScrollRunnable:run : mDragPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mDragPos:I
    invoke-static {v4}, Lcom/lge/systemui/DragDropListView;->access$300(Lcom/lge/systemui/DragDropListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v0           #itemnum:I
    .end local v1           #view:Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollHander:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/DragDropListView;->access$200(Lcom/lge/systemui/DragDropListView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/DragDropListView$ScrollRunnable;->this$0:Lcom/lge/systemui/DragDropListView;

    #getter for: Lcom/lge/systemui/DragDropListView;->mScrollRunnable:Lcom/lge/systemui/DragDropListView$ScrollRunnable;
    invoke-static {v3}, Lcom/lge/systemui/DragDropListView;->access$100(Lcom/lge/systemui/DragDropListView;)Lcom/lge/systemui/DragDropListView$ScrollRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
