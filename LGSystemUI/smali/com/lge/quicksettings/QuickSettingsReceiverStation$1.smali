.class Lcom/lge/quicksettings/QuickSettingsReceiverStation$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsReceiverStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/QuickSettingsReceiverStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/QuickSettingsReceiverStation;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/QuickSettingsReceiverStation;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation$1;->this$0:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    iget-object v5, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation$1;->this$0:Lcom/lge/quicksettings/QuickSettingsReceiverStation;

    #getter for: Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->access$000(Lcom/lge/quicksettings/QuickSettingsReceiverStation;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 77
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/quicksettings/QuickSettingsReceiver;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 87
    .local v1, data:Lcom/lge/quicksettings/QuickSettingsReceiver;
    const/4 v4, 0x0

    .line 88
    .local v4, receiverAction:[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->getAction()[Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_3
    if-eqz v4, :cond_2

    .line 93
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 94
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 95
    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->getHandler()Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;->handle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
