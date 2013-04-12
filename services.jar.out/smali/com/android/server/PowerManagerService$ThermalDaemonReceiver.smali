.class final Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalDaemonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 633
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    .line 634
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.lge.intent.action.ACTION_THERMALDAEMON_RESTORE_BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService;->isScreenBright()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    const-string v3, "value"

    const/4 v5, -0x1

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 637
    .local v0, currentBrightness:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->getPreferredBrightness()I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    .line 638
    .local v2, targetBrightness:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 644
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-le v0, v3, :cond_5

    .line 645
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 646
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 648
    .local v1, msg:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 649
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 650
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 655
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ThermalDaemon] brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v0           #currentBrightness:I
    .end local v2           #targetBrightness:I
    :cond_2
    monitor-exit v4

    .line 659
    return-void

    .line 639
    .restart local v0       #currentBrightness:I
    .restart local v2       #targetBrightness:I
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    :cond_4
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->getBrightness()I

    move-result v2

    goto/16 :goto_0

    .line 653
    :cond_5
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ThermalDaemonReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/LightsService$Light;->setBrightnessForce(I)V

    goto :goto_1

    .line 658
    .end local v0           #currentBrightness:I
    .end local v2           #targetBrightness:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
