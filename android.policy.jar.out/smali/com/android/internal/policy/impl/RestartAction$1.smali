.class Lcom/android/internal/policy/impl/RestartAction$1;
.super Landroid/os/Handler;
.source "RestartAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RestartAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RestartAction;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    const-string v0, "RestartAction"

    const-string v1, "handleMessage() : error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    const-string v0, "RestartAction"

    const-string v1, "handleMessage(): MESSAGE_DISMISS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    #getter for: Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$000(Lcom/android/internal/policy/impl/RestartAction;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    #getter for: Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$100(Lcom/android/internal/policy/impl/RestartAction;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    #getter for: Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$000(Lcom/android/internal/policy/impl/RestartAction;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/RestartAction;->access$002(Lcom/android/internal/policy/impl/RestartAction;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 172
    :pswitch_1
    const-string v0, "RestartAction"

    const-string v1, "handleMessage(): MESSAGE_REFRESH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    #calls: Lcom/android/internal/policy/impl/RestartAction;->refreshRestartDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$200(Lcom/android/internal/policy/impl/RestartAction;)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction$1;->this$0:Lcom/android/internal/policy/impl/RestartAction;

    #calls: Lcom/android/internal/policy/impl/RestartAction;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/RestartAction;->access$300(Lcom/android/internal/policy/impl/RestartAction;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
