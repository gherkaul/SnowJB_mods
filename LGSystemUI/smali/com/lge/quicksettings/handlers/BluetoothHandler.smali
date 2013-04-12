.class public Lcom/lge/quicksettings/handlers/BluetoothHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "BluetoothHandler.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "BluetoothHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 31
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 34
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 36
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 41
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/BluetoothHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setHandlerButton(I)V

    return-void
.end method

.method private getBTButtonStatus()I
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x3

    .line 161
    .local v0, status:I
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->getBTState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 171
    const/4 v0, 0x3

    .line 175
    :goto_0
    return v0

    .line 163
    :pswitch_0
    const/4 v0, 0x1

    .line 164
    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v0, 0x0

    .line 168
    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBTState()I
    .locals 2

    .prologue
    .line 150
    const/high16 v0, -0x8000

    .line 152
    .local v0, btState:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 155
    :cond_0
    return v0
.end method

.method private onBluetoothButtonClick()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 121
    sget-boolean v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->TAG:Ljava/lang/String;

    const-string v1, "set BT Icon progressing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LGMDMBluetoothAdapter"

    invoke-virtual {v0, v1, v2}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mContext:Landroid/content/Context;

    const v2, 0x20c0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 131
    sget-object v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->TAG:Ljava/lang/String;

    const-string v1, "onBluetoothButtonClick() MDM Block"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->getBTButtonStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setBluetoothEnabled(Z)V

    .line 143
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setButtonStatus(I)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setTextColor(Z)V

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setBluetoothEnabled(Z)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setButtonStatus(I)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setTextColor(Z)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setBluetoothEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 179
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 181
    .local v0, wasSetStateSuccessful:Z
    :goto_0
    sget-boolean v1, Lcom/lge/quicksettings/handlers/BluetoothHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    sget-object v1, Lcom/lge/quicksettings/handlers/BluetoothHandler;->TAG:Ljava/lang/String;

    const-string v2, "setBluetoothenabled successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 179
    .end local v0           #wasSetStateSuccessful:Z
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 185
    .restart local v0       #wasSetStateSuccessful:Z
    :cond_2
    sget-object v1, Lcom/lge/quicksettings/handlers/BluetoothHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothEnabled call, manager didn\'t return success for enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setHandlerButton(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setButtonStatus(I)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setTextColor(Z)V

    .line 118
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setButtonStatus(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setTextColor(Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setButtonStatus(I)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setTextColor(Z)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick()Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->onBluetoothButtonClick()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 4
    .parameter "data"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 49
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 50
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 51
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/BluetoothHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/BluetoothHandler$1;-><init>(Lcom/lge/quicksettings/handlers/BluetoothHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 63
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 65
    const/4 v0, 0x3

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 75
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 90
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->getBTState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->setHandlerButton(I)V

    .line 99
    return-void
.end method
