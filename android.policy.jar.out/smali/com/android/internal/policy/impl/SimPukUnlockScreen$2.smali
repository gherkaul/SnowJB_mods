.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$502(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 270
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

    .line 271
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "[PIN/PUK] onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateEmergencyText()V

    .line 274
    :cond_0
    return-void
.end method
