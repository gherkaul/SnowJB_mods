.class Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;
.super Landroid/os/Handler;
.source "DebugDisplay_Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugDisplay_Svc$LoadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/debug/DebugDisplay_Svc$LoadView;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugDisplay_Svc$LoadView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->this$1:Lcom/lge/debug/DebugDisplay_Svc$LoadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->this$1:Lcom/lge/debug/DebugDisplay_Svc$LoadView;

    iget-object v1, v1, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$000(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->this$1:Lcom/lge/debug/DebugDisplay_Svc$LoadView;

    invoke-virtual {v1}, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->invalidate()V

    .line 80
    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->this$1:Lcom/lge/debug/DebugDisplay_Svc$LoadView;

    iget-object v1, v1, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$000(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/debug/IDebugDisplay;->log()V

    .line 82
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    return-void
.end method
