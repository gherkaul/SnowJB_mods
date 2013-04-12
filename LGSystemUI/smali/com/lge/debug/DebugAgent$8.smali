.class Lcom/lge/debug/DebugAgent$8;
.super Ljava/lang/Object;
.source "DebugAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/debug/DebugAgent;->createDebugButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/debug/DebugAgent;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x7d0

    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1408(Lcom/lge/debug/DebugAgent;)I

    .line 263
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDataNetTypeCount:I
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1400(Lcom/lge/debug/DebugAgent;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    const/16 v1, 0xd

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 266
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_LTE"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    const/4 v1, 0x3

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 270
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_UMTS"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    const/16 v1, 0x8

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 274
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_HSDPA"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    const/4 v1, 0x4

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 278
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_CDMA"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v2}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 282
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_GPRS"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 285
    :pswitch_5
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    const/4 v1, 0x7

    #setter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1502(Lcom/lge/debug/DebugAgent;I)I

    .line 286
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$8;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "NETWORK_TYPE_1xRTT"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
