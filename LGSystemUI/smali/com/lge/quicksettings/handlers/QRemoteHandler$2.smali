.class Lcom/lge/quicksettings/handlers/QRemoteHandler$2;
.super Ljava/lang/Object;
.source "QRemoteHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/QRemoteHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z
    invoke-static {v2, v1}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->access$002(Lcom/lge/quicksettings/handlers/QRemoteHandler;Z)Z

    .line 98
    const-string v1, "QRemoteHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QRemoteHandler.StatusBar Expanded changed. [Action]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", [mStatusBarExpanded]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z
    invoke-static {v3}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->access$000(Lcom/lge/quicksettings/handlers/QRemoteHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
