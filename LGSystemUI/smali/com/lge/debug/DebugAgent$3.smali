.class Lcom/lge/debug/DebugAgent$3;
.super Landroid/content/BroadcastReceiver;
.source "DebugAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugAgent;
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
    .line 123
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$3;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.systemui.debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$3;->this$0:Lcom/lge/debug/DebugAgent;

    #calls: Lcom/lge/debug/DebugAgent;->doDebugAction(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/lge/debug/DebugAgent;->access$500(Lcom/lge/debug/DebugAgent;Landroid/content/Intent;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v1, "com.lge.systemui.function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$3;->this$0:Lcom/lge/debug/DebugAgent;

    #calls: Lcom/lge/debug/DebugAgent;->doFunctionCall(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/lge/debug/DebugAgent;->access$600(Lcom/lge/debug/DebugAgent;Landroid/content/Intent;)V

    goto :goto_0
.end method
