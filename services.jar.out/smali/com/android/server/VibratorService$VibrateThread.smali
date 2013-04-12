.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 513
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 514
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 515
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1000(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 516
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 517
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 520
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 524
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 535
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 531
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 533
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 526
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 538
    const/4 v8, -0x8

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 539
    monitor-enter p0

    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, index:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 542
    .local v5, pattern:[J
    array-length v4, v5

    .line 543
    .local v4, len:I
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 544
    .local v6, repeat:I
    const-wide/16 v0, 0x0

    .line 547
    .local v0, duration:J
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPatternVolume:[I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_a

    .line 548
    const/4 v7, 0x0

    .local v7, volume:I
    move v3, v2

    .line 549
    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v8, :cond_b

    .line 551
    if-ge v3, v4, :cond_0

    .line 552
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_2
    aget-wide v8, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v0, v8

    move v3, v2

    .line 556
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_0
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 557
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_3

    move v2, v3

    .line 610
    .end local v3           #index:I
    .end local v7           #volume:I
    .restart local v2       #index:I
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 612
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v9

    monitor-enter v9

    .line 613
    :try_start_5
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v8, p0, :cond_1

    .line 614
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 616
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v8, :cond_2

    .line 619
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v10, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #calls: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v8, v10}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 621
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 623
    :cond_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 624
    return-void

    .line 561
    .end local v2           #index:I
    .restart local v3       #index:I
    .restart local v7       #volume:I
    :cond_3
    if-ge v3, v4, :cond_4

    .line 564
    :try_start_6
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPatternVolume:[I
    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    aget v7, v8, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 565
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_7
    aget-wide v0, v5, v3

    .line 566
    cmp-long v8, v0, v10

    if-lez v8, :cond_c

    .line 567
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
    invoke-static {v8, v0, v1, v7}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;JI)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 570
    :cond_4
    if-gez v6, :cond_5

    move v2, v3

    .line 571
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 573
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_5
    move v2, v6

    .line 574
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 592
    .end local v7           #volume:I
    :cond_6
    if-ge v3, v4, :cond_8

    .line 595
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-wide v0, v5, v3

    .line 596
    cmp-long v8, v0, v10

    if-lez v8, :cond_a

    .line 597
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->doVibratorOn(J)V
    invoke-static {v8, v0, v1}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v3, v2

    .line 580
    .end local v2           #index:I
    .restart local v3       #index:I
    :goto_2
    :try_start_8
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v8, :cond_b

    .line 582
    if-ge v3, v4, :cond_7

    .line 583
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_9
    aget-wide v8, v5, v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    add-long/2addr v0, v8

    move v3, v2

    .line 587
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_7
    :try_start_a
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 588
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v8, :cond_6

    move v2, v3

    .line 589
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 600
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_8
    if-gez v6, :cond_9

    move v2, v3

    .line 601
    .end local v3           #index:I
    .restart local v2       #index:I
    goto/16 :goto_1

    .line 603
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_9
    move v2, v6

    .line 604
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    .line 611
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .restart local v2       #index:I
    :catchall_0
    move-exception v8

    :goto_3
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v8

    .line 623
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    :catchall_1
    move-exception v8

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v8

    .line 611
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_2
    move-exception v8

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_3

    :cond_a
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_2

    :cond_b
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto/16 :goto_1

    .restart local v7       #volume:I
    :cond_c
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0
.end method
