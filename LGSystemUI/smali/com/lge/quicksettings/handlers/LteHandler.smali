.class public Lcom/lge/quicksettings/handlers/LteHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "LteHandler.java"


# instance fields
.field private final GET_NETWORK_MODE:Ljava/lang/String;

.field private final PREFERRED_NETWORK_MODE:Ljava/lang/String;

.field private final PREFERRED_NETWORK_MODE_URI:Landroid/net/Uri;

.field private final SET_NETWORK_MODE:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isGetNetworkModeIntentSent:Z

.field private mIsBootCompleted:Z

.field private onChangeHandler:Landroid/os/Handler;

.field private onChangeObserver:Landroid/database/ContentObserver;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tryCountGetNetworkModeIntentSent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 5
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 49
    const-string v0, "SetNetworkMode_KDDI_LTE"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->SET_NETWORK_MODE:Ljava/lang/String;

    .line 50
    const-string v0, "GetNetworkMode_KDDI_LTE"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->GET_NETWORK_MODE:Ljava/lang/String;

    .line 52
    const-string v0, "preferred_network_mode"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->PREFERRED_NETWORK_MODE:Ljava/lang/String;

    .line 53
    const-string v0, "preferred_network_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->PREFERRED_NETWORK_MODE_URI:Landroid/net/Uri;

    .line 57
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 58
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-boolean v3, p0, Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z

    .line 60
    iput v3, p0, Lcom/lge/quicksettings/handlers/LteHandler;->tryCountGetNetworkModeIntentSent:I

    .line 61
    iput-boolean v3, p0, Lcom/lge/quicksettings/handlers/LteHandler;->mIsBootCompleted:Z

    .line 65
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->context:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->context:Landroid/content/Context;

    .line 72
    const-string v0, "LteHandler"

    const-string v1, "LteHandler.PREFERRED_NETWORK_MODE: preferred_network_mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "LteHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LteHandler.PREFERRED_NETWORK_MODE_URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->PREFERRED_NETWORK_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "sys.boot_completed"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 76
    iput-boolean v4, p0, Lcom/lge/quicksettings/handlers/LteHandler;->mIsBootCompleted:Z

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->sendGetNetworkModeIntent()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/LteHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/quicksettings/handlers/LteHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->isGetNetworkModeIntentSent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/quicksettings/handlers/LteHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->tryCountGetNetworkModeIntentSent:I

    return v0
.end method

.method static synthetic access$108(Lcom/lge/quicksettings/handlers/LteHandler;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->tryCountGetNetworkModeIntentSent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->tryCountGetNetworkModeIntentSent:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/LteHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/handlers/LteHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/quicksettings/handlers/LteHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->sendGetNetworkModeIntent()V

    return-void
.end method

.method private sendGetNetworkModeIntent()V
    .locals 4

    .prologue
    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 271
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lge/quicksettings/handlers/LteHandler$3;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/LteHandler$3;-><init>(Lcom/lge/quicksettings/handlers/LteHandler;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    return-void
.end method


# virtual methods
.method public enableLteNetwork(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SetNetworkMode_KDDI_LTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "NetworkType"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    if-eqz p1, :cond_1

    .line 221
    const-string v1, "LteHandler"

    const-string v3, "enabling LTE Network."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 223
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    .line 229
    :goto_1
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "LteHandler"

    const-string v3, "disabling LTE Network."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    goto :goto_1
.end method

.method public isLteEnabled()Z
    .locals 5

    .prologue
    .line 249
    const/16 v0, 0xa

    .line 251
    .local v0, preferredNetworkMode:I
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 255
    .local v1, settingsNetworkMode:I
    const-string v2, "LteHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteEnabled? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    packed-switch v1, :pswitch_data_0

    .line 266
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 263
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isLteOnly()Z
    .locals 5

    .prologue
    .line 232
    const/16 v0, 0xa

    .line 234
    .local v0, preferredNetworkMode:I
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, settingsNetworkMode:I
    const-string v2, "LteHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteOnly? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 242
    const/4 v2, 0x1

    .line 245
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v1, 0x1

    .line 137
    const-string v0, "LteHandler"

    const-string v2, "onClick()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 158
    :goto_0
    return v1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->isLteOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "LteHandler"

    const-string v2, "LTE only mode, LTE Network on/off disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0900cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getButtonStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    const-string v0, "LteHandler"

    const-string v2, "Skip onClock() while LteHandler.PENDING status."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->isLteEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/LteHandler;->enableLteNetwork(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeHandler:Landroid/os/Handler;

    .line 85
    new-instance v1, Lcom/lge/quicksettings/handlers/LteHandler$1;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler$1;-><init>(Lcom/lge/quicksettings/handlers/LteHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 98
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->PREFERRED_NETWORK_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/lge/quicksettings/handlers/LteHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/LteHandler$2;-><init>(Lcom/lge/quicksettings/handlers/LteHandler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x0

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/LteHandler;->receiver:Landroid/content/BroadcastReceiver;

    .line 132
    :cond_1
    return-void
.end method

.method public onLongClick()Z
    .locals 5

    .prologue
    const/high16 v4, 0x1400

    .line 163
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 186
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "LteHandler"

    const-string v3, "com.android.settings.Settings$WirelessSettingsActivity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public refreshButton()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    .line 213
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->isLteOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "LteHandler"

    const-string v1, "LTE Network on/off disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 203
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/LteHandler;->isLteEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "LteHandler"

    const-string v1, "LTE Network enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 207
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "LteHandler"

    const-string v1, "LTE Network disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/LteHandler;->setButtonStatus(I)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/LteHandler;->setTextColor(Z)V

    goto :goto_0
.end method
