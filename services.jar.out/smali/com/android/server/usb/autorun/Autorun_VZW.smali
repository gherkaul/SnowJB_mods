.class public Lcom/android/server/usb/autorun/Autorun_VZW;
.super Lcom/android/server/usb/autorun/Autorun;
.source "Autorun_VZW.java"


# instance fields
.field private final iSecureLockLevel:I

.field private mAutorunDelayed:Z

.field protected final mContext:Landroid/content/Context;

.field mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/usb/autorun/Autorun;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v3, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 16
    iput-boolean v3, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    .line 17
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->iSecureLockLevel:I

    .line 46
    new-instance v1, Lcom/android/server/usb/autorun/Autorun_VZW$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/autorun/Autorun_VZW$1;-><init>(Lcom/android/server/usb/autorun/Autorun_VZW;)V

    iput-object v1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    iput-object p1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mContext:Landroid/content/Context;

    .line 22
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] Autorun_VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-direct {p0, v3}, Lcom/android/server/usb/autorun/Autorun_VZW;->setSecureLockState(Z)V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, secured_filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/autorun/Autorun_VZW;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/server/usb/autorun/Autorun_VZW;->setSecureLockState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/autorun/Autorun_VZW;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/usb/autorun/Autorun_VZW;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/autorun/Autorun_VZW;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/autorun/Autorun_VZW;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    return p1
.end method

.method private setSecureLockState(Z)V
    .locals 5
    .parameter "isSleep"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 80
    if-eqz p1, :cond_0

    .line 82
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    const-string v1, "service.keyguard.status"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v4, :cond_1

    const-string v1, "persist.service.keyguard.status"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 89
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    .line 93
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    goto :goto_1
.end method


# virtual methods
.method protected onBootComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 99
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] setCurrentFunction(charge_only,false)::onBootComplete when securelocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "charge_only"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getUsbUnPlugState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set to cdrom_storage :: onBootComplete when lock was released"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "cdrom_storage"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onUsbPlugged()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getIsBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] call startAutorun :: onUsbPlugged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->startAutorun()V

    .line 131
    :cond_0
    return-void
.end method

.method protected onUsbUnPlugged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mSecureLocked:Z

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/autorun/Autorun_VZW;->mAutorunDelayed:Z

    .line 113
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] setCurrentFunction(charge_only,false)::onUsbUnPlugged when securelocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "charge_only"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getSetupWizardState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getUsbUnPlugState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set to cdrom_storage :: onUsbUnPlugged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "cdrom_storage"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startAutorun()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getUsbUnPlugState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, currentFunction:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 36
    const-string v1, "AUTORUN"

    const-string v2, "exception case about currentFunction which is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0           #currentFunction:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 39
    .restart local v0       #currentFunction:Ljava/lang/String;
    :cond_1
    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cdrom_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] set to cdrom_storage :: startAutorun"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/autorun/Autorun_VZW;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/autorun/Autorun_VZW;->autorunStartTimer()V

    goto :goto_0
.end method
