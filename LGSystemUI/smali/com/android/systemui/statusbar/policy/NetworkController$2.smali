.class Lcom/android/systemui/statusbar/policy/NetworkController$2;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v3, 0x7f02032e

    .line 1527
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1528
    iget v1, p1, Landroid/os/Message;->what:I

    if-ltz v1, :cond_1

    .line 1529
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1530
    .local v0, iconLevel:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_BAR4:[[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1531
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_NEW:[[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1532
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No service delay handler iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1534
    if-nez v0, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mRssiRangeCount:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mFirstDelayLevel:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x7d0

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1550
    .end local v0           #iconLevel:I
    :goto_0
    return-void

    .line 1537
    .restart local v0       #iconLevel:I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, v0, -0x1

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1539
    .end local v0           #iconLevel:I
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1540
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "No service delay handler EmergencyOnly state"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v3, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1542
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iput v3, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1547
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCheckDelayHandler:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 1548
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 1544
    :cond_2
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "No service delay handler show X iconLevel"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mNoServiceIcon:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    iput v3, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    goto :goto_1
.end method
