.class final Lcom/android/server/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    .line 543
    const/4 v2, 0x0

    .line 544
    .local v2, setForceWakeKeyWhenKeyguardShowingTq:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 545
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    .line 546
    .local v3, wasPowered:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v6

    #setter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v4, v6}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;Z)Z

    .line 549
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseLEDForG:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    const-string v4, "status"

    const/4 v6, 0x1

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 552
    .local v1, batteryState:I
    const-string v4, "level"

    const/16 v6, 0x4b

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 554
    .local v0, batteryLevel:I
    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    if-ne v1, v7, :cond_0

    .line 555
    const/4 v1, 0x5

    .line 557
    :cond_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mBatteryStatus:I
    invoke-static {v4, v1}, Lcom/android/server/PowerManagerService;->access$1002(Lcom/android/server/PowerManagerService;I)I

    .line 562
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOn:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mFlashingDefendOnLCD:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 581
    .end local v0           #batteryLevel:I
    .end local v1           #batteryState:I
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eq v4, v3, :cond_4

    .line 583
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)V

    .line 595
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v3, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v4, v4, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    if-eqz v4, :cond_3

    .line 598
    :cond_2
    const-string v4, "service.keyguard.status"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 601
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v7, 0x1

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked(I)V
    invoke-static {v4, v7}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;I)V

    .line 607
    :cond_3
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
    :cond_4
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    if-eqz v2, :cond_5

    .line 611
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->setForceWakeKeyWhenKeyguardShowingTq()V

    .line 613
    :cond_5
    return-void

    .line 568
    .restart local v0       #batteryLevel:I
    .restart local v1       #batteryState:I
    :cond_6
    if-ne v1, v7, :cond_7

    .line 569
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setLEDBatteryCharging()V
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)V

    goto :goto_0

    .line 609
    .end local v0           #batteryLevel:I
    .end local v1           #batteryState:I
    .end local v3           #wasPowered:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 571
    .restart local v0       #batteryLevel:I
    .restart local v1       #batteryState:I
    .restart local v3       #wasPowered:Z
    :cond_7
    const/4 v4, 0x5

    if-ne v1, v4, :cond_8

    .line 572
    :try_start_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setLEDBatteryChargeFull()V
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$1100(Lcom/android/server/PowerManagerService;)V

    goto :goto_0

    .line 575
    :cond_8
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setLEDBatteryChargeNone()V
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 604
    .end local v0           #batteryLevel:I
    .end local v1           #batteryState:I
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 607
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
