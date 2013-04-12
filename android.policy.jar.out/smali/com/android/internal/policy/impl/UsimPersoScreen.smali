.class public Lcom/android/internal/policy/impl/UsimPersoScreen;
.super Landroid/widget/LinearLayout;
.source "UsimPersoScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;,
        Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;,
        Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1b58

.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPersoScreen"

.field private static mStrTitleEnterPin:Ljava/lang/String;

.field private static mStrTitleRetryCount:Ljava/lang/String;

.field private static mStrTitleWrongPin:Ljava/lang/String;

.field private static mStrWrongPinMsg:Ljava/lang/String;

.field public static service_provider:Ljava/lang/String;


# instance fields
.field private KT_UsimPerso_retry_count:I

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field private mOkButton:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mRetryText:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

.field private maxDigits:I

.field private minDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->DIGITS:[C

    .line 113
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->service_provider:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    .line 116
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    .line 117
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    .line 118
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    return-void

    .line 103
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    .line 95
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredPin:[I

    .line 96
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 97
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    .line 98
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 112
    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 131
    iput-object p3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 132
    iput-object p4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    .line 136
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCreationOrientation:I

    .line 137
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    .line 138
    iput-object p5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->readStringFromResource()V

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_3

    .line 144
    const v1, 0x1090052

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    :goto_0
    const-string v1, "UsimPersoScreen"

    const-string v2, "UsimPersoScreen() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v1, 0x10202c4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    .line 154
    const v1, 0x10202c9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    .line 156
    const v1, 0x10202c6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    .line 157
    const v1, 0x10202c7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x10202a0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 161
    const v1, 0x10202a6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    .line 162
    const v1, 0x1020275

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v1, v2, :cond_4

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_5

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 182
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-eq v1, v4, :cond_2

    .line 190
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 193
    :cond_2
    return-void

    .line 146
    :cond_3
    const v1, 0x1090053

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    new-instance v1, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Lcom/android/internal/policy/impl/UsimPersoScreen$1;)V

    goto/16 :goto_0

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->setFocusableInTouchMode(Z)V

    goto :goto_2

    .line 95
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    return v0
.end method

.method static synthetic access$1210(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/UsimPersoScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/UsimPersoScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    return-object v0
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    if-ge v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 427
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->getUSIMPersoUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 371
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen$1;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->start()V

    goto :goto_0
.end method

.method private getUSIMPersoUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    const v2, 0x20c0246

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040343

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    if-ne v0, v1, :cond_1

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 346
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x2020250

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 352
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 354
    return-void
.end method


# virtual methods
.method public OnLocaleChange()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public SetEnableOKbtn(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    if-ne p1, v2, :cond_1

    .line 494
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    if-lez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 508
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onAlarmChanged()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x1b58

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 283
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 284
    .local v0, digits:Landroid/text/Editable;
    if-eqz v0, :cond_2

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v4, :cond_4

    .line 286
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 287
    .local v1, len:I
    if-lez v1, :cond_0

    .line 288
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 289
    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 291
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-le v2, v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 295
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-le v4, v5, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v4, v2, :cond_3

    :goto_0
    if-nez v2, :cond_2

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 321
    .end local v1           #len:I
    :cond_2
    :goto_1
    return-void

    .restart local v1       #len:I
    :cond_3
    move v2, v3

    .line 295
    goto :goto_0

    .line 302
    .end local v1           #len:I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x3a98

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_1

    .line 310
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_6

    .line 311
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 312
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->checkPin()V

    goto :goto_1

    .line 314
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 431
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 433
    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 439
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/UsimPersoScreen;->DIGITS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 440
    .local v0, match:C
    if-eqz v0, :cond_3

    .line 441
    add-int/lit8 v3, v0, -0x30

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V

    .line 444
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v3, v1, :cond_2

    move v2, v1

    :cond_2
    if-nez v2, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0

    .line 449
    :cond_3
    const/16 v3, 0x43

    if-ne p1, v3, :cond_5

    .line 450
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-lez v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 452
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 455
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v3, v1, :cond_4

    move v3, v1

    :goto_1
    if-nez v3, :cond_0

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 455
    goto :goto_1

    .line 462
    :cond_5
    const/16 v3, 0x42

    if-ne p1, v3, :cond_6

    .line 463
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->checkPin()V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 467
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 672
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 656
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 660
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 676
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 679
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-eq v0, v3, :cond_0

    .line 217
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v0, v1, :cond_1

    .line 218
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 682
    return-void
.end method

.method public onServiceStateChanged()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public readNetworkOperator()V
    .locals 3

    .prologue
    .line 641
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 650
    :goto_0
    const-string v0, "UsimPersoScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNetworkOperator: mNetworkOpeator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 643
    :cond_0
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0

    .line 645
    :cond_1
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_LGT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0

    .line 648
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0
.end method

.method public readStringFromResource()V
    .locals 7

    .prologue
    const v6, 0x20c0262

    const v5, 0x20c0261

    const v4, 0x20c025f

    const/4 v3, 0x4

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 609
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->readNetworkOperator()V

    .line 611
    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v1, v2, :cond_1

    .line 617
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    .line 618
    const v1, 0x20c0260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    .line 619
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    .line 621
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    .line 622
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v1, v2, :cond_0

    .line 627
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    .line 628
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    .line 629
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    .line 630
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    .line 631
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    .line 632
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    goto :goto_0
.end method
