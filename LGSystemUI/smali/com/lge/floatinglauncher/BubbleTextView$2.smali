.class Lcom/lge/floatinglauncher/BubbleTextView$2;
.super Landroid/os/Handler;
.source "BubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/floatinglauncher/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/floatinglauncher/BubbleTextView;


# direct methods
.method constructor <init>(Lcom/lge/floatinglauncher/BubbleTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lge/floatinglauncher/BubbleTextView$2;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView$2;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-virtual {v0}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/floatinglauncher/BubbleTextView$2;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    #getter for: Lcom/lge/floatinglauncher/BubbleTextView;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/lge/floatinglauncher/BubbleTextView;->access$100(Lcom/lge/floatinglauncher/BubbleTextView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    return-void
.end method
