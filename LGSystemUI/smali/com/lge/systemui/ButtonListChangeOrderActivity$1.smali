.class Lcom/lge/systemui/ButtonListChangeOrderActivity$1;
.super Ljava/lang/Object;
.source "ButtonListChangeOrderActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/ButtonListChangeOrderActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;


# direct methods
.method constructor <init>(Lcom/lge/systemui/ButtonListChangeOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$1;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 120
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$1;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;
    invoke-static {v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$000(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/DragDropListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$1;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;
    invoke-static {v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$000(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/DragDropListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lge/systemui/DragDropListView;->setScrollState(I)V

    .line 117
    :cond_0
    return-void
.end method
