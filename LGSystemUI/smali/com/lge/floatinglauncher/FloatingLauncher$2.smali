.class Lcom/lge/floatinglauncher/FloatingLauncher$2;
.super Landroid/content/BroadcastReceiver;
.source "FloatingLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/floatinglauncher/FloatingLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/floatinglauncher/FloatingLauncher;


# direct methods
.method constructor <init>(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v6, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.lge.floatinglauncher.action.SAVE_HOME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    :cond_2
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    sget-object v7, Lcom/lge/systemui/ButtonListParams;->sOrderComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    sput-object v6, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    .line 87
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->updateIconLists()V
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$000(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    .line 88
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->saveToPreferences()V
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$100(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    .line 90
    const-string v6, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #getter for: Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$200(Lcom/lge/floatinglauncher/FloatingLauncher;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 93
    .local v5, statusBarManager:Landroid/app/StatusBarManager;
    invoke-virtual {v5}, Landroid/app/StatusBarManager;->expand()V

    goto :goto_0

    .line 95
    .end local v5           #statusBarManager:Landroid/app/StatusBarManager;
    :cond_3
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 96
    sget-object v6, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/ButtonItem;

    .line 97
    .local v2, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/floatinglauncher/BubbleTextView;->updateLabel()V

    .line 98
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #getter for: Lcom/lge/floatinglauncher/FloatingLauncher;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$200(Lcom/lge/floatinglauncher/FloatingLauncher;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/systemui/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, label:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {v2, v3}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    .end local v2           #item:Lcom/lge/systemui/ButtonItem;
    .end local v3           #label:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #getter for: Lcom/lge/floatinglauncher/FloatingLauncher;->mEditButton:Lcom/lge/floatinglauncher/BubbleTextView;
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$300(Lcom/lge/floatinglauncher/FloatingLauncher;)Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/floatinglauncher/BubbleTextView;->updateLabel()V

    .line 104
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->updateIconLists()V
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$000(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    .line 105
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->updateTitle()V
    invoke-static {v6}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$400(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    goto/16 :goto_0

    .line 106
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v6, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 107
    const-string v6, "package"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    const/4 v7, 0x1

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->setLowProfile(ZLjava/lang/String;)V
    invoke-static {v6, v7, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$500(Lcom/lge/floatinglauncher/FloatingLauncher;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_7
    const-string v6, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    const-string v6, "package"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .restart local v4       #pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/floatinglauncher/FloatingLauncher$2;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    const/4 v7, 0x0

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->setLowProfile(ZLjava/lang/String;)V
    invoke-static {v6, v7, v4}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$500(Lcom/lge/floatinglauncher/FloatingLauncher;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
