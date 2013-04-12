.class Lcom/lge/quicksettings/QuickSettings$2;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/QuickSettings;->composePages(Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/QuickSettings;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/QuickSettings;Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {p0, p2, p3}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    return-void
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 388
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->clickEdit()V

    .line 389
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v1}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f02013c

    invoke-virtual {v1, v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setIcon(II)V

    .line 390
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v1}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 392
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 397
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lge/quicksettings/QuickSettings$2$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/QuickSettings$2$1;-><init>(Lcom/lge/quicksettings/QuickSettings$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    return v4

    .line 393
    .end local v0           #handler:Landroid/os/Handler;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onLongClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 410
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->clickEdit()V

    .line 411
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v1}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f02013c

    invoke-virtual {v1, v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setIcon(II)V

    .line 412
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v1}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 414
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 419
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lge/quicksettings/QuickSettings$2$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/QuickSettings$2$2;-><init>(Lcom/lge/quicksettings/QuickSettings$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return v4

    .line 415
    .end local v0           #handler:Landroid/os/Handler;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
