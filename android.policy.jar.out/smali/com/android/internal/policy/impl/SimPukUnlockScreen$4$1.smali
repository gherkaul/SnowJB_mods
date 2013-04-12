.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->onSimLockChangedResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iput p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 600
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 603
    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 610
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->val$result:I

    if-nez v3, :cond_1

    .line 613
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->SET_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    invoke-static {v3, v4, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 614
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 615
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 637
    :goto_1
    return-void

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "SimPukUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PUK dialog..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 623
    .local v0, attemptsRemaining:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 624
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    move-result-object v4

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    invoke-static {v3, v4, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 628
    .end local v0           #attemptsRemaining:I
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1102(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I

    .line 632
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 633
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    goto :goto_1

    .line 625
    :catch_1
    move-exception v2

    .line 626
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    invoke-static {v3, v4, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_2
.end method
