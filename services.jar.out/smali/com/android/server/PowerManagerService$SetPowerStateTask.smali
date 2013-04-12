.class Lcom/android/server/PowerManagerService$SetPowerStateTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPowerStateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2049
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SetPowerStateTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2054
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2055
    const-string v0, "PowerManagerService"

    const-string v2, "Executing delayed setPowerState ! "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v3

    or-int/2addr v2, v3

    #calls: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;I)V

    .line 2061
    :goto_0
    monitor-exit v1

    .line 2062
    return-void

    .line 2058
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v2, "delay setPowerState for solving timing issue."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    iget-object v0, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4100(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$SetPowerStateTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSetPowerStateTask:Lcom/android/server/PowerManagerService$SetPowerStateTask;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$SetPowerStateTask;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2061
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
