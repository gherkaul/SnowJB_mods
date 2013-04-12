.class public Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "ScreenTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$1;,
        Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenTimeoutContentQueryMap:Landroid/content/ContentQueryMap;

.field private onChangeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setContentResolver()V

    .line 51
    return-void
.end method

.method private getScreenTimeoutStatus()I
    .locals 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, status:I
    :try_start_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "ScreenTimeoutHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContentResolver()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->onChangeHandler:Landroid/os/Handler;

    .line 139
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "screen_off_timeout"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, srCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 147
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v1, v6, v3, v9, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mScreenTimeoutContentQueryMap:Landroid/content/ContentQueryMap;

    .line 148
    new-instance v7, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;

    invoke-direct {v7, p0, v2}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;-><init>(Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$1;)V

    .line 149
    .local v7, stStatusObserver:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mScreenTimeoutContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v7}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 151
    .end local v7           #stStatusObserver:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;
    :cond_0
    return-void
.end method

.method private setScreenTimeoutStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "ScreenTimeoutHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public configScreenTimeoutButton(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x1

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 74
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setButtonStatus(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setTextColor(Z)V

    goto :goto_0

    .line 78
    :sswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setButtonStatus(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setTextColor(Z)V

    goto :goto_0

    .line 82
    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setButtonStatus(I)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setTextColor(Z)V

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x7530 -> :sswitch_0
        0x493e0 -> :sswitch_1
        0xdbba0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->onScreenTimeoutButtonClick()V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 56
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setScreenTimeoutButton()V

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onScreenTimeoutButtonClick()V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->getScreenTimeoutStatus()I

    move-result v1

    .line 103
    .local v1, status:I
    const/4 v0, 0x0

    .line 105
    .local v0, nextStatus:I
    const/16 v2, 0x7530

    if-gt v1, v2, :cond_0

    .line 106
    const v0, 0x493e0

    .line 113
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->configScreenTimeoutButton(I)V

    .line 114
    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setScreenTimeoutStatus(I)V

    .line 115
    return-void

    .line 107
    :cond_0
    const v2, 0x493e0

    if-gt v1, v2, :cond_1

    .line 108
    const v0, 0xdbba0

    goto :goto_0

    .line 110
    :cond_1
    const/16 v0, 0x7530

    goto :goto_0
.end method

.method public setScreenTimeoutButton()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->getScreenTimeoutStatus()I

    move-result v0

    .line 91
    .local v0, status:I
    const/16 v1, 0x7530

    if-gt v0, v1, :cond_0

    .line 92
    const/16 v0, 0x7530

    .line 98
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->configScreenTimeoutButton(I)V

    .line 99
    return-void

    .line 93
    :cond_0
    const v1, 0x493e0

    if-gt v0, v1, :cond_1

    .line 94
    const v0, 0x493e0

    goto :goto_0

    .line 96
    :cond_1
    const v0, 0xdbba0

    goto :goto_0
.end method
