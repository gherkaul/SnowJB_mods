.class Lcom/lge/quicksettings/handlers/NFCHelper;
.super Lcom/lge/quicksettings/handlers/NFCHelperAbstract;
.source "NFCHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected nfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/lge/quicksettings/handlers/NFCHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 19
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, nfcManager:Landroid/nfc/NfcManager;
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #nfcManager:Landroid/nfc/NfcManager;
    check-cast v0, Landroid/nfc/NfcManager;

    .line 122
    .restart local v0       #nfcManager:Landroid/nfc/NfcManager;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 130
    :cond_0
    :goto_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAdapter(), "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const-string v1, "NFCAdapter cann\'t be initialized."

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v1

    .line 126
    :cond_1
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v2, "NFC service manager is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 130
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFCAdapter("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") is initialized."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private sendBroadcastUpdateNfcQuickSetting()Z
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    const/4 v1, 0x1

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getStatus()I
    .locals 6

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 92
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_5

    .line 93
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        is2wayToggleOperator(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelper;->is2wayToggleOperator()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapter.isEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NfcAdapter.isNdefPushEnabled(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelper;->is2wayToggleOperator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_4

    move v0, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 114
    :cond_5
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unknown state, return OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 115
    goto :goto_0
.end method

.method turnOff()Z
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 44
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v1, "turnOff(), NdefPush will be disabled, NFC will be disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 47
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method turnOn()Z
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 58
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v1, "turnOn(), NFC enabled, NdefPush disabeld. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 61
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 63
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method turnOnOff(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 26
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    .line 27
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnOff(), NFC will be "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-eqz p1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 34
    :goto_1
    const/4 v0, 0x1

    .line 37
    :goto_2
    return v0

    .line 27
    :cond_0
    const-string v0, "disabled."

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method turnOnP2P()Z
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 72
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v1, "turnOnP2P(), NdefPush enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 76
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHelper;->sendBroadcastUpdateNfcQuickSetting()Z

    .line 78
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCHelper;->TAG:Ljava/lang/String;

    const-string v1, "turnOnP2P(), NFC service is not ready. Enabling NFC service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelper;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 83
    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
