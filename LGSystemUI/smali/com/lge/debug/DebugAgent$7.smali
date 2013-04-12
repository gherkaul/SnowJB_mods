.class Lcom/lge/debug/DebugAgent$7;
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
    .line 238
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

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

    .line 240
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1208(Lcom/lge/debug/DebugAgent;)I

    .line 241
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDataStateCount:I
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1200(Lcom/lge/debug/DebugAgent;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    const/4 v1, 0x0

    #setter for: Lcom/lge/debug/DebugAgent;->mDataState:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1302(Lcom/lge/debug/DebugAgent;I)I

    .line 244
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_DISCONNECTED"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    #setter for: Lcom/lge/debug/DebugAgent;->mDataState:I
    invoke-static {v0, v2}, Lcom/lge/debug/DebugAgent;->access$1302(Lcom/lge/debug/DebugAgent;I)I

    .line 248
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_CONNECTING"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    const/4 v1, 0x2

    #setter for: Lcom/lge/debug/DebugAgent;->mDataState:I
    invoke-static {v0, v1}, Lcom/lge/debug/DebugAgent;->access$1302(Lcom/lge/debug/DebugAgent;I)I

    .line 252
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$7;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_CONNECTED"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
