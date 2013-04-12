.class public Lcom/lge/quicksettings/handlers/EcoHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "EcoHandler.java"


# instance fields
.field private final ECO_MODE:Ljava/lang/String;

.field private final ECO_MODE_URI:Landroid/net/Uri;

.field private onChangeHandler:Landroid/os/Handler;

.field private onChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 3
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 32
    const-string v0, "eco_mode"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE:Ljava/lang/String;

    .line 33
    const-string v0, "eco_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "EcoHandler"

    const-string v1, "EcoHandler.ECO_MODE: eco_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "EcoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EcoHandler.ECO_MODE_URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method


# virtual methods
.method public enableEcoMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "eco_mode"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEcoModeEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, enabled:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE_URI:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "eco_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    const-string v2, "EcoHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE_URI:Landroid/net/Uri;

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

    .line 131
    :cond_0
    if-lez v0, :cond_1

    .line 132
    const/4 v1, 0x1

    .line 135
    :cond_1
    return v1
.end method

.method public onClick()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 77
    const-string v0, "EcoHandler"

    const-string v2, "onClick()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/EcoHandler;->isEcoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/EcoHandler;->enableEcoMode(Z)V

    .line 81
    return v1

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 4
    .parameter "data"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/lge/quicksettings/handlers/EcoHandler$1;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/EcoHandler$1;-><init>(Lcom/lge/quicksettings/handlers/EcoHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 62
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->ECO_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/EcoHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lge.QuadGearBox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/EcoHandler;->isEcoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/EcoHandler;->setButtonStatus(I)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/EcoHandler;->setTextColor(Z)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/EcoHandler;->setButtonStatus(I)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/EcoHandler;->setTextColor(Z)V

    goto :goto_0
.end method
