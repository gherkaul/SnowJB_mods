.class Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "MSimLockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->keyguardScreenCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changePassword()V
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    .line 99
    .local v1, mdm:Lcom/lge/cappuccino/IMdm;
    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 101
    .local v0, expireDay:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showChangePasswordDialog(IZ)V

    .line 105
    .end local v0           #expireDay:I
    :cond_0
    return-void
.end method

.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    const/4 v1, 0x1

    .line 125
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 126
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 127
    :goto_1
    if-nez v1, :cond_3

    .line 130
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 126
    goto :goto_1

    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->isSecure()Z

    move-result v4

    if-nez v4, :cond_5

    .line 138
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_2

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_2
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 250
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 241
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 245
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 212
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 257
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 258
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 262
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .line 265
    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 268
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 271
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .line 275
    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    .line 280
    if-lez v3, :cond_3

    .line 281
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    .line 306
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 307
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    .line 262
    goto :goto_0

    .line 271
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .line 284
    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "MSimLockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showWipeDialog(I)V

    goto :goto_2

    .line 288
    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .line 290
    .local v4, showTimeout:Z
    :goto_3
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v8, :cond_5

    .line 291
    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    .line 292
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    .line 293
    const/4 v4, 0x0

    .line 302
    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    .line 303
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showTimeoutDialog()V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    .line 288
    goto :goto_3

    .line 294
    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    .line 296
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 297
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 299
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 316
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    .line 317
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    .line 318
    .local v1, mdm:Lcom/lge/cappuccino/IMdm;
    if-eqz v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    .line 320
    .local v0, expireDay:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v1, v2}, Lcom/lge/cappuccino/IMdm;->getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    if-lez v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showChangePasswordDialog(IZ)V

    .line 328
    .end local v0           #expireDay:I
    .end local v1           #mdm:Lcom/lge/cappuccino/IMdm;
    :cond_0
    return-void
.end method

.method public showDialogFailedUnlockAttempt(I)V
    .locals 0
    .parameter "remainingBeforeWipe"

    .prologue
    .line 109
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 227
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->pokeWakelock(I)V

    .line 228
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updatePinUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePinUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez p1, :cond_2

    move v0, v1

    .line 156
    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_3

    .line 158
    :cond_1
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PIN dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 168
    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_2
    move v0, v2

    .line 154
    goto :goto_0

    .line 161
    .restart local v0       #otherSub:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method

.method public updatePukUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePukUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez p1, :cond_0

    move v0, v1

    .line 181
    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_1

    .line 182
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PUK dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 192
    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .line 185
    .restart local v0       #otherSub:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method
