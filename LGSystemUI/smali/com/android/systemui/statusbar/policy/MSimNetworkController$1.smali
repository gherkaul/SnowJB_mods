.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;
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
    .line 424
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged received on BAL.SIM_1 :0state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 477
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 497
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity received on BAL.SIM_1 :0direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aput p1, v0, v3

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 503
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 482
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged received on BAL.SIM_1 :0state="

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

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataStateSUB1:I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetTypeSUB1:I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 492
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 441
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on BAL.SIM_1 :0state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
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

    .line 444
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMSimServiceState[BAL.SIM_1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "BAL.SIM_1]0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v0, v3

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    aput v1, v0, v3

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    sget-object v1, Lcom/lge/systemui/BAL;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-static {v1, v3}, Lcom/lge/systemui/BAL;->getNetworkType(Landroid/telephony/TelephonyManager;I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetTypeSUB1:I

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimActiveState(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 459
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v4, 0x0

    .line 428
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on BAL.SIM_1 :0signalStrength="

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

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v0, v4

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimActiveState(I)V
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 436
    return-void

    .line 428
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
