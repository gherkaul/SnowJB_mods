.class public Lcom/lge/quicksettings/handlers/RotationHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "RotationHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# static fields
.field private static final ACCELEROMETER_ROTATION_URI:Landroid/net/Uri;


# instance fields
.field private bUseObserver:Z

.field private bUseReceiver:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private onChangeHandler:Landroid/os/Handler;

.field private onChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/RotationHandler;->ACCELEROMETER_ROTATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 3
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 31
    iput-boolean v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseReceiver:Z

    .line 32
    iget-boolean v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseReceiver:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseObserver:Z

    .line 35
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 37
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 44
    return-void
.end method

.method private getStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, status:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/RotationHandler;->updateButton()V

    .line 144
    return-void
.end method

.method public onClick()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 94
    const-string v2, "RotationHandler"

    const-string v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 99
    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/RotationHandler;->getStatus()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 101
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 102
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 103
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.rotation.CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return v4

    .line 105
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 106
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 107
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 110
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 111
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 50
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    iget-boolean v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseReceiver:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 54
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const-string v2, "com.android.settings.rotation.CHANGED"

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v1, p0}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 57
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/RotationHandler;->updateButton()V

    .line 62
    iget-boolean v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseObserver:Z

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/lge/quicksettings/handlers/RotationHandler$1;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/lge/quicksettings/handlers/RotationHandler$1;-><init>(Lcom/lge/quicksettings/handlers/RotationHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 73
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/quicksettings/handlers/RotationHandler;->ACCELEROMETER_ROTATION_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/RotationHandler;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseReceiver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->bUseObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    :cond_1
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/RotationHandler;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 149
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 152
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method
