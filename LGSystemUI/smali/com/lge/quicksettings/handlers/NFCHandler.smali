.class public Lcom/lge/quicksettings/handlers/NFCHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "NFCHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mToastMsg:Ljava/lang/String;

.field private nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 34
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mNfcManager:Landroid/nfc/NfcManager;

    .line 35
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 37
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 38
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mToastMsg:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    .line 52
    return-void
.end method

.method private getNFCHelper()Lcom/lge/quicksettings/handlers/NFCHelperAbstract;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    .line 225
    const-string v0, "NFCHandler"

    const-string v1, "NFCAddonHelper loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    return-object v0

    .line 227
    :cond_1
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCHelper;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/quicksettings/handlers/NFCHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    .line 228
    const-string v0, "NFCHandler"

    const-string v1, "NFCHelper loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getToastIndex(I)I
    .locals 4
    .parameter "state"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, index:I
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 239
    const v0, 0x7f09017c

    .line 262
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 263
    const-string v1, "NFCHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToastIndex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is unknown state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    return v0

    .line 240
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->isKoreanOperator()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    const v0, 0x7f090180

    goto :goto_0

    .line 244
    :cond_3
    const v0, 0x7f09017d

    goto :goto_0

    .line 246
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->isKoreanOperator()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->isDirectBeamSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    const v0, 0x7f090182

    goto :goto_0

    .line 251
    :cond_5
    const v0, 0x7f090181

    goto :goto_0

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->isDirectBeamSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 255
    const v0, 0x7f09017f

    goto :goto_0

    .line 257
    :cond_7
    const v0, 0x7f09017e

    goto :goto_0
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x1

    .line 106
    const-string v2, "NFCHandler"

    const-string v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "LGMDMNfcAdapter"

    invoke-virtual {v2, v3, v4}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    const v4, 0x20c00b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 111
    const-string v2, "NFCHandler"

    const-string v3, "NFCHandler:onClick() MDM Block"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return v5

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHandler;->getNFCHelper()Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, toastMgsIndex:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->is2wayToggleOperator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 127
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOnOff(Z)Z

    .line 157
    :goto_1
    if-eqz v1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, mToastMsg:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5, v6, v7}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 122
    .end local v0           #mToastMsg:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2, v5}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOnOff(Z)Z

    goto :goto_1

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 152
    :pswitch_1
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/lge/quicksettings/handlers/NFCHandler;->getToastIndex(I)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOff()Z

    goto :goto_1

    .line 132
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/lge/quicksettings/handlers/NFCHandler;->getToastIndex(I)I

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOn()Z

    goto :goto_1

    .line 138
    :pswitch_3
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkNfcCardModeOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOff()Z

    .line 141
    const v1, 0x20c00b5

    .line 142
    const-string v2, "NFCHandler"

    const-string v3, "NFCHandler:onClick() MDM CardMode Only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    :cond_3
    invoke-direct {p0, v5}, Lcom/lge/quicksettings/handlers/NFCHandler;->getToastIndex(I)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v2}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->turnOnP2P()Z

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 59
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 60
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/NFCHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/NFCHandler$1;-><init>(Lcom/lge/quicksettings/handlers/NFCHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 79
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 80
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 82
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/NFCHandler;->getNFCHelper()Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/quicksettings/handlers/NFCHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/NFCHandler$2;-><init>(Lcom/lge/quicksettings/handlers/NFCHandler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    const/4 v0, 0x5

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 102
    :cond_0
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 181
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNFCButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->nfcHelper:Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 196
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 200
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 204
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 208
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 212
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 216
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
