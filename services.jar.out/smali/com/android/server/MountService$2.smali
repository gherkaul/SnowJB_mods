.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 679
    :try_start_0
    const-string v10, "vold.decrypt"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "trigger_restart_min_framework"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 722
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 723
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 726
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v10}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 729
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 730
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    :goto_0
    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 732
    return-void

    .line 682
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "volume"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "list"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v10

    const/16 v11, 0x6e

    invoke-static {v10, v11}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, vols:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v9, v0, v2

    .line 688
    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 690
    .local v7, tok:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v4, v7, v10

    .line 691
    .local v4, path:Ljava/lang/String;
    const-string v6, "removed"

    .line 693
    .local v6, state:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 694
    .local v5, st:I
    if-nez v5, :cond_2

    .line 695
    const-string v6, "removed"

    .line 708
    :goto_2
    if-eqz v6, :cond_1

    .line 710
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v6}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    :cond_2
    const/4 v10, 0x1

    if-ne v5, v10, :cond_3

    .line 697
    const-string v6, "unmounted"

    goto :goto_2

    .line 698
    :cond_3
    const/4 v10, 0x4

    if-ne v5, v10, :cond_4

    .line 699
    const-string v6, "mounted"

    .line 700
    const-string v10, "MountService"

    const-string v11, "Media already mounted on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 713
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 714
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "MountService"

    const-string v11, "Error processing initial volume state"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 723
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 726
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v10}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 729
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 730
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    goto/16 :goto_0

    .line 701
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x7

    if-ne v5, v10, :cond_5

    .line 702
    :try_start_3
    const-string v6, "shared"

    .line 703
    const-string v10, "MountService"

    const-string v11, "Media shared on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 722
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 723
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 726
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v11}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 729
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 730
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 722
    throw v10

    .line 705
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unexpected state %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 722
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 723
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 726
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v10}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 729
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 730
    iget-object v10, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    goto/16 :goto_0
.end method
