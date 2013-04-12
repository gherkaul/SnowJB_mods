.class Lcom/android/internal/policy/impl/UsimPersoScreen$1;
.super Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;
.source "UsimPersoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UsimPersoScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onUsimPersoChangedResponse(Z)V
    .locals 8
    .parameter "success"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 373
    const-string v4, "UsimPersoScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUsimPersoChangedResponse success= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$200(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$200(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 377
    :cond_0
    if-eqz p1, :cond_2

    .line 379
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, simUnlockIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$300(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUSIMPersoFinish()V

    .line 387
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 425
    .end local v1           #simUnlockIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$600(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$700(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #setter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$802(Lcom/android/internal/policy/impl/UsimPersoScreen;I)I

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v5, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v4, v5, :cond_3

    .line 398
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$900()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1000()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/UsimPersoScreen;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1100(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$600(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v5, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v4, v5, :cond_5

    .line 414
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$700(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #setter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$802(Lcom/android/internal/policy/impl/UsimPersoScreen;I)I

    .line 421
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1500(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 422
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1600(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v4

    if-ne v4, v2, :cond_6

    :goto_3
    if-nez v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto/16 :goto_0

    .line 401
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1210(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    .line 403
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1200(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v4

    if-nez v4, :cond_4

    .line 404
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c0263

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$900()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/UsimPersoScreen;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1100(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x20c0264

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1200(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 416
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1200(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    move v2, v3

    .line 422
    goto :goto_3
.end method
