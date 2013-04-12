.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb

.field static final ANIMATE_RECOVER_BRIGHTNESS:I = 0xc


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 3010
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    .line 3011
    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3012
    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    .line 3013
    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2996
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2996
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .locals 16
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    .line 3083
    monitor-enter p0

    .line 3084
    move/from16 v4, p3

    .line 3085
    .local v4, flagDelay:I
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v12, v13, :cond_9

    .line 3086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3087
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v12, v8, v12

    long-to-int v3, v12

    .line 3089
    .local v3, elapsed:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v3, v12, :cond_6

    .line 3090
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v1, v12, v13

    .line 3091
    .local v1, delta:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v13, v1, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v13, v14

    add-int v7, v12, v13

    .line 3092
    .local v7, newValue:I
    const/4 v12, 0x0

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3093
    const/16 v12, 0xff

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3095
    if-lez p3, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v7, v12, :cond_0

    .line 3096
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    div-int v10, v12, v13

    .line 3097
    .local v10, timePerStep:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v12, v3

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3098
    if-gez v1, :cond_5

    const/4 v12, -0x1

    :goto_0
    add-int/2addr v7, v12

    .line 3101
    .end local v10           #timePerStep:I
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v1, v12, v13

    .line 3102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v14, v1, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v14, v15

    add-int/2addr v13, v14

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$9502(Lcom/android/server/PowerManagerService;I)I

    .line 3112
    .end local v1           #delta:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)I

    move-result v12

    const/16 v13, 0x403

    if-ne v12, v13, :cond_7

    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_7

    const/16 v12, 0x7d0

    if-ne v4, v12, :cond_7

    .line 3113
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    add-int/lit8 v7, v12, -0x1

    .line 3114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mAbsCurValue:I
    invoke-static {v12, v7}, Lcom/android/server/PowerManagerService;->access$6602(Lcom/android/server/PowerManagerService;I)I

    .line 3115
    move/from16 p3, v4

    .line 3116
    move/from16 v0, p1

    or-int/lit16 v0, v0, 0x400

    move/from16 p1, v0

    .line 3130
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v12, v12, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v12, :cond_3

    .line 3131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_8

    const/4 v5, 0x0

    .line 3136
    .local v5, mode:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v5, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 3139
    .end local v5           #mode:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 3141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 3143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xa

    move/from16 v0, p1

    invoke-virtual {v12, v13, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 3145
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    move/from16 v0, p3

    int-to-long v13, v0

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3160
    .end local v3           #elapsed:I
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newValue:I
    .end local v8           #now:J
    :cond_4
    :goto_4
    monitor-exit p0

    .line 3161
    return-void

    .line 3098
    .restart local v1       #delta:I
    .restart local v3       #elapsed:I
    .restart local v7       #newValue:I
    .restart local v8       #now:J
    .restart local v10       #timePerStep:I
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3104
    .end local v1           #delta:I
    .end local v7           #newValue:I
    .end local v10           #timePerStep:I
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3105
    .restart local v7       #newValue:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$9502(Lcom/android/server/PowerManagerService;I)I

    .line 3106
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v12, :cond_1

    .line 3107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_1

    .line 3160
    .end local v3           #elapsed:I
    .end local v7           #newValue:I
    .end local v8           #now:J
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3117
    .restart local v3       #elapsed:I
    .restart local v7       #newValue:I
    .restart local v8       #now:J
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v12, :cond_2

    .line 3118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    goto/16 :goto_2

    .line 3131
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)I

    move-result v5

    goto/16 :goto_3

    .line 3147
    .end local v3           #elapsed:I
    .end local v7           #newValue:I
    .end local v8           #now:J
    :cond_9
    and-int/lit8 v12, p1, 0x3

    if-eqz v12, :cond_b

    const/4 v2, 0x1

    .line 3148
    .local v2, doScreenAnimation:Z
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-nez v12, :cond_c

    const/4 v11, 0x1

    .line 3150
    .local v11, turnOff:Z
    :goto_6
    const/16 v12, 0x7d0

    if-ne v4, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_a

    .line 3151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v13, 0x3

    #setter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    .line 3154
    :cond_a
    if-eqz v11, :cond_4

    if-eqz v2, :cond_4

    .line 3156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v13}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v13

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v12, v13}, Lcom/android/server/PowerManagerService;->access$9700(Lcom/android/server/PowerManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 3147
    .end local v2           #doScreenAnimation:Z
    .end local v11           #turnOff:Z
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 3148
    .restart local v2       #doScreenAnimation:Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_6
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 3176
    return-void
.end method

.method public animateTo(IIII)V
    .locals 5
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3179
    monitor-enter p0

    .line 3180
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_2

    .line 3182
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 3183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3185
    :cond_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    .line 3186
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3188
    :cond_1
    monitor-exit p0

    .line 3244
    :goto_0
    return-void

    .line 3190
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v3, p3

    if-eqz v3, :cond_3

    .line 3192
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3194
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3196
    const/4 p4, 0x0

    .line 3197
    if-lez p1, :cond_4

    .line 3198
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;Z)Z

    .line 3201
    :cond_4
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    .line 3202
    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .line 3203
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    .line 3204
    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    .line 3205
    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    .line 3206
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)F

    move-result v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    .line 3218
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v3, :cond_6

    .line 3219
    and-int/lit8 v3, p3, 0x3

    if-eqz v3, :cond_7

    move v0, v1

    .line 3220
    .local v0, doScreenAnim:Z
    :goto_1
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v3, :cond_8

    .line 3221
    .local v1, turningOff:Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 3222
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3224
    :cond_5
    if-eqz v0, :cond_6

    .line 3226
    const/16 v2, 0x7cb0

    if-ne p4, v2, :cond_9

    .line 3227
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3228
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    .line 3229
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mAbsCurValue:I
    invoke-static {v2, p1}, Lcom/android/server/PowerManagerService;->access$6602(Lcom/android/server/PowerManagerService;I)I

    .line 3230
    or-int/lit16 v2, p3, 0x400

    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .line 3243
    .end local v0           #doScreenAnim:Z
    .end local v1           #turningOff:Z
    :cond_6
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    move v0, v2

    .line 3219
    goto :goto_1

    .restart local v0       #doScreenAnim:Z
    :cond_8
    move v1, v2

    .line 3220
    goto :goto_2

    .line 3231
    .restart local v1       #turningOff:Z
    :cond_9
    if-nez p1, :cond_a

    .line 3232
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mAbsState:I
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    .line 3233
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    .line 3235
    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    goto :goto_3

    .line 3237
    :cond_a
    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    .line 3259
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3260
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    .line 3164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9800(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 3247
    monitor-enter p0

    .line 3248
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0

    return v0

    .line 3249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 3253
    monitor-enter p0

    .line 3254
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$3002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3076
    monitor-enter p0

    .line 3077
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$9402(Lcom/android/server/PowerManagerService;Z)Z

    .line 3078
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3079
    monitor-exit p0

    .line 3080
    return-void

    .line 3079
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
