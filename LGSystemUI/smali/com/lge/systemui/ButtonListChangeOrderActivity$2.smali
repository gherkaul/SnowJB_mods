.class Lcom/lge/systemui/ButtonListChangeOrderActivity$2;
.super Landroid/os/Handler;
.source "ButtonListChangeOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ButtonListChangeOrderActivity;
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
    .line 290
    iput-object p1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 292
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_4

    .line 293
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 294
    .local v2, from:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 295
    .local v3, to:I
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 296
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 298
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v5}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    :goto_0
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #setter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v4, v7}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$102(Lcom/lge/systemui/ButtonListChangeOrderActivity;Lcom/lge/systemui/ButtonItem;)Lcom/lge/systemui/ButtonItem;

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$300(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->notifyDataSetChanged()V

    .line 332
    .end local v2           #from:I
    .end local v3           #to:I
    :cond_1
    :goto_1
    return-void

    .line 300
    .restart local v2       #from:I
    .restart local v3       #to:I
    :cond_2
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_3
    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 309
    .end local v2           #from:I
    .end local v3           #to:I
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 311
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 312
    .local v1, firstDragPos:I
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;

    move-result-object v4

    if-nez v4, :cond_1

    .line 313
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v1, v4, :cond_1

    .line 314
    iget-object v5, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    #setter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v5, v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$102(Lcom/lge/systemui/ButtonListChangeOrderActivity;Lcom/lge/systemui/ButtonItem;)Lcom/lge/systemui/ButtonItem;

    .line 315
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    .line 316
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 317
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$300(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 321
    .end local v1           #firstDragPos:I
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 323
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 324
    .local v0, dragPos:I
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    if-ltz v0, :cond_6

    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_6

    .line 327
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 329
    :cond_6
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    #getter for: Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
    invoke-static {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->access$300(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method
