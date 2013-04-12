.class public Lcom/lge/systemui/ButtonListChangeOrderActivity;
.super Landroid/app/ListActivity;
.source "ButtonListChangeOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lge/systemui/DragDropListView$DoExpansionListener;
.implements Lcom/lge/systemui/DragDropListView$DragListener;
.implements Lcom/lge/systemui/DragDropListView$DropListener;
.implements Lcom/lge/systemui/DragDropListView$MoveBlankListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
    }
.end annotation


# instance fields
.field private mActionbar:Landroid/app/ActionBar;

.field private mDragDropListView:Lcom/lge/systemui/DragDropListView;

.field private mGoneItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mLP:Landroid/app/ActionBar$LayoutParams;

.field private mMoreBtn:Landroid/widget/TextView;

.field private mMoreView:Landroid/widget/LinearLayout;

.field private mMoveItem:Lcom/lge/systemui/ButtonItem;

.field private mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

.field private mShowingItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field msg:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    .line 49
    iput-object v2, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;

    .line 51
    iput-object v2, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mActionbar:Landroid/app/ActionBar;

    .line 54
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mLP:Landroid/app/ActionBar$LayoutParams;

    .line 289
    iput-object v2, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    .line 290
    new-instance v0, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity$2;-><init>(Lcom/lge/systemui/ButtonListChangeOrderActivity;)V

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    .line 398
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/DragDropListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/systemui/ButtonListChangeOrderActivity;Lcom/lge/systemui/ButtonItem;)Lcom/lge/systemui/ButtonItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/systemui/ButtonListChangeOrderActivity;)Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    return-object v0
.end method

.method private onGotoSelectAct()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->syncronizeList()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->finish()V

    .line 224
    :cond_0
    return-void
.end method

.method private syncronizeList()V
    .locals 8

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 351
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemui/ButtonItem;

    .line 352
    .local v3, item1:Lcom/lge/systemui/ButtonItem;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    invoke-virtual {v3, v0}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 355
    .end local v3           #item1:Lcom/lge/systemui/ButtonItem;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 356
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemui/ButtonItem;

    .line 357
    .restart local v3       #item1:Lcom/lge/systemui/ButtonItem;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .restart local v1       #count:I
    invoke-virtual {v3, v0}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    .line 355
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 360
    .end local v3           #item1:Lcom/lge/systemui/ButtonItem;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 361
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemui/ButtonItem;

    .line 362
    .restart local v3       #item1:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 364
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 365
    .local v4, item2:Lcom/lge/systemui/ButtonItem;
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_0

    .line 363
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 367
    :pswitch_0
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v6

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 368
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    goto :goto_4

    .line 372
    :pswitch_1
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 373
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    goto :goto_4

    .line 379
    .end local v4           #item2:Lcom/lge/systemui/ButtonItem;
    .end local v5           #j:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_5
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 380
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 381
    .restart local v4       #item2:Lcom/lge/systemui/ButtonItem;
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_1

    .line 379
    :cond_4
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 383
    :pswitch_2
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v6

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 384
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    goto :goto_6

    .line 388
    :pswitch_3
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    goto :goto_6

    .line 360
    .end local v4           #item2:Lcom/lge/systemui/ButtonItem;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 396
    .end local v3           #item1:Lcom/lge/systemui/ButtonItem;
    .end local v5           #j:I
    :cond_6
    return-void

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 381
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 338
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 339
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 340
    .local v1, flags:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 341
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_1

    .line 345
    :goto_1
    return v3

    .line 338
    .end local v0           #down:Z
    .end local v1           #flags:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    .restart local v0       #down:Z
    .restart local v1       #flags:I
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public doExpansion(I)V
    .locals 2
    .parameter "firstDragPos"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    .line 254
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 256
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method public drag(II)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 227
    return-void
.end method

