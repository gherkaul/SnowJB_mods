.class final Lcom/android/server/LightsService$FlashEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlashEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$FlashEventReceiver;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.intent.action.LIGHTS_FLASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mIsFlashingOn:Z
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1200(Lcom/android/server/LightsService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    const-string v2, "LightsService"

    const-string v3, "FlashEventReceiver mIsFlashingOn false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 464
    iget-object v2, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    iget-object v2, v2, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    iget-object v2, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    iget-object v2, v2, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquireForInner()V

    .line 467
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 468
    .local v0, currTime:J
    iget-object v2, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LightsService$FlashEventReceiver;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
