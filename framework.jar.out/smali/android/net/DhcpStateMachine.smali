.class public Landroid/net/DhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30006

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpInfo:Landroid/net/DhcpInfoInternal;

.field private mDhcpInfoCacheList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpInfoInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 116
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 139
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 140
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 141
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 142
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 143
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 151
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 153
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v0, dhcpRenewalIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 159
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 160
    .local v1, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "DHCP"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 163
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 196
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 197
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 198
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 199
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 201
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 202
    return-void
.end method

.method private AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V
    .locals 7
    .parameter "key"
    .parameter "addDhcpInfo"

    .prologue
    .line 929
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->size()I

    move-result v2

    .line 931
    .local v2, nCacheSize:I
    const/16 v4, 0x41

    if-lt v2, v4, :cond_0

    .line 932
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDhcpInfoCacheList count is full - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->evictAll()V

    .line 934
    const/4 v2, 0x0

    .line 937
    :cond_0
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 938
    .local v0, RealAddDhcpInfo:Landroid/net/DhcpInfoInternal;
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 939
    iget v4, p2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    iput v4, v0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 941
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 942
    .local v3, route:Landroid/net/RouteInfo;
    invoke-virtual {v0, v3}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 944
    .end local v3           #route:Landroid/net/RouteInfo;
    :cond_1
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 945
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 946
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    .line 947
    iget v4, p2, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    iput v4, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 948
    iget-object v4, p2, Landroid/net/DhcpInfoInternal;->domainName:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/DhcpInfoInternal;->domainName:Ljava/lang/String;

    .line 950
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add DhcpInfoInternal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    return-void
.end method

.method private AddDhcpInfoCache(Landroid/net/DhcpInfoInternal;)Z
    .locals 13
    .parameter "addDhcpInfo"

    .prologue
    .line 835
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v10, :cond_0

    .line 836
    const/4 v2, 0x1

    .line 924
    :goto_0
    return v2

    .line 840
    :cond_0
    const/4 v2, 0x0

    .line 841
    .local v2, bShouldSendDhcpAction:Z
    const/4 v1, 0x0

    .line 843
    .local v1, bAutoIPSetWhenDhcpRenew:Z
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 844
    .local v9, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 845
    .local v3, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_1

    .line 846
    const/4 v2, 0x1

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 850
    .local v5, strBssid:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    .line 851
    .local v7, strSsid:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 853
    :cond_2
    const-string v10, "DhcpStateMachine"

    const-string v11, "[bssid + ssid] hash key is null. Return."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v2, 0x1

    goto :goto_0

    .line 857
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, key:Ljava/lang/String;
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[bssid + ssid] hash key :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v10, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpInfoInternal;

    .line 866
    .local v0, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v0, :cond_a

    .line 867
    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, strDhcpInfoCache:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v8

    .line 871
    .local v8, straddDhcpInfo:Ljava/lang/String;
    iget-object v10, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    const v11, 0xfea9

    if-ne v10, v11, :cond_7

    .line 872
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getDLNAEnabled()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 873
    const/4 v1, 0x1

    .line 875
    :cond_4
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AUTOIP is not allowed for dhcp cache. bAutoIPSetWhenDhcpRenew == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_5
    :goto_1
    const/4 v10, 0x1

    if-ne v2, v10, :cond_9

    .line 891
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated DhcpInfoInternal 1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated DhcpInfoInternal 2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v6           #strDhcpInfoCache:Ljava/lang/String;
    .end local v8           #straddDhcpInfo:Ljava/lang/String;
    :goto_2
    if-nez v1, :cond_6

    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v10

    iget-object v11, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    if-eq v10, v11, :cond_6

    .line 914
    const-string v10, "DhcpStateMachine"

    const-string v11, "Current State is not mWaitBeforeStartState. So bShouldSendDhcpAction must be true"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v2, 0x1

    .line 921
    :cond_6
    const-string v10, "DhcpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bShouldSendDhcpAction Result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 878
    .restart local v6       #strDhcpInfoCache:Ljava/lang/String;
    .restart local v8       #straddDhcpInfo:Ljava/lang/String;
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 879
    iget-object v10, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v10, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 881
    const-string v10, "DhcpStateMachine"

    const-string v11, "[bssid + ssid] hash key is removed."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-direct {p0, v4, p1}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V

    .line 885
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 898
    :cond_9
    const-string v10, "DhcpStateMachine"

    const-string v11, "Don\'t need to update mDhcpInfoCacheList"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 904
    .end local v6           #strDhcpInfoCache:Ljava/lang/String;
    .end local v8           #straddDhcpInfo:Ljava/lang/String;
    :cond_a
    iget-object v10, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    const v11, 0xfea9

    if-ne v10, v11, :cond_b

    .line 905
    const-string v10, "DhcpStateMachine"

    const-string v11, "AUTOIP is not allowed for dhcp cache. bShouldSendDhcpAction == TRUE"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 907
    :cond_b
    invoke-direct {p0, v4, p1}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)V

    goto :goto_3