.method public drop(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    .line 231
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 233
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 234
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method

.method public moveBlank(I)V
    .locals 2
    .parameter "dragPos"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    .line 271
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->onGotoSelectAct()V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->setContentView(I)V

    .line 60
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/DragDropListView;

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 166
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mActionbar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mActionbar:Landroid/app/ActionBar;

    .line 168
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoreView:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoreView:Landroid/widget/LinearLayout;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoreBtn:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoreBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mActionbar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoreView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mLP:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 176
    :goto_0
    return v3

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 197
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :goto_1
    invoke-direct {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->syncronizeList()V

    .line 207
    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->finish()V

    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 200
    :pswitch_0
    const-string v1, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 203
    :pswitch_1
    const-string v1, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 187
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->onGotoSelectAct()V

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c012b
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 68
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    const-string v6, "SettingsChangeOrderActivity"

    const-string v7, "error : null pointer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 70
    .end local v0           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    :pswitch_0
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    .line 81
    .restart local v0       #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    sput-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    .line 82
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 85
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 86
    .local v4, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73
    .end local v0           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    .end local v2           #i:I
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    :pswitch_1
    sget-object v0, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    .line 74
    .restart local v0       #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    goto :goto_1

    .line 89
    .restart local v2       #i:I
    .restart local v4       #item:Lcom/lge/systemui/ButtonItem;
    :cond_0
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mGoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 94
    .end local v2           #i:I
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    :cond_1
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 95
    const v6, 0x7f0900d6

    invoke-virtual {p0, v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 96
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v3, intent:Landroid/content/Intent;
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_1

    .line 105
    :goto_4
    invoke-virtual {p0, v3}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->finish()V

    .line 123
    .end local v3           #intent:Landroid/content/Intent;
    :goto_5
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/systemui/DragDropListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0203e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 126
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v6, v1}, Lcom/lge/systemui/DragDropListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_2
    const v6, 0x7f0c0010

    invoke-virtual {p0, v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 129
    .local v5, title:Landroid/widget/TextView;
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #title:Landroid/widget/TextView;
    .restart local v3       #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v6, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 102
    :pswitch_4
    const-string v6, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 108
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v6, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    const v7, 0x7f030017

    iget-object v8, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mShowingItemList:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v7, v8}, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;-><init>(Lcom/lge/systemui/ButtonListChangeOrderActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    .line 109
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;

    invoke-virtual {p0, v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v6, p0}, Lcom/lge/systemui/DragDropListView;->setDragListener(Lcom/lge/systemui/DragDropListView$DragListener;)V

    .line 111
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v6, p0}, Lcom/lge/systemui/DragDropListView;->setDropListener(Lcom/lge/systemui/DragDropListView$DropListener;)V

    .line 112
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v6, p0}, Lcom/lge/systemui/DragDropListView;->setDoExpansionListener(Lcom/lge/systemui/DragDropListView$DoExpansionListener;)V

    .line 113
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    invoke-virtual {v6, p0}, Lcom/lge/systemui/DragDropListView;->setMoveBlankListener(Lcom/lge/systemui/DragDropListView$MoveBlankListener;)V

    .line 114
    iget-object v6, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mDragDropListView:Lcom/lge/systemui/DragDropListView;

    new-instance v7, Lcom/lge/systemui/ButtonListChangeOrderActivity$1;

    invoke-direct {v7, p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity$1;-><init>(Lcom/lge/systemui/ButtonListChangeOrderActivity;)V

    invoke-virtual {v6, v7}, Lcom/lge/systemui/DragDropListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/16 :goto_5

    .line 135
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v5       #title:Landroid/widget/TextView;
    :pswitch_5
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090177

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090175

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 129
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    .line 148
    iget-object v1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity;->mMoveItem:Lcom/lge/systemui/ButtonItem;

    if-nez v1, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->syncronizeList()V

    .line 159
    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListChangeOrderActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 152
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v1, "com.lge.quicksettings.action.SAVE_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v1, "com.lge.floatinglauncher.action.SAVE_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
