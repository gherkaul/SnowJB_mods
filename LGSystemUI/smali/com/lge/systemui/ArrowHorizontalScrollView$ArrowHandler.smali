.class Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
.super Landroid/os/Handler;
.source "ArrowHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ArrowHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;


# direct methods
.method private constructor <init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemui/ArrowHorizontalScrollView;Lcom/lge/systemui/ArrowHorizontalScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;-><init>(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "m"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #setter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v3, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$002(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z

    .line 45
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #calls: Lcom/lge/systemui/ArrowHorizontalScrollView;->drawArrow()V
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$100(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 46
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$200(Lcom/lge/systemui/ArrowHorizontalScrollView;)Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 47
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$200(Lcom/lge/systemui/ArrowHorizontalScrollView;)Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v6, v4, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #setter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v3, v4}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$002(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z

    .line 51
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$300(Lcom/lge/systemui/ArrowHorizontalScrollView;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 52
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #calls: Lcom/lge/systemui/ArrowHorizontalScrollView;->hideLeftArrow()V
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$400(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 53
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #setter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v3, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$302(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$500(Lcom/lge/systemui/ArrowHorizontalScrollView;)Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 56
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #calls: Lcom/lge/systemui/ArrowHorizontalScrollView;->hideRightArrow()V
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$600(Lcom/lge/systemui/ArrowHorizontalScrollView;)V

    .line 57
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #setter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v3, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$502(Lcom/lge/systemui/ArrowHorizontalScrollView;Z)Z

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$700(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-virtual {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 64
    .local v0, oldX:I
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-virtual {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->getScrollY()I

    move-result v1

    .line 66
    .local v1, oldY:I
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$700(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 67
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    iget-object v4, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v4}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$700(Lcom/lge/systemui/ArrowHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/lge/systemui/ArrowHorizontalScrollView;->scrollTo(II)V

    .line 68
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    invoke-virtual {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->invalidate()V

    .line 69
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$200(Lcom/lge/systemui/ArrowHorizontalScrollView;)Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 70
    .local v2, updateMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->this$0:Lcom/lge/systemui/ArrowHorizontalScrollView;

    #getter for: Lcom/lge/systemui/ArrowHorizontalScrollView;->mHandler:Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;
    invoke-static {v3}, Lcom/lge/systemui/ArrowHorizontalScrollView;->access$200(Lcom/lge/systemui/ArrowHorizontalScrollView;)Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/systemui/ArrowHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
