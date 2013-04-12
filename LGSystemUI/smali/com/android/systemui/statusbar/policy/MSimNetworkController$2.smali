.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getMPhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 549
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged received on BAL.SIM_2 :1state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 563
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 583
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity received on BAL.SIM_2 :1direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aput p1, v0, v3

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 589
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v3, 0x1

    .line 568
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged received on BAL.SIM_2 :1state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataStateSUB2:I

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetTypeSUB2:I

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 578
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 525
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on BAL.SIM_2 :1state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BAL.getDefaultSim()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lge/systemui/BAL;->getDefaultSim()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMSimServiceState[BAL.SIM_2]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "BAL.SIM_2]1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v0, v3

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    aput v1, v0, v3

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    sget-object v1, Lcom/lge/systemui/BAL;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {v1, v3}, Lcom/lge/systemui/BAL;->getNetworkType(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetTypeSUB2:I

    .line 536
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener:onServiceStateChanged sim2 mDataNetType sim2= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetTypeSUB2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimActiveState(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 544
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v4, 0x1

    .line 512
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on BAL.SIM_2 :1signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v0, v4

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimActiveState(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 520
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