.end method

.method private CheckDhcpDirectory()Z
    .locals 8

    .prologue
    .line 663
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/misc/dhcp"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, dhcpDir:Ljava/io/File;
    const/4 v0, 0x1

    .line 666
    .local v0, bRet:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 668
    const-string v5, "DhcpStateMachine"

    const-string v6, "CheckDhcpDirectory : /data/misc/dhcp is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v5, 0x0

    .line 696
    :goto_0
    return v5

    .line 673
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 674
    .local v2, files:[Ljava/io/File;
    const/4 v4, 0x0

    .line 675
    .local v4, numFiles:I
    if-eqz v2, :cond_1

    .line 676
    array-length v4, v2

    .line 680
    :cond_1
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckDhcpDirectory [Lease File Count] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v5, 0x46

    if-le v4, v5, :cond_4

    .line 684
    const/4 v0, 0x0

    .line 686
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 687
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".lease2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 688
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 686
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 693
    :cond_3
    const-string v5, "DhcpStateMachine"

    const-string v6, "CheckDhcpDirectory : Deleted /data/misc/dhcp/dhcpcd-*.lease2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #i:I
    :cond_4
    move v5, v0

    .line 696
    goto :goto_0
.end method

.method private CheckSustainCurrentDhcpInfoCache(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 10
    .parameter "dhcpAction"

    .prologue
    const/4 v7, 0x0

    .line 992
    sget-object v8, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-eq p1, v8, :cond_1

    .line 994
    const-string v8, "DhcpStateMachine"

    const-string v9, "Don\'t need to check [bssid + ssid] hash key, dhcpAction != DhcpAction.START."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 1047
    :cond_0
    :goto_0
    return v1

    .line 999
    :cond_1
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getSustainFailedDhcpInfoCacheDisabled()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1001
    const-string v8, "DhcpStateMachine"

    const-string v9, "getSustainFailedDhcpInfoCacheDisabled == true"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 1003
    goto :goto_0

    .line 1006
    :cond_2
    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v8, :cond_3

    move v1, v7

    .line 1007
    goto :goto_0

    .line 1010
    :cond_3
    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 1011
    .local v6, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1012
    .local v2, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_4

    move v1, v7

    .line 1013
    goto :goto_0

    .line 1016
    :cond_4
    const/4 v1, 0x0

    .line 1018
    .local v1, bCheckSustainCurrentDhcpInfoCache:Z
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, strBssid:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 1020
    .local v5, strSsid:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1022
    :cond_5
    const-string v8, "DhcpStateMachine"

    const-string v9, "[CheckSustainCurrentDhcpInfoCache][bssid + ssid] hash key is null. Return."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 1024
    goto :goto_0

    .line 1026
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, key:Ljava/lang/String;
    const-string v7, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CheckSustainCurrentDhcpInfoCache][bssid + ssid] hash key :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v7, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DhcpInfoInternal;

    .line 1035
    .local v0, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v0, :cond_0

    .line 1037
    const-string v7, "DhcpStateMachine"

    const-string v8, "[CheckSustainCurrentDhcpInfoCache] bCheckSustainCurrentDhcpInfoCache set TRUE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x1

    .line 1042
    const-string v7, "DhcpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[] DHCP failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private RemoveDhcpInfoCache()V
    .locals 8

    .prologue
    .line 956
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    if-nez v5, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 961
    .local v4, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 962
    .local v0, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, strBssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 969
    .local v3, strSsid:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 971
    :cond_2
    const-string v5, "DhcpStateMachine"

    const-string v6, "[bssid + ssid] hash key is null. Return."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 975
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, key:Ljava/lang/String;
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bssid + ssid] hash key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    invoke-virtual {v5, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 984
    const-string v5, "DhcpStateMachine"

    const-string v6, "[bssid + ssid] hash key is removed."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ReplaceDhcpLeaseFileWithBackupLeaseFile()V
    .locals 7

    .prologue
    .line 725
    const-string v4, "dhcp.ap.macaddress"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 727
    .local v3, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 728
    .local v0, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, strBssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, strSsid:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 736
    :cond_1
    const-string v4, "DhcpStateMachine"

    const-string v5, "[bssid + ssid] is null. Return."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    :cond_2
    const-string v4, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcp.ap.macaddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v4, "dhcp.ap.macaddress"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V
    .locals 2

    .prologue
    .line 720
    const-string v0, "dhcp.ap.macaddress"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->CheckDhcpDirectory()Z

    .line 722
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private copyLeaseFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .parameter "cstrSrouce"
    .parameter "cstrTarget"
    .parameter "bChmod"

    .prologue
    .line 582
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v10, sourceFile:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v12, targetFile:Ljava/io/File;
    const-string v13, "DhcpStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyLeaseFile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 592
    const-string v13, "DhcpStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copyLeaseFile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 598
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 600
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :goto_1
    const/4 v4, 0x0

    .line 607
    .local v4, inputStream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 610
    .local v7, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 611
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .local v5, inputStream:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    .line 613
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .local v8, outputStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 615
    .local v2, bytesRead:I
    const/16 v13, 0x400

    :try_start_3
    new-array v1, v13, [B

    .line 617
    .local v1, buffer:[B
    :goto_2
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v5, v1, v13, v14}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    .line 619
    if-gtz v2, :cond_6

    .line 630
    if-eqz v8, :cond_3

    .line 631
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 637
    :cond_3
    if-eqz v5, :cond_4

    .line 638
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    :cond_4
    :goto_3
    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 646
    .end local v1           #buffer:[B
    .end local v2           #bytesRead:I
    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :cond_5
    :goto_4
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_0

    .line 648
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 650
    .local v9, runtime:Ljava/lang/Runtime;
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chmod 664 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 651
    .local v11, strChmodCMD:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 652
    .end local v11           #strChmodCMD:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 654
    .local v3, e:Ljava/io/IOException;
    const-string v13, "DhcpStateMachine"

    const-string/jumbo v14, "runtime Exception - chmod"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .end local v9           #runtime:Ljava/lang/Runtime;
    :catch_1
    move-exception v3

    .line 603
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 623
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v2       #bytesRead:I
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :cond_6
    const/4 v13, 0x0

    :try_start_7
    invoke-virtual {v8, v1, v13, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 626
    .end local v1           #buffer:[B
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 627
    .end local v2           #bytesRead:I
    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .local v3, e:Ljava/lang/Exception;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 630
    if-eqz v7, :cond_7

    .line 631
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 637
    :cond_7
    if-eqz v4, :cond_5

    .line 638
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 640
    :catch_3
    move-exception v6

    .line 641
    .local v6, ioe:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 629
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 630
    :goto_7
    if-eqz v7, :cond_8

    .line 631
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 637
    :cond_8
    if-eqz v4, :cond_9

    .line 638
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 629
    :cond_9
    :goto_8
    throw v13

    .line 633
    :catch_4
    move-exception v6

    .line 634
    .restart local v6       #ioe:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 637
    if-eqz v4, :cond_9

    .line 638
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_8

    .line 640
    :catch_5
    move-exception v6

    .line 641
    :goto_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 640
    .end local v6           #ioe:Ljava/io/IOException;
    :catch_6
    move-exception v6

    goto :goto_9

    .line 636
    :catchall_1
    move-exception v13

    .line 637
    if-eqz v4, :cond_a

    .line 638
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 636
    :cond_a
    :goto_a
    throw v13

    .line 640
    :catch_7
    move-exception v6

    .line 641
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 633
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v3       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 634
    .restart local v6       #ioe:Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 637
    if-eqz v4, :cond_5

    .line 638
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_4

    .line 640
    :catch_9
    move-exception v6

    goto :goto_6

    .line 636
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v13

    .line 637
    if-eqz v4, :cond_b

    .line 638
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 636
    :cond_b
    :goto_b
    throw v13

    .line 640
    :catch_a
    move-exception v6

    .line 641
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 633
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #bytesRead:I
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v6

    .line 634
    .restart local v6       #ioe:Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 637
    if-eqz v5, :cond_4

    .line 638
    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto/16 :goto_3

    .line 640
    :catch_c
    move-exception v6

    .line 641
    :goto_c
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 640
    .end local v6           #ioe:Ljava/io/IOException;
    :catch_d
    move-exception v6

    goto :goto_c

    .line 636
    :catchall_3
    move-exception v13

    .line 637
    if-eqz v5, :cond_c

    .line 638
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 636
    :cond_c
    :goto_d
    throw v13

    .line 640
    :catch_e
    move-exception v6

    .line 641
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 629
    .end local v1           #buffer:[B
    .end local v2           #bytesRead:I
    .end local v6           #ioe:Ljava/io/IOException;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v13

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .end local v7           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #bytesRead:I
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v13

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #outputStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 626
    .end local v2           #bytesRead:I
    :catch_f
    move-exception v3

    goto :goto_5

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    :catch_10
    move-exception v3

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private getDLNAEnabled()Z
    .locals 3

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, bRet:Z
    const-string v2, "dhcp.dlna.using"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 560
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 565
    :cond_0
    return v0
.end method

.method private getIpAddressToInt(Ljava/lang/String;)I
    .locals 3
    .parameter "addrString"

    .prologue
    const/4 v1, 0x0

    .line 569
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v1

    .line 573
    :cond_1
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 574
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 577
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v1

    goto :goto_0
.end method

.method private getSustainFailedDhcpInfoCacheDisabled()Z
    .locals 3

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, bRet:Z
    const-string v2, "dhcp.failinfo.notuse"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1055
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1056
    const/4 v0, 0x1

    .line 1060
    :cond_0
    return v0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    .line 205
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 206
    .local v0, dsm:Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 207
    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 14
    .parameter "dhcpAction"

    .prologue
    const/4 v13, 0x2

    const v12, 0x30005

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 431
    const/4 v4, 0x0

    .line 432
    .local v4, success:Z
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 437
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    sget-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_0

    .line 438
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    const-string v5, "DhcpStateMachine"

    const-string v6, "DHCP Start wake lock is acquired."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 444
    :cond_0
    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v5, :cond_8

    .line 445
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DHCP request on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_1

    .line 448
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->ReplaceDhcpLeaseFileWithBackupLeaseFile()V

    .line 451
    :cond_1
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v4

    .line 452
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    .line 461
    :cond_2
    :goto_0
    if-eqz v4, :cond_a

    .line 462
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DHCP succeeded on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWifiDLNA()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->getDLNAEnabled()Z

    move-result v5

    if-ne v5, v10, :cond_3

    iget-object v5, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/net/DhcpStateMachine;->getIpAddressToInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    const v6, 0xfea9

    if-ne v5, v6, :cond_3

    .line 471
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 472
    const v5, 0xa8c00

    iput v5, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 473
    const-string v5, "DhcpStateMachine"

    const-string v6, "AUTOIP is allowed for DLNA"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3
    iget v5, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    int-to-long v1, v5

    .line 481
    .local v1, leaseDuration:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_5

    .line 484
    const-wide/16 v5, 0x12c

    cmp-long v5, v1, v5

    if-gez v5, :cond_4

    .line 485
    const-wide/16 v1, 0x12c

    .line 490
    :cond_4
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x1e0

    mul-long/2addr v8, v1

    add-long/2addr v6, v8

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v13, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 497
    :cond_5
    sget-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_9

    .line 499
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->StoreDhcpBackupLeaseFileWithCurrentLeaseFile()V

    .line 503
    invoke-direct {p0, v0}, Landroid/net/DhcpStateMachine;->AddDhcpInfoCache(Landroid/net/DhcpInfoInternal;)Z

    move-result v5

    if-ne v5, v10, :cond_6

    .line 504
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v12, v10, v11, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 505
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_6

    .line 506
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 541
    .end local v1           #leaseDuration:J
    .end local v3           #msg:Landroid/os/Message;
    :cond_6
    :goto_1
    sget-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_7

    .line 542
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 543
    const-string v5, "DhcpStateMachine"

    const-string v6, "DHCP Start/Renew wake lock is released."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 547
    :cond_7
    return v4

    .line 453
    :cond_8
    sget-object v5, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v5, :cond_2

    .line 455
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DHCP renewal on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v4

    .line 458
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0, v5}, Landroid/net/DhcpInfoInternal;->updateFromDhcpRequest(Landroid/net/DhcpInfoInternal;)V

    goto/16 :goto_0

    .line 511
    .restart local v1       #leaseDuration:J
    :cond_9
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v12, v10, v11, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 520
    .end local v1           #leaseDuration:J
    :cond_a
    if-nez v4, :cond_6

    .line 522
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DHCP failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget-boolean v5, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v5, :cond_c

    .line 524
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 525
    const-string v5, "DhcpStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to stop Dhcp on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_b
    :goto_2
    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->RemoveDhcpInfoCache()V

    .line 531
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v5, v12, v13, v11}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 532
    .restart local v3       #msg:Landroid/os/Message;
    if-eqz v3, :cond_6

    .line 533
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 528
    .end local v3           #msg:Landroid/os/Message;
    :cond_c
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    goto :goto_2
.end method


# virtual methods
.method public CheckDhcpInfoCacheList(Landroid/util/LruCache;)Z
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/DhcpInfoInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const/4 v15, 0x0

    .line 752
    .local v15, valid:Z
    const/4 v4, 0x0

    .line 754
    .local v4, DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/DhcpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 757
    const-string v17, "DhcpStateMachine"

    const-string v18, "Don\'t need to check [bssid + ssid] hash key, Current State is not mWaitBeforeStartState."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/16 v17, 0x0

    .line 831
    :goto_0
    return v17

    .line 762
    :cond_0
    if-nez p1, :cond_1

    .line 763
    new-instance p1, Landroid/util/LruCache;

    .end local p1           #dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const/16 v17, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 765
    .restart local p1       #dhcpInfoCacheList:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Landroid/net/DhcpInfoInternal;>;"
    const-string v17, "DhcpStateMachine"

    const-string/jumbo v18, "setDhcpInfoCacheList Error : dhcpInfoCacheList is NULL "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 772
    const-string v17, "DhcpStateMachine"

    const-string v18, "Fatal Error! mDhcpInfoCacheList is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v17, 0x0

    goto :goto_0

    .line 777
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 778
    .local v16, wifiMngr:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 779
    .local v6, currentWifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v6, :cond_3

    .line 780
    const/16 v17, 0x0

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v13

    .line 784
    .local v13, strBssid:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    .line 785
    .local v14, strSsid:Ljava/lang/String;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 786
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 789
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 791
    .local v9, key:Ljava/lang/String;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[bssid + ssid] hash key :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mDhcpInfoCacheList:Landroid/util/LruCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    check-cast v4, Landroid/net/DhcpInfoInternal;

    .line 796
    .restart local v4       #DhcpInfoCache:Landroid/net/DhcpInfoInternal;
    if-eqz v4, :cond_8

    .line 797
    const-string/jumbo v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 798
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 799
    .local v11, netd:Landroid/os/INetworkManagementService;
    new-instance v8, Landroid/net/InterfaceConfiguration;

    invoke-direct {v8}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 802
    .local v8, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 803
    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 804
    if-eqz v11, :cond_7

    .line 806
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v8}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 808
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration succeeded: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    move-object/from16 v17, v0

    const v18, 0x30005

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 811
    .local v10, msg:Landroid/os/Message;
    if-eqz v10, :cond_6

    .line 812
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 814
    :cond_6
    const/4 v15, 0x1

    .end local v5           #b:Landroid/os/IBinder;
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #netd:Landroid/os/INetworkManagementService;
    :cond_7
    :goto_1
    move/from16 v17, v15

    .line 831
    goto/16 :goto_0

    .line 815
    .restart local v5       #b:Landroid/os/IBinder;
    .restart local v8       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #netd:Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v12

    .line 817
    .local v12, re:Landroid/os/RemoteException;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    .end local v12           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 821
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CheckDhcpInfoCacheList: IP configuration failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    .end local v5           #b:Landroid/os/IBinder;
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #netd:Landroid/os/INetworkManagementService;
    :cond_8
    const-string v17, "DhcpStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[bssid + ssid] hash key :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not exist."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 221
    return-void
.end method
