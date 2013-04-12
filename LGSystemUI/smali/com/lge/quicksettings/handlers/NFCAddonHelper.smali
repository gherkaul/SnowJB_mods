.class Lcom/lge/quicksettings/handlers/NFCAddonHelper;
.super Lcom/lge/quicksettings/handlers/NFCHelperAbstract;
.source "NFCAddonHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field filter:Landroid/content/IntentFilter;

.field nextHandler:Landroid/os/Handler;

.field nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

.field receiver:Landroid/content/BroadcastReceiver;

.field turnOnRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    .line 20
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 21
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->filter:Landroid/content/IntentFilter;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nextHandler:Landroid/os/Handler;

    .line 23
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOnRunnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-direct {v0, p1}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    .line 29
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerBroadcastReceiver()Z
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;-><init>(Lcom/lge/quicksettings/handlers/NFCAddonHelper;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->filter:Landroid/content/IntentFilter;

    .line 56
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->filter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nextHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getStatus()I
    .locals 6

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 164
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    if-eqz v3, :cond_8

    .line 165
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initDefaultNfcAdapterAddon()Z

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 170
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        is2wayToggleOperator(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->is2wayToggleOperator()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapaterAddon.isNfcSystemEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v5}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapaterAddon.isNfcCardModeEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v5}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapaterAddon.isNfcDiscoveryModeEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v5}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcDiscoveryModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapaterAddon.isNfcP2pModeEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v5}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->is2wayToggleOperator()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 203
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_4
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_6

    .line 186
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcDiscoveryModeEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->isKoreanOperator()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    move v0, v2

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcDiscoveryModeEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->isKoreanOperator()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 192
    goto :goto_0

    .line 193
    :cond_7
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcCardModeEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 195
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v3}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_1

    .line 202
    :cond_8
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unknown state, return OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 203
    goto :goto_0
.end method

.method turnOff()Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z

    .line 109
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcP2p()Z

    .line 111
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcDiscovery()Z

    .line 112
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcCard()Z

    .line 113
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->deinitNfcSystem()Z

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method turnOn()Z
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z

    .line 126
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initNfcSystem()Z

    .line 128
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;-><init>(Lcom/lge/quicksettings/handlers/NFCAddonHelper;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOnRunnable:Ljava/lang/Runnable;

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method turnOnOff(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z

    .line 82
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initNfcSystem()Z

    .line 85
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$2;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper$2;-><init>(Lcom/lge/quicksettings/handlers/NFCAddonHelper;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOnRunnable:Ljava/lang/Runnable;

    .line 99
    :goto_0
    const/4 v0, 0x1

    .line 102
    :goto_1
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcDiscovery()Z

    .line 95
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcCard()Z

    .line 96
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->deinitNfcSystem()Z

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method turnOnP2P()Z
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z

    .line 150
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->isKoreanOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcDiscovery()Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcP2p()Z

    .line 157
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
