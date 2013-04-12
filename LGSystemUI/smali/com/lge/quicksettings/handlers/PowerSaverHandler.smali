.class public Lcom/lge/quicksettings/handlers/PowerSaverHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "PowerSaverHandler.java"


# instance fields
.field private final POWER_SAVER:Ljava/lang/String;

.field private final POWER_SAVER_MODE:Ljava/lang/String;

.field private final POWER_SAVER_MODE_URI:Landroid/net/Uri;

.field private final POWER_SAVER_URI:Landroid/net/Uri;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private onChangeHandler:Landroid/os/Handler;

.field private onChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 3
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 37
    const-string v0, "power_save_enabled"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER:Ljava/lang/String;

    .line 38
    const-string v0, "power_save_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "power_save_mode"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_MODE:Ljava/lang/String;

    .line 41
    const-string v0, "power_save_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_MODE_URI:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 55
    const-string v0, "PowerSaverHandler"

    const-string v1, "PowerSaverHandler.POWER_SAVER: power_save_enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "PowerSaverHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaverHandler.POWER_SAVER_URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public enablePowerSaver(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.settings.POWER_SAVER_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "start"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "power_save_enabled"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void

    :cond_0
    move v1, v3

    .line 175
    goto :goto_0

    :cond_1
    move v2, v3

    .line 178
    goto :goto_1
.end method

.method public isPowerSaverEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, enabled:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_URI:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 188
    const-string v2, "PowerSaverHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    if-lez v0, :cond_1

    .line 193
    const/4 v1, 0x1

    .line 196
    :cond_1
    return v1
.end method

.method public isPowerSaverReservedMode()Z
    .locals 4

    .prologue
    .line 200
    const/16 v0, 0x1e

    .line 202
    .local v0, mode:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_MODE_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    const-string v1, "PowerSaverHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 211
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 126
    const-string v0, "PowerSaverHandler"

    const-string v2, "onClick()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->isPowerSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->enablePowerSaver(Z)V

    .line 130
    return v1

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 63
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 66
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 67
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.lge.settings.POWER_SAVER_START"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/PowerSaverHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler$1;-><init>(Lcom/lge/quicksettings/handlers/PowerSaverHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/lge/quicksettings/handlers/PowerSaverHandler$2;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/PowerSaverHandler$2;-><init>(Lcom/lge/quicksettings/handlers/PowerSaverHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 100
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->POWER_SAVER_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 106
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 108
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    :cond_1
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.POWER_SAVER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PowerSaveSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->isPowerSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->isPowerSaverReservedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setButtonStatus(I)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setTextColor(Z)V

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setButtonStatus(I)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setTextColor(Z)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->isPowerSaverReservedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setButtonStatus(I)V

    .line 164
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setTextColor(Z)V

    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setButtonStatus(I)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->setTextColor(Z)V

    goto :goto_0
.end method
