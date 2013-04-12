.class public Lcom/lge/quicksettings/handlers/QuietHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "QuietHandler.java"


# instance fields
.field private final QUIET_MODE_STATUS:Ljava/lang/String;

.field private final QUIET_MODE_STATUS_URI:Landroid/net/Uri;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private onChangeHandler:Landroid/os/Handler;

.field private onChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 43
    const-string v0, "quiet_mode_status"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->QUIET_MODE_STATUS:Ljava/lang/String;

    .line 44
    const-string v0, "quiet_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->QUIET_MODE_STATUS_URI:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 53
    return-void
.end method


# virtual methods
.method public enableQuietmode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 123
    const-string v1, "lge.settings.QMODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "lge.settings.QMODE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isQuietmodeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, enabled:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->QUIET_MODE_STATUS_URI:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_mode_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    const-string v0, "QuietHandler"

    const-string v2, "onClick()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/QuietHandler;->isQuietmodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QuietHandler;->enableQuietmode(Z)V

    .line 92
    return v1

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 59
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/lge/quicksettings/handlers/QuietHandler$1;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/QuietHandler$1;-><init>(Lcom/lge/quicksettings/handlers/QuietHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 71
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->QUIET_MODE_STATUS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 76
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QuietHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.settings.QUIET_MODE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/QuietHandler;->isQuietmodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/QuietHandler;->setButtonStatus(I)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/QuietHandler;->setTextColor(Z)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QuietHandler;->setButtonStatus(I)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QuietHandler;->setTextColor(Z)V

    goto :goto_0
.end method
