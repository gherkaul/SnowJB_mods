.class Lcom/android/server/LightsService$FlashingTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashingTask"
.end annotation


# instance fields
.field private mColor:I

.field private mFirstOffMS:I

.field private mFirstOnMS:I

.field private mIsLGAppLED:Z

.field private mIsLightOn:Z

.field private mLight:Lcom/android/server/LightsService$Light;

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mSecondFlashingEndNoCharing:J

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 491
    iput-object p1, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    .line 486
    iput-boolean v3, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 487
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    .line 488
    iput-boolean v3, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLGAppLED:Z

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.LIGHTS_FLASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/server/LightsService;->intent:Landroid/content/Intent;

    .line 494
    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/LightsService;->intent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    .line 495
    return-void
.end method


# virtual methods
.method flashingFinish(Lcom/android/server/LightsService$Light;)V
    .locals 6
    .parameter "light"

    .prologue
    const/4 v5, 0x0

    .line 695
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    if-eqz v2, :cond_1

    .line 696
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flashingFinish mLight.mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {v4}, Lcom/android/server/LightsService$Light;->access$1800(Lcom/android/server/LightsService$Light;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " light.mId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {p1}, Lcom/android/server/LightsService$Light;->access$1800(Lcom/android/server/LightsService$Light;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {v2}, Lcom/android/server/LightsService$Light;->access$1800(Lcom/android/server/LightsService$Light;)I

    move-result v2

    #getter for: Lcom/android/server/LightsService$Light;->mId:I
    invoke-static {p1}, Lcom/android/server/LightsService$Light;->access$1800(Lcom/android/server/LightsService$Light;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 698
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mIsFlashingOn:Z
    invoke-static {v2, v5}, Lcom/android/server/LightsService;->access$1202(Lcom/android/server/LightsService;Z)Z

    .line 700
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    iput-boolean v5, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 703
    :try_start_0
    invoke-static {}, Lcom/android/server/LightsService;->getAlarmService()Landroid/app/IAlarmManager;

    move-result-object v0

    .line 704
    .local v0, alarmService:Landroid/app/IAlarmManager;
    if-eqz v0, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v2, v2, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    invoke-interface {v0, v2}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v0           #alarmService:Landroid/app/IAlarmManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v2, v2, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->releaseForInner(I)V

    .line 714
    :cond_1
    return-void

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "LightsService"

    const-string v3, "RemoteException from getAlarmService()"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method flashingStart(Lcom/android/server/LightsService$Light;IIII)V
    .locals 13
    .parameter "light"
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    .line 609
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v10, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v10, v10, Lcom/android/server/LightsService;->mIsCharging:Z

    iput-boolean v10, v9, Lcom/android/server/LightsService;->mOldIsCharging:Z

    .line 610
    iput-object p1, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    .line 611
    iput p2, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    .line 612
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mFirstOnMS:I

    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOnMS:I

    .line 613
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mFirstOffMS:I

    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOffMS:I

    .line 615
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/LightsService;->mIsFlashingOn:Z
    invoke-static {v9, v10}, Lcom/android/server/LightsService;->access$1202(Lcom/android/server/LightsService;Z)Z

    .line 616
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v9}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 617
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v9, v9, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquireForInner()V

    .line 620
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 624
    .local v4, currTime:J
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v9}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 625
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "R"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 626
    const/high16 v9, -0x1

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    .line 668
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v9}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 669
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol_2:Z
    invoke-static {v9}, Lcom/android/server/LightsService;->access$1700(Lcom/android/server/LightsService;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 670
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingInitTime:J
    invoke-static {v9}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)J

    move-result-wide v9

    sget v11, Lcom/android/server/LightsService;->FLASH_CHARGING_PERIOD:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    .line 677
    :goto_1
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    const/4 v10, -0x1

    #setter for: Lcom/android/server/LightsService;->mCurrentPattern:I
    invoke-static {v9, v10}, Lcom/android/server/LightsService;->access$1502(Lcom/android/server/LightsService;I)I

    .line 682
    :try_start_0
    invoke-static {}, Lcom/android/server/LightsService;->getAlarmService()Landroid/app/IAlarmManager;

    move-result-object v1

    .line 683
    .local v1, alarmService:Landroid/app/IAlarmManager;
    if-eqz v1, :cond_2

    .line 684
    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    add-long/2addr v10, v4

    iget-object v12, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v12, v12, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    invoke-interface {v1, v9, v10, v11, v12}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v1           #alarmService:Landroid/app/IAlarmManager;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v9}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 690
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v9, v9, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/PowerManager$WakeLock;->releaseForInner(I)V

    .line 691
    :cond_3
    return-void

    .line 627
    :cond_4
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 628
    const v9, -0xff0100

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    goto :goto_0

    .line 633
    :cond_5
    iget v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    .line 634
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLGAppLED:Z

    .line 635
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "R"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 636
    const/high16 v9, -0x1

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    goto :goto_0

    .line 637
    :cond_6
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 638
    const v9, -0xff0100

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    goto/16 :goto_0

    .line 639
    :cond_7
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RGB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 640
    const v9, -0xffff01

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    goto/16 :goto_0

    .line 645
    :cond_8
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "R"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 646
    const/high16 v9, -0x1

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    .line 664
    :cond_9
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLGAppLED:Z

    goto/16 :goto_0

    .line 647
    :cond_a
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->getPowerLEDColorByOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 648
    shr-int/lit8 v9, p2, 0x10

    and-int/lit16 v8, v9, 0xff

    .line 649
    .local v8, red:I
    shr-int/lit8 v9, p2, 0x8

    and-int/lit16 v7, v9, 0xff

    .line 650
    .local v7, green:I
    and-int/lit16 v3, p2, 0xff

    .line 651
    .local v3, blue:I
    ushr-int/lit8 v2, p2, 0x18

    .line 653
    .local v2, alpha:I
    if-lez v8, :cond_b

    .line 654
    const/high16 v8, 0xff

    .line 655
    :cond_b
    if-lez v7, :cond_c

    .line 656
    const v7, 0xff00

    .line 657
    :cond_c
    if-lez v3, :cond_d

    .line 658
    const v7, 0xff00

    .line 659
    :cond_d
    if-lez v2, :cond_e

    .line 660
    const/high16 v2, -0x100

    .line 662
    :cond_e
    add-int v9, v2, v8

    add-int/2addr v9, v7

    iput v9, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    goto :goto_3

    .line 672
    .end local v2           #alpha:I
    .end local v3           #blue:I
    .end local v7           #green:I
    .end local v8           #red:I
    :cond_f
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingInitTime:J
    invoke-static {v9}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)J

    move-result-wide v9

    const-wide v11, 0x202fbf000L

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    goto/16 :goto_1

    .line 674
    :cond_10
    iget-object v9, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingInitTime:J
    invoke-static {v9}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)J

    move-result-wide v9

    sget v11, Lcom/android/server/LightsService;->FLASH_CHARGING_PERIOD:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    goto/16 :goto_1

    .line 686
    :catch_0
    move-exception v6

    .line 687
    .local v6, ex:Landroid/os/RemoteException;
    const-string v9, "LightsService"

    const-string v10, "RemoteException from getAlarmService()"

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method lcdStateChanged()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mIsFlashingOn:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1200(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$1600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 725
    iput-boolean v1, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 726
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v0, v0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->releaseForInner(I)V

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/LightsService;->mCurrentPattern:I
    invoke-static {v0, v1}, Lcom/android/server/LightsService;->access$1502(Lcom/android/server/LightsService;I)I

    .line 734
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 499
    monitor-enter p0

    .line 501
    :try_start_0
    const-string v0, "LightsService"

    const-string v1, "FlashingTask.run()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 504
    .local v9, now:J
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mFlashingNoTimeoutOnCharging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mIsCharging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mOldIsCharging:Z

    if-ne v0, v2, :cond_0

    .line 508
    sget v0, Lcom/android/server/LightsService;->FLASH_CHARGING_PERIOD:I

    int-to-long v0, v0

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    .line 512
    :cond_0
    iget-wide v0, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    cmp-long v0, v9, v0

    if-ltz v0, :cond_3

    .line 513
    const/4 v8, 0x1

    .line 514
    .local v8, flashingEnd:Z
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mFlashingNoTimeoutOnCharging:Z

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mIsCharging:Z

    if-eqz v0, :cond_1

    .line 516
    const/4 v8, 0x0

    .line 519
    :cond_1
    if-eqz v8, :cond_2

    .line 520
    const-string v0, "LightsService"

    const-string v1, "flashing timeout...Stop flashing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 522
    monitor-exit p0

    .line 605
    .end local v8           #flashingEnd:Z
    :goto_0
    return-void

    .line 525
    .restart local v8       #flashingEnd:Z
    :cond_2
    const-string v0, "LightsService"

    const-string v1, "flashing timeout...but, this operator don\'t stop when charging"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v8           #flashingEnd:Z
    :cond_3
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v1, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v1, v1, Lcom/android/server/LightsService;->mIsCharging:Z

    iput-boolean v1, v0, Lcom/android/server/LightsService;->mOldIsCharging:Z

    .line 531
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 532
    iget-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLGAppLED:Z

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    invoke-static {v0}, Lcom/android/server/LightsService;->access$1508(Lcom/android/server/LightsService;)I

    .line 536
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mCurrentPattern:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 558
    :cond_4
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/server/LightsService;->getAlarmService()Landroid/app/IAlarmManager;

    move-result-object v6

    .line 560
    .local v6, alarmService:Landroid/app/IAlarmManager;
    if-eqz v6, :cond_5

    .line 561
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mFlashingDefendOnLCD:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 562
    const-string v0, "LightsService"

    const-string v1, "flashing paused because of LCD On!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v0, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    if-eqz v0, :cond_5

    .line 564
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$1600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 566
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 567
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v0, v0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->releaseForInner(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    .end local v6           #alarmService:Landroid/app/IAlarmManager;
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v9           #now:J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 539
    .restart local v9       #now:J
    :pswitch_0
    const/16 v0, 0x1f4

    :try_start_3
    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOnMS:I

    .line 540
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/LightsService;->mCurrentPattern:I
    invoke-static {v0, v1}, Lcom/android/server/LightsService;->access$1502(Lcom/android/server/LightsService;I)I

    goto :goto_1

    .line 543
    :pswitch_1
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOffMS:I

    goto :goto_1

    .line 546
    :pswitch_2
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOnMS:I

    goto :goto_1

    .line 549
    :pswitch_3
    sget v0, Lcom/android/server/LightsService;->FLASH_4_OFFTIME:I

    iput v0, p0, Lcom/android/server/LightsService$FlashingTask;->mOffMS:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 572
    .restart local v6       #alarmService:Landroid/app/IAlarmManager;
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingUseHWContol:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 575
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    iget v1, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$1600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 577
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/server/LightsService$FlashingTask;->mSecondFlashingEndNoCharing:J

    iget-object v3, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v3, v3, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 601
    .end local v6           #alarmService:Landroid/app/IAlarmManager;
    :catch_0
    move-exception v7

    .line 602
    .local v7, ex:Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "LightsService"

    const-string v1, "RemoteException from getAlarmService()"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 580
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v6       #alarmService:Landroid/app/IAlarmManager;
    :cond_7
    :try_start_6
    iget-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    if-nez v0, :cond_9

    .line 581
    const-string v0, "LightsService"

    const-string v1, "flashing...LED ON!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v0, v0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_8

    .line 583
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v0, v0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquireForInner()V

    .line 585
    :cond_8
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    iget v1, p0, Lcom/android/server/LightsService$FlashingTask;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$1600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 588
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/LightsService$FlashingTask;->mOnMS:I

    int-to-long v1, v1

    add-long/2addr v1, v9

    iget-object v3, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v3, v3, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 591
    :cond_9
    const-string v0, "LightsService"

    const-string v1, "flashing...LED OFF!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->mLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$1600(Lcom/android/server/LightsService$Light;IIIII)V

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService$FlashingTask;->mIsLightOn:Z

    .line 595
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/LightsService$FlashingTask;->mOffMS:I

    int-to-long v1, v1

    add-long/2addr v1, v9

    iget-object v3, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v3, v3, Lcom/android/server/LightsService;->sender:Landroid/app/PendingIntent;

    invoke-interface {v6, v0, v1, v2, v3}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/LightsService$FlashingTask;->this$0:Lcom/android/server/LightsService;

    iget-object v0, v0, Lcom/android/server/LightsService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->releaseForInner(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
