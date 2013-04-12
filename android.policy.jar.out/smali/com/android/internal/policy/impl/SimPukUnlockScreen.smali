.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/LgeDockStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final BUILD_TARGET_DCM:Ljava/lang/String; = "DCM"

.field private static final DBG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x2710

.field private static final KEYPAD_CANCEL_FONT_SIZE_EN:F = 17.33f

.field private static final KEYPAD_CANCEL_FONT_SIZE_JA:F = 15.33f

.field private static final KEYPAD_NUMBER_FONT_SIZE:F = 23.33f

.field private static final KEYPAD_OK_FONT_SIZE:F = 17.33f

.field private static final LANGUAGE_EN:Ljava/lang/String; = "en"

.field private static final LANGUAGE_JA:Ljava/lang/String; = "ja"

.field private static final LOG_TAG:Ljava/lang/String; = "SimPukUnlockScreen"

.field private static countrycode:Ljava/lang/String;

.field private static operator:Ljava/lang/String;


# instance fields
.field private IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentLanguage:Ljava/lang/String;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mDelPukButton:Landroid/view/View;

.field private mEmergencyText:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPinCode:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mProductName:Ljava/lang/String;

.field private mPukCode:Ljava/lang/String;

.field private mPukText:Landroid/widget/TextView;

.field private mRetryText:Landroid/widget/TextView;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private mSubscription:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field public mdialog:Landroid/app/AlertDialog;

