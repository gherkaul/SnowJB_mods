.class Lcom/lge/debug/DebugAgent$13;
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
    .line 386
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x1

    .line 388
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1908(Lcom/lge/debug/DebugAgent;)I

    .line 389
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 390
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mWifiActivityCount:I
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1900(Lcom/lge/debug/DebugAgent;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iput v3, v0, Landroid/os/Message;->what:I

    .line 393
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 394
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDebugWifiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DATA_ACTIVITY_IN"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 398
    :pswitch_1
    iput v3, v0, Landroid/os/Message;->what:I

    .line 399
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 400
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDebugWifiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DATA_ACTIVITY_OUT"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 404
    :pswitch_2
    iput v3, v0, Landroid/os/Message;->what:I

    .line 405
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 406
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDebugWifiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DATA_ACTIVITY_INOUT"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 410
    :pswitch_3
    iput v3, v0, Landroid/os/Message;->what:I

    .line 411
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 412
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDebugWifiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$13;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DATA_ACTIVITY_NONE"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
