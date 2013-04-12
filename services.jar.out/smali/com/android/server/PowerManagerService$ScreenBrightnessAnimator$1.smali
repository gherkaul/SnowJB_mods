.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 3019
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$2600(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v0, 0x1

    .line 3022
    .local v0, brightnessMode:I
    :goto_0
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_c

    .line 3023
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3024
    .local v4, mask:I
    iget v10, p1, Landroid/os/Message;->arg2:I

    .line 3025
    .local v10, value:I
    if-nez v10, :cond_9

    const/4 v9, 0x1

    .line 3026
    .local v9, turnOff:Z
    :goto_1
    if-nez v9, :cond_0

    .line 3027
    monitor-enter p0

    .line 3028
    :try_start_0
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v10, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 3029
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3032
    .local v6, tStart:J
    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_2

    .line 3033
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    :cond_1
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 3036
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v2, v11, v6

    .line 3037
    .local v2, elapsed:J
    and-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_3

    .line 3038
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3040
    :cond_3
    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_4

    .line 3041
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3044
    :cond_4
    const-wide/16 v11, 0x64

    cmp-long v11, v2, v11

    if-lez v11, :cond_5

    .line 3045
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Excessive delay setting brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms, mask="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_5
    const-wide/16 v11, 0x10

    cmp-long v11, v2, v11

    if-gez v11, :cond_a

    const/16 v1, 0x10

    .line 3051
    .local v1, delay:I
    :goto_2
    if-eqz v9, :cond_6

    .line 3052
    monitor-enter p0

    .line 3053
    :try_start_1
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v10, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 3054
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3058
    :cond_6
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v11

    const/16 v12, 0x403

    if-ne v11, v12, :cond_b

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_b

    .line 3059
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v12, 0x2

    #setter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v11, v12}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    .line 3060
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v12, 0x0

    const/16 v13, 0x7d0

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v11, v4, v12, v13}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$9200(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .line 3074
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v9           #turnOff:Z
    .end local v10           #value:I
    :cond_7
    :goto_3
    return-void

    .line 3019
    .end local v0           #brightnessMode:I
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3025
    .restart local v0       #brightnessMode:I
    .restart local v4       #mask:I
    .restart local v10       #value:I
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3029
    .restart local v9       #turnOff:Z
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 3050
    .restart local v2       #elapsed:J
    .restart local v6       #tStart:J
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 3054
    .restart local v1       #delay:I
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 3063
    :cond_b
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v12, 0x0

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v11, v4, v12, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$9200(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    goto :goto_3

    .line 3066
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v9           #turnOff:Z
    .end local v10           #value:I
    :cond_c
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0xb

    if-ne v11, v12, :cond_d

    .line 3067
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 3068
    .local v5, mode:I
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v11, v5}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;I)V

    goto :goto_3

    .line 3069
    .end local v5           #mode:I
    :cond_d
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0xc

    if-ne v11, v12, :cond_7

    .line 3070
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 3071
    .local v8, targetBrightness:I
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    sub-int v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/lit16 v1, v11, 0x1f0

    .line 3072
    .restart local v1       #delay:I
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v12, 0x2

    invoke-virtual {v11, v8, v12, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    goto :goto_3
.end method
