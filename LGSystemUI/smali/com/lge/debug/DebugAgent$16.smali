.class Lcom/lge/debug/DebugAgent$16;
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
    .line 438
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 440
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$2000(Lcom/lge/debug/DebugAgent;)Landroid/app/StatusBarManager;

    move-result-object v2

    const-string v3, "cdma_eri"

    const v4, 0x7f020327

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v3}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    aput-boolean v0, v2, v1

    .line 442
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$2000(Lcom/lge/debug/DebugAgent;)Landroid/app/StatusBarManager;

    move-result-object v0

    const-string v2, "cdma_eri"

    iget-object v3, p0, Lcom/lge/debug/DebugAgent$16;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v3}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v3

    aget-boolean v1, v3, v1

    invoke-virtual {v0, v2, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 443
    return-void
.end method
