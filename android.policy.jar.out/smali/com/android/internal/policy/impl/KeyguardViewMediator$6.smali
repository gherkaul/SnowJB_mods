.class Lcom/android/internal/policy/impl/KeyguardViewMediator$6;
.super Landroid/os/CountDownTimer;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;->dcmPermLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field final synthetic val$dialog_dcm:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;JJLandroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iput-object p6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->val$dialog_dcm:Landroid/app/AlertDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->val$dialog_dcm:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2336
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 2333
    return-void
.end method
