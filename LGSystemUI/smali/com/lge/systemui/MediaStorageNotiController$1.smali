.class Lcom/lge/systemui/MediaStorageNotiController$1;
.super Ljava/lang/Object;
.source "MediaStorageNotiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MediaStorageNotiController;

.field final synthetic val$percent_msg:Ljava/lang/CharSequence;

.field final synthetic val$storageInfo:I


# direct methods
.method constructor <init>(Lcom/lge/systemui/MediaStorageNotiController;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    iput p2, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$storageInfo:I

    iput-object p3, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$percent_msg:Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const v3, 0x108007a

    const/4 v4, 0x1

    .line 142
    sget v0, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    if-eq v0, v4, :cond_0

    sget v0, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    if-ne v0, v1, :cond_3

    .line 143
    :cond_0
    iget v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$storageInfo:I

    if-ne v0, v4, :cond_2

    .line 144
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    iget-object v1, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$percent_msg:Ljava/lang/CharSequence;

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setScanningNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/MediaStorageNotiController;->access$100(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$storageInfo:I

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    iget-object v1, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$percent_msg:Ljava/lang/CharSequence;

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setScanningNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/MediaStorageNotiController;->access$100(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_0

    .line 156
    :cond_3
    sget v0, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 157
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    iget-object v1, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f09008f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    invoke-static/range {v0 .. v5}, Lcom/lge/systemui/MediaStorageNotiController;->access$200(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    .line 162
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/systemui/MediaStorageNotiController;->access$300(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/systemui/MediaStorageNotiController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MediaStorageNotiController$1$1;-><init>(Lcom/lge/systemui/MediaStorageNotiController$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :cond_4
    sget v0, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->val$percent_msg:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not enough space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    iget-object v1, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    #getter for: Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/systemui/MediaStorageNotiController;->access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x108007b

    move v5, v4

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    invoke-static/range {v0 .. v5}, Lcom/lge/systemui/MediaStorageNotiController;->access$200(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    goto/16 :goto_0
.end method
