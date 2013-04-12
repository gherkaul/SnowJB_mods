.class Lcom/lge/debug/DebugDisplay_Svc$LoadView;
.super Landroid/view/View;
.source "DebugDisplay_Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugDisplay_Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lge/debug/DebugDisplay_Svc;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugDisplay_Svc;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    .line 89
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;

    invoke-direct {v0, p0}, Lcom/lge/debug/DebugDisplay_Svc$LoadView$1;-><init>(Lcom/lge/debug/DebugDisplay_Svc$LoadView;)V

    iput-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0}, Lcom/lge/debug/DebugDisplay_Svc;->access$000(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0}, Lcom/lge/debug/DebugDisplay_Svc;->access$000(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    invoke-virtual {v1}, Lcom/lge/debug/DebugDisplay_Svc;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mRectInfoArea:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/lge/debug/DebugDisplay_Svc;->access$100(Lcom/lge/debug/DebugDisplay_Svc;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/lge/debug/IDebugDisplay;->display(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 107
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$LoadView;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mRectInfoArea:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/debug/DebugDisplay_Svc;->access$100(Lcom/lge/debug/DebugDisplay_Svc;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    return-void
.end method