.field private service_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    .line 134
    sput-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->countrycode:Ljava/lang/String;

    .line 135
    sput-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->operator:Ljava/lang/String;

    return-void

    .line 118
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

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 12
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "subscription"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    .line 128
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->currentLanguage:Ljava/lang/String;

    .line 133
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    .line 138
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 178
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 180
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    .line 181
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 182
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 187
    move/from16 v0, p6

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    .line 189
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 190
    .local v9, inflater:Landroid/view/LayoutInflater;
    const-string v1, "SimPukUnlockScreen"

    const-string v2, "[UICC] Regist ICC Removed BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    const v1, 0x2030003

    const/4 v2, 0x1

    invoke-virtual {v9, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    .line 211
    const v1, 0x10202c4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 212
    const v1, 0x10202c9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    .line 213
    const v1, 0x10202c6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 219
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    const v1, 0x10202cc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyText:Landroid/widget/TextView;

    .line 224
    :cond_1
    const v1, 0x10202c7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 225
    const v1, 0x10202a6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 226
    const v1, 0x1020275

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 234
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v7

    .line 236
    .local v7, attemptsRemaining:I
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1, v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_err_popup_msg"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_err_popup_msg"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1, v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 246
    :cond_2
    const-string v1, "SimPukUnlockScreen"

    const-string v2, "0<=remain<10"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v7           #attemptsRemaining:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 251
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 254
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 263
    :goto_2
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 264
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v10, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    .line 277
    .local v10, listener:Landroid/telephony/PhoneStateListener;
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v11, v10, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyText:Landroid/widget/TextView;

    const v2, 0x104033b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->currentLanguage:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->currentLanguage:Ljava/lang/String;

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x418aa3d7

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x417547ae

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    :cond_4
    :goto_3
    return-void

    .line 201
    .end local v10           #listener:Landroid/telephony/PhoneStateListener;
    .end local v11           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    const v1, 0x1090054

    const/4 v2, 0x1

    invoke-virtual {v9, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 206
    :cond_6
    const v1, 0x1090053

    const/4 v2, 0x1

    invoke-virtual {v9, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v8

    .line 248
    .local v8, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto/16 :goto_1

    .line 258
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_7
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto/16 :goto_2

    .line 290
    .restart local v10       #listener:Landroid/telephony/PhoneStateListener;
    .restart local v11       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x418aa3d7

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x418aa3d7

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 89
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

.method static synthetic access$000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 596
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$4;->start()V

    .line 642
    return-void
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 529
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x20c0246

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 532
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x20c025a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x20c023a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040343

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getState()Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1034
    const-string v0, "SimPukUnlockScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 762
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "reportDigit mEnteredDigits == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 766
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "reportDigit mEnteredDigits == 8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 10
    .parameter "state"
    .parameter "retryCount"

    .prologue
    const v6, 0x20c0253

    const/16 v9, 0xa

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, mStrTitleWrongPuk:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1136
    .local v1, popupMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1137
    .local v2, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1158
    if-lez p2, :cond_e

    .line 1159
    if-ne p2, v7, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1160
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "attemptsRemaining == 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00ec

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1228
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1230
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-ne p2, v9, :cond_13

    .line 1231
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialogDCM(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_1
    :goto_1
    return-void

    .line 1140
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1141
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c025c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1143
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1145
    goto :goto_0

    .line 1147
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1150
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1153
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1163
    :cond_4
    if-ne p2, v9, :cond_9

    .line 1164
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "attemptsRemaining == 10"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1167
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c024d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1169
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1171
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c024e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1172
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1174
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c024f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1175
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1176
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0238

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1178
    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00ed

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1183
    :cond_9
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "attemptsRemaining is not 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1185
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1187
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0254

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1188
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0255

    new-array v5, v5, [Ljava/lang/Object;

    rsub-int/lit8 v6, p2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1189
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1191
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c025e

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1192
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1194
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0256

    new-array v5, v5, [Ljava/lang/Object;

    rsub-int/lit8 v6, p2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1197
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x20c025d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x20c00ef

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1201
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00da

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1205
    :cond_e
    if-nez p2, :cond_0

    .line 1206
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1207
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1209
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0254

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0257

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1211
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1213
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0258

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1214
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1216
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0259

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1219
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1220
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0239

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1222
    :cond_12
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1233
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1137
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 775
    return-void
.end method

.method private setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 10
    .parameter "state"
    .parameter "retryCount"

    .prologue
    const v9, 0x20c0252

    const v5, 0x20c0247

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x20c00ef

    .line 1045
    const/4 v0, 0x0

    .line 1046
    .local v0, mHeaderTextString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1047
    .local v1, mRetryTextString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1049
    .local v2, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1113
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1114
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1116
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0248

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    return-void

    .line 1052
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1053
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1055
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1056
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1057
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1059
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c00d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1061
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1064
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c0251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1067
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20c0235

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20c0236

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    :goto_1
    if-nez p2, :cond_0

    .line 1078
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto/16 :goto_0

    .line 1072
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c00d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1084
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1085
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1086
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1088
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c00db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1093
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c00db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1094
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1096
    goto/16 :goto_0

    .line 1098
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1099
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1100
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20c025b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1102
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c00dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1107
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20c00dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1110
    goto/16 :goto_0

    .line 1120
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040311

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1125
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040311

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showPukDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 562
    return-void
.end method

.method private showPukDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x2020250

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 591
    return-void
.end method

.method private showPukDialogDCM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "message"

    .prologue
    .line 566
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x2020250

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 571
    .local v6, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 572
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 574
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$3;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;JJLandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v7

    .line 580
    .local v7, timer:Landroid/os/CountDownTimer;
    return-void
.end method

.method private updateView()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v5, 0x834

    const/4 v4, 0x0

    .line 811
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v6, v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 818
    :goto_0
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 895
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    return-void

    .line 816
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 820
    :pswitch_0
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView  REQUIRE_PUK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 825
    .local v0, attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v0           #attemptsRemaining:I
    :goto_2
    const/16 v2, 0x8

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v2, v3, :cond_2

    .line 831
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 832
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView REQUIRE_PUK mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 826
    :catch_0
    move-exception v1

    .line 827
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_2

    .line 835
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 836
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView REQUIRE_PUK  mOkButton.setEnabled(true)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 841
    :pswitch_1
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView REQUIRE_NEW_PIN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :try_start_1
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 845
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    .end local v0           #attemptsRemaining:I
    :goto_3
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 852
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView REQUIRE_NEW_PIN mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 846
    :catch_1
    move-exception v1

    .line 847
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_3

    .line 857
    .end local v1           #ex:Landroid/os/RemoteException;
    :pswitch_2
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView VERIFY_NEW_PIN "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :try_start_2
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 861
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 866
    .end local v0           #attemptsRemaining:I
    :goto_4
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 868
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView VERIFY_NEW_PIN mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 862
    :catch_2
    move-exception v1

    .line 863
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_4

    .line 873
    .end local v1           #ex:Landroid/os/RemoteException;
    :pswitch_3
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView VERIFY_NEW_PIN_FAILED "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 875
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 878
    :try_start_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 880
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 886
    .end local v0           #attemptsRemaining:I
    :goto_5
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "setState(SimLockState.REQUIRE_NEW_PIN) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    .line 889
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 890
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "updateView  VERIFY_NEW_PIN_FAILED mOkButton.setEnabled(false) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 881
    :catch_3
    move-exception v1

    .line 882
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_5

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin1"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "newpincode pin1 equal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 344
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->IccRemovedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    :cond_1
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 793
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 795
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 426
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 431
    .local v1, digits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v3, :cond_5

    .line 432
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 434
    .local v2, len:I
    if-lez v2, :cond_1

    .line 435
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 436
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 442
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 443
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 448
    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 466
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 519
    .end local v2           #len:I
    :cond_4
    :goto_1
    return-void

    .line 450
    .restart local v2       #len:I
    :pswitch_0
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v7, :cond_3

    .line 451
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 455
    :pswitch_1
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_3

    .line 456
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 460
    :pswitch_2
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_3

    .line 461
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 471
    .end local v2           #len:I
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_7

    .line 472
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 473
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, code:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 476
    :pswitch_3
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v7, :cond_4

    .line 478
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 479
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 480
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 481
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_1

    .line 485
    :pswitch_4
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_4

    .line 487
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 488
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 489
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_1

    .line 494
    :pswitch_5
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_4

    .line 496
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "mOkButton verifyNewPin(code"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_1

    .line 501
    :cond_6
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "mOkButton VERIFY_NEW_PIN_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 503
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 504
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_1

    .line 510
    .end local v0           #code:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_4

    .line 511
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 513
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 515
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 474
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 800
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 802
    return-void
.end method

.method public onDockStateChanged(I)V
    .locals 1
    .parameter "dockMode"

    .prologue
    .line 1040
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 1042
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 522
    if-eqz p2, :cond_0

    .line 523
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 524
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 646
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 647
    .local v1, match:C
    if-eqz v1, :cond_1

    .line 648
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown match != 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    add-int/lit8 v3, v1, -0x30

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    .line 651
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown mKeyboardHidden == Configuration.HARDKEYBOARDHIDDEN_YES"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 757
    :cond_0
    :goto_0
    return v2

    .line 655
    :pswitch_0
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown REQUIRE_PUK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v7, :cond_0

    .line 657
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown REQUIRE_PUK mEnteredDigits >= 8"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 663
    :pswitch_1
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown REQUIRE_NEW_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_0

    .line 665
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown REQUIRE_NEW_PIN mEnteredDigits >= 4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 671
    :pswitch_2
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown VERIFY_NEW_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_0

    .line 673
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 674
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "onKeyDown VERIFY_NEW_PIN mEnteredDigits >= 4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 681
    :cond_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_2

    .line 682
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "onKeyDown KEYCODE_DEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lez v4, :cond_0

    .line 684
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "mEnteredDigits > 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 686
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 688
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "mKeyboardHidden == Configuration.HARDKEYBOARDHIDDEN_YES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 691
    :pswitch_3
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "KEYCODE_DEL REQUIRE_PUK "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v7, :cond_0

    .line 693
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 694
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "KEYCODE_DEL REQUIRE_PUK mEnteredDigits < 8"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 699
    :pswitch_4
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "KEYCODE_DEL REQUIRE_NEW_PIN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_0

    .line 701
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 702
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "KEYCODE_DEL REQUIRE_NEW_PIN mEnteredDigits < 4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    :pswitch_5
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "KEYCODE_DEL REQUIRE_NEW_PIN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_0

    .line 709
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 710
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "KEYCODE_DEL VERIFY_NEW_PIN mEnteredDigits < 4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 719
    :cond_2
    const/16 v4, 0x42

    if-ne p1, v4, :cond_7

    .line 720
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, code:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 723
    :pswitch_6
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v7, :cond_3

    move v2, v3

    .line 725
    goto/16 :goto_0

    .line 726
    :cond_3
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 727
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 728
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 729
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 733
    :pswitch_7
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_4

    move v2, v3

    .line 734
    goto/16 :goto_0

    .line 735
    :cond_4
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 736
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 737
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 738
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 742
    :pswitch_8
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_5

    move v2, v3

    .line 743
    goto/16 :goto_0

    .line 744
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 746
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_0

    .line 748
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 749
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 750
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .end local v0           #code:Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 757
    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 689
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 721
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 401
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 404
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 406
    .local v1, len:I
    :goto_0
    if-lez v1, :cond_1

    .line 407
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 408
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 409
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 414
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 417
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 418
    const/4 v2, 0x1

    .line 421
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_2
    return v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 328
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateEmergencyText()V

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 334
    return-void
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 783
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    .line 784
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_0

    .line 786
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    goto :goto_0
.end method

.method public updateEmergencyText()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    .line 312
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] get the service status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service state on PIN/PUK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->service_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyText:Landroid/widget/TextView;

    const v1, 0x104033b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
