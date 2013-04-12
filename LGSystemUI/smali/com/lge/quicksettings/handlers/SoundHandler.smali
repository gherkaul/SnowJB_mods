.class public Lcom/lge/quicksettings/handlers/SoundHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "SoundHandler.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 48
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 54
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method

.method private getRingerMode()I
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x2

    .line 189
    .local v1, ret:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 191
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mode_ringer"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 195
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, ne:Ljava/lang/NullPointerException;
    const-string v2, "SoundHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSoundButtonClick()V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/SoundHandler;->getRingerMode()I

    move-result v0

    .line 156
    .local v0, ringerMode:I
    const-string v1, "SoundHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSoundButtonClick() : ringerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_1
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 172
    const-wide/16 v1, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/lge/quicksettings/handlers/SoundHandler;->vibrate(J)V

    goto :goto_1

    .line 178
    :pswitch_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 181
    :pswitch_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mVibrator:Landroid/os/Vibrator;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, textId:I
    packed-switch p2, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_1
    return-object v1

    .line 116
    :pswitch_1
    const v0, 0x7f0900ac

    .line 117
    goto :goto_0

    .line 119
    :pswitch_2
    const v0, 0x7f0900aa

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    const v0, 0x7f0900ad

    goto :goto_0

    .line 129
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/SoundHandler;->onSoundButtonClick()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 65
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 66
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 67
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.media.VIBRATE_SETTING_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/SoundHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/SoundHandler$1;-><init>(Lcom/lge/quicksettings/handlers/SoundHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 77
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 79
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 89
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/SoundHandler;->getRingerMode()I

    move-result v0

    .line 138
    .local v0, ringerMode:I
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SoundHandler;->setTextColor(Z)V

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 142
    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SoundHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SoundHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 148
    :pswitch_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SoundHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
