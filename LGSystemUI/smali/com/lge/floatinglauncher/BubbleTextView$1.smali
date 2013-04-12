.class Lcom/lge/floatinglauncher/BubbleTextView$1;
.super Ljava/lang/Object;
.source "BubbleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/floatinglauncher/BubbleTextView;->onClick(Landroid/view/View;)V
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
    .line 247
    iput-object p1, p0, Lcom/lge/floatinglauncher/BubbleTextView$1;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lge/floatinglauncher/BubbleTextView$1;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    const/4 v1, 0x0

    #setter for: Lcom/lge/floatinglauncher/BubbleTextView;->mClickDisabled:Z
    invoke-static {v0, v1}, Lcom/lge/floatinglauncher/BubbleTextView;->access$002(Lcom/lge/floatinglauncher/BubbleTextView;Z)Z

    .line 251
    return-void
.end method
