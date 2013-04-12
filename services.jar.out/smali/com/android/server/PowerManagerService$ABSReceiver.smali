.class final Lcom/android/server/PowerManagerService$ABSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ABSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ABSReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 665
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    .line 666
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.lge.intent.action.ABS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    const-string v3, "abs_is_enabled"

    const/4 v5, 0x1

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 669
    .local v1, mABS:Z
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->getPreferredBrightness()I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)I

    move-result v0

    .line 670
    .local v0, brightness:I
    const/4 v2, 0x6

    .line 671
    .local v2, onMask:I
    if-eqz v1, :cond_2

    .line 673
    const-string v3, "PowerManagerService"

    const-string v5, "ABS is enabled!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mABSEnabled:Z
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$3102(Lcom/android/server/PowerManagerService;Z)Z

    .line 684
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-gez v3, :cond_0

    .line 689
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v3, v2, v0}, Lcom/android/server/PowerManagerService;->access$3300(Lcom/android/server/PowerManagerService;II)V

    .line 692
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3400(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 693
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)V

    .line 695
    .end local v0           #brightness:I
    .end local v1           #mABS:Z
    .end local v2           #onMask:I
    :cond_1
    monitor-exit v4

    .line 696
    return-void

    .line 678
    .restart local v0       #brightness:I
    .restart local v1       #mABS:Z
    .restart local v2       #onMask:I
    :cond_2
    const-string v3, "PowerManagerService"

    const-string v5, "ABS is disabled!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mABSEnabled:Z
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$3102(Lcom/android/server/PowerManagerService;Z)Z

    .line 680
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$ABSReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mABSEnabled:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    #calls: Lcom/android/server/PowerManagerService;->TemporalEnableLightSensorLocked(Z)V
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_0

    .line 695
    .end local v0           #brightness:I
    .end local v1           #mABS:Z
    .end local v2           #onMask:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
