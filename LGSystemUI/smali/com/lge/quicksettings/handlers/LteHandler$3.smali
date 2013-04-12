.class Lcom/lge/quicksettings/handlers/LteHandler$3;
.super Ljava/lang/Object;
.source "LteHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/LteHandler;->sendGetNetworkModeIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/LteHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/LteHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 276
    const-string v1, "LteHandler"

    const-string v2, "Failed to send GetNetworkMode_KDDI_LTE intent, Not supported operator."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$000(Lcom/lge/quicksettings/handlers/LteHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->tryCountGetNetworkModeIntentSent:I
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$100(Lcom/lge/quicksettings/handlers/LteHandler;)I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 285
    const-string v1, "LteHandler"

    const-string v2, "Failed to send GetNetworkMode_KDDI_LTE intent, max count over."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->mIsBootCompleted:Z
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$200(Lcom/lge/quicksettings/handlers/LteHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$300(Lcom/lge/quicksettings/handlers/LteHandler;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "GetNetworkMode_KDDI_LTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$300(Lcom/lge/quicksettings/handlers/LteHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    const-string v1, "LteHandler"

    const-string v2, "GetNetworkMode_KDDI_LTE intent sent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    const/4 v2, 0x1

    #setter for: Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z
    invoke-static {v1, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->access$002(Lcom/lge/quicksettings/handlers/LteHandler;Z)Z

    .line 299
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #getter for: Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$000(Lcom/lge/quicksettings/handlers/LteHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    #calls: Lcom/lge/quicksettings/handlers/LteHandler;->sendGetNetworkModeIntent()V
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$400(Lcom/lge/quicksettings/handlers/LteHandler;)V

    .line 301
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    invoke-static {v1}, Lcom/lge/quicksettings/handlers/LteHandler;->access$108(Lcom/lge/quicksettings/handlers/LteHandler;)I

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "LteHandler"

    const-string v2, "Android System is not ready for LTE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
