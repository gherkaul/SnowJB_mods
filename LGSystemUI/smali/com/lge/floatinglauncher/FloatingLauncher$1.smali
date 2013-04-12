.class Lcom/lge/floatinglauncher/FloatingLauncher$1;
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
    .line 64
    iput-object p1, p0, Lcom/lge/floatinglauncher/FloatingLauncher$1;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, packageName:Ljava/lang/String;
    sget-object v5, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemui/ButtonItem;

    .line 70
    .local v3, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v1

    .line 71
    .local v1, btv:Lcom/lge/floatinglauncher/BubbleTextView;
    iget-object v5, v1, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/lge/floatinglauncher/BubbleTextView;->toggleDisableInSetting()V

    goto :goto_0

    .line 75
    .end local v1           #btv:Lcom/lge/floatinglauncher/BubbleTextView;
    .end local v3           #item:Lcom/lge/systemui/ButtonItem;
    :cond_1
    return-void
.end method
