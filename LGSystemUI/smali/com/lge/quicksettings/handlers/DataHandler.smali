.class public Lcom/lge/quicksettings/handlers/DataHandler;
.super Lcom/lge/quicksettings/handlers/AbstractDataHandler;
.source "DataHandler.java"


# instance fields
.field private mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/DataHandler;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/DataHandler;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 102
    :cond_1
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 106
    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 110
    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 113
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 116
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method


# virtual methods
.method public onClick()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 64
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_3

    .line 65
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f09010e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v7, v8}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 92
    :cond_1
    :goto_0
    return v1

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f09010d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v7, v8}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-eq v2, v5, :cond_4

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 76
    :cond_4
    iget-boolean v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPending:Z

    if-nez v2, :cond_1

    .line 80
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPending:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 83
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lge/quicksettings/handlers/DataHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/DataHandler$2;-><init>(Lcom/lge/quicksettings/handlers/DataHandler;)V

    iget v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPendingDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .end local v0           #handler:Landroid/os/Handler;
    :cond_5
    invoke-super {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->onClick()Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 3
    .parameter "data"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, nReturn:I
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 33
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 34
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v2, Lcom/lge/quicksettings/handlers/DataHandler$1;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/DataHandler$1;-><init>(Lcom/lge/quicksettings/handlers/DataHandler;)V

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 46
    invoke-super {p0, p1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 49
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler;->mReceiverDataSIM:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 60
    :cond_0
    return-void
.end method
