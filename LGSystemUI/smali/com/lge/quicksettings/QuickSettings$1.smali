.class Lcom/lge/quicksettings/QuickSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/QuickSettings;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v2, "QuickSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v2, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.lge.quicksettings.action.SAVE_HOME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :cond_2
    sget-object v2, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    sget-object v3, Lcom/lge/systemui/ButtonListParams;->sOrderComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mQuickSettingsItemList:Lcom/lge/quicksettings/QuickSettingsItemList;
    invoke-static {v2}, Lcom/lge/quicksettings/QuickSettings;->access$000(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsItemList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->saveToPreferences()V

    .line 87
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #calls: Lcom/lge/quicksettings/QuickSettings;->unregisterReceiver()V
    invoke-static {v2}, Lcom/lge/quicksettings/QuickSettings;->access$100(Lcom/lge/quicksettings/QuickSettings;)V

    .line 88
    sget-object v2, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    sput-object v2, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    .line 89
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    sget-object v3, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v4}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/quicksettings/QuickSettings;->updatePages(Ljava/util/ArrayList;I)V

    .line 90
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #calls: Lcom/lge/quicksettings/QuickSettings;->registerReceiver()V
    invoke-static {v2}, Lcom/lge/quicksettings/QuickSettings;->access$200(Lcom/lge/quicksettings/QuickSettings;)V

    .line 92
    const-string v2, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2, v5}, Lcom/lge/quicksettings/QuickSettings;->updateAllButtons(Z)V

    .line 95
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/QuickSettings;->access$300(Lcom/lge/quicksettings/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 96
    .local v1, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->expand()V

    goto :goto_0

    .line 97
    .end local v1           #statusBarManager:Landroid/app/StatusBarManager;
    :cond_3
    const-string v2, "com.lge.quicksettings.action.SAVE_HOME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettings$1;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2, v5}, Lcom/lge/quicksettings/QuickSettings;->updateAllButtons(Z)V

    goto/16 :goto_0
.end method
