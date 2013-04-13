.class public Lcom/lge/wifi_iface/DefaultWifiServiceExt;
.super Ljava/lang/Object;
.source "DefaultWifiServiceExt.java"

# interfaces
.implements Lcom/lge/wifi_iface/WifiServiceExtIface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiServiceExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public SetMaxNumOfStation(Ljava/lang/String;)V
    .locals 0
    .parameter "AuthType"

    .prologue
    .line 236
    return-void
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 69
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "addOrUpdateNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public addWifiConnectionList(II)V
    .locals 0
    .parameter "netId"
    .parameter "success"

    .prologue
    .line 274
    return-void
.end method

.method public beShouldUpdatedWifiApConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public broadcastAutoIPIntent(Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
    .locals 2
    .parameter "dhcpInfoInternal"

    .prologue
    .line 230
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "broadcastAutoIPIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeSsidString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "value"
    .parameter "bQuoted"

    .prologue
    .line 79
    move-object v0, p1

    .line 81
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "changeSsidString: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0
.end method

.method public checkAPSecurity(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, configList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    return-void
.end method

.method public checkRemovableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 74
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "checkRemovableNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public checkRssiAndDisconnect(I)Z
    .locals 1
    .parameter "rssi"

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public checkVTRunning()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public checkWifiStartPossible(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 97
    return-void
.end method

.method public fetchSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "fetchSSID: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "config"

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsP2pConnected()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getLgeEapEvent(Ljava/lang/String;)I
    .locals 1
    .parameter "eventName"

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "netId"
    .parameter "ssidVarName"

    .prologue
    .line 194
    move-object v0, p2

    .line 195
    .local v0, retString:Ljava/lang/String;
    const-string v1, "DefaultWifiServiceExt"

    const-string v2, "getNetworkVariableCommand: Nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v0
.end method

.method public getSecurityType()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getShowKTPayPopup()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public getSoftApMaxScb(I)I
    .locals 1
    .parameter "defaultMaxScb"

    .prologue
    .line 147
    const/4 v0, -0x1

    return v0
.end method

.method public getWiFiPowerSaveModeEnabled()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiActivationWhileCharging()Lcom/lge/wifi_iface/WifiActivationWhileChargingIface;
    .locals 2

    .prologue
    .line 64
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiActivationWhileCharging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiAdhocDisable()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApDisableIfNotUsed(Ljava/lang/String;)Lcom/lge/wifi_iface/WifiApDisableIfNotUsedIface;
    .locals 2
    .parameter "softApIface"

    .prologue
    .line 59
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiApDisableIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiDualbandAPConnection()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 45
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiP2pOffDelayIfNotUsed()Lcom/lge/wifi_iface/WifiP2pOffDelayIfNotUsedIface;
    .locals 2

    .prologue
    .line 50
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "getWifiP2pOffDelayIfNotUsed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLgeEapEvent(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 266
    return-void
.end method

.method public handleN3Event(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 121
    return-void
.end method

.method public initWifiSerivceExt(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiNative;Landroid/net/wifi/WifiConfigStoreProxy;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "wifiStateMachine"
    .parameter "wifiNative"
    .parameter "wifiConfigStoreProxy"
    .parameter "wlanInterface"

    .prologue
    .line 40
    const-string v0, "DefaultWifiServiceExt"

    const-string v1, "initWifiSerivceExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public isHotspotSSIDKSC5601(Ljava/lang/StringBuilder;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public isTethered()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isUPulsMsCHAPv2AP(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public mappingN3Event(Ljava/lang/String;)I
    .locals 1
    .parameter "eventName"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public sendP2pStateChangedBroadcast(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 124
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "sendP2pStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public setDlnaEnabled(Z)Z
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 225
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setDLNAEnabled: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public setKeepAlivePacket(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 100
    return-void
.end method

.method public setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "ssidVarName"
    .parameter "SSID"

    .prologue
    .line 189
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setNetworkVariableCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public setProhibitConnectAP()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public setProvisioned(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 246
    return-void
.end method

.method public setScanResultsCommand()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setScanResultsCommand: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowKTPayPopup(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 174
    return-void
.end method

.method public setSoftApDefaultKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSoftApRename(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public setWifiDualbandAPConnection(I)V
    .locals 0
    .parameter "band"

    .prologue
    .line 177
    return-void
.end method

.method public setWifiP2pNotificationIcon(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 55
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "setWifiP2pNotificationIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public startWifiDelay()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public startWifiDelaySendMsg()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public unregBrdcastReceiverDelay()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public updateConnectionInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 0
    .parameter "mWifiInfo"

    .prologue
    .line 86
    return-void
.end method

.method public updateRssiAndLinkSpeedNative(IIII)V
    .locals 0
    .parameter "newRssi"
    .parameter "newLinkSpeed"
    .parameter "minRssi"
    .parameter "maxRssi"

    .prologue
    .line 89
    move p1, p3

    .line 90
    const/4 p2, -0x1

    .line 91
    return-void
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-string v0, "DefaultWifiServiceExt"

    const-string/jumbo v1, "waitForEvent: Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method
