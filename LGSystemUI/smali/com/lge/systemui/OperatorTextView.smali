.class public Lcom/lge/systemui/OperatorTextView;
.super Landroid/widget/TextView;
.source "OperatorTextView.java"


# instance fields
.field private final SPN_STRINGS_UPDATED_ACTION:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/systemui/OperatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/systemui/OperatorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v1, 0x12

    iput v1, p0, Lcom/lge/systemui/OperatorTextView;->SPN_STRINGS_UPDATED_ACTION:I

    .line 71
    new-instance v1, Lcom/lge/systemui/OperatorTextView$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/OperatorTextView$1;-><init>(Lcom/lge/systemui/OperatorTextView;)V

    iput-object v1, p0, Lcom/lge/systemui/OperatorTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 78
    new-instance v1, Lcom/lge/systemui/OperatorTextView$2;

    invoke-direct {v1, p0}, Lcom/lge/systemui/OperatorTextView$2;-><init>(Lcom/lge/systemui/OperatorTextView;)V

    iput-object v1, p0, Lcom/lge/systemui/OperatorTextView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, p1}, Lcom/lge/systemui/OperatorTextView;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/OperatorTextView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/lge/systemui/OperatorTextView;->updateNetworkName(Ljava/lang/String;)V

    return-void
.end method

.method private updateNetworkName(Ljava/lang/String;)V
    .locals 7
    .parameter "plmn"

    .prologue
    const v6, 0x7f0203e3

    const v5, 0x7f0203e2

    const/high16 v4, 0x4180

    const/high16 v3, 0x4160

    const/4 v2, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/lge/systemui/OperatorTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setMaxWidth(I)V

    .line 92
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 93
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/lge/systemui/OperatorTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextColor(I)V

    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/lge/systemui/OperatorTextView;->setTextSize(IF)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    .line 127
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 101
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/lge/systemui/OperatorTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p0, v2, v4}, Lcom/lge/systemui/OperatorTextView;->setTextSize(IF)V

    .line 104
    const-string v0, "SKT"

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 109
    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/lge/systemui/OperatorTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextColor(I)V

    .line 111
    invoke-virtual {p0, v2, v4}, Lcom/lge/systemui/OperatorTextView;->setTextSize(IF)V

    .line 112
    const-string v0, "olleh"

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 114
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 116
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 117
    if-eqz p1, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-virtual {p0}, Lcom/lge/systemui/OperatorTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextColor(I)V

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/lge/systemui/OperatorTextView;->setTextSize(IF)V

    .line 120
    const-string v0, "Orange F"

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    :cond_6
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setTextOperator(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 125
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 145
    :cond_0
    return-void
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    .line 68
    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 69
    return-void
.end method

.method public setTextOperator(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/systemui/OperatorTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/systemui/OperatorTextView;->setVisibility(I)V

    goto :goto_0
.end method
