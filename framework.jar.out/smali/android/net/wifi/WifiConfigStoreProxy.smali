.class public Landroid/net/wifi/WifiConfigStoreProxy;
.super Ljava/lang/Object;
.source "WifiConfigStoreProxy.java"


# instance fields
.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfigStore;)V
    .locals 0
    .parameter "wifiConfigStore"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 36
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public disableNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 1
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v0

    return v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveConfig()Z
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Landroid/net/wifi/WifiConfigStoreProxy;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    move-result v1

    .line 62
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 64
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 66
    .local v0, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    const-string v2, "com.android.providers.settings"

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0           #ibm:Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return v1

    .line 69
    .restart local v0       #ibm:Landroid/app/backup/IBackupManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
