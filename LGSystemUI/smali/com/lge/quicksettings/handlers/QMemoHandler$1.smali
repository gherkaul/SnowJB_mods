.class Lcom/lge/quicksettings/handlers/QMemoHandler$1;
.super Landroid/os/Handler;
.source "QMemoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/QMemoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 48
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    iget-object v4, v4, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 49
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, topActivity:Ljava/lang/String;
    :goto_0
    const-string v4, "com.lge.camera.CameraApp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.lge.camera.Camcorder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.lge.vmemo.VMemoActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.lge.systemui.qmemo"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    iget-object v4, v4, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    :goto_1
    return-void

    .line 50
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #topActivity:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 57
    .restart local v3       #topActivity:Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.QuickClip.action.TOGGLE_QUICKCLIP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    iget-object v4, v4, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
