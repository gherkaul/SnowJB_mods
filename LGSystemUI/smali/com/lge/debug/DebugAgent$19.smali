.class Lcom/lge/debug/DebugAgent$19;
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
    .line 469
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 471
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$2000(Lcom/lge/debug/DebugAgent;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "sync_active"

    const v3, 0x7f020388

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    aput-boolean v0, v1, v5

    .line 473
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$2000(Lcom/lge/debug/DebugAgent;)Landroid/app/StatusBarManager;

    move-result-object v0

    const-string v1, "sync_active"

    iget-object v2, p0, Lcom/lge/debug/DebugAgent$19;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mIconSlot:[Z
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$2100(Lcom/lge/debug/DebugAgent;)[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 474
    return-void
.end method
