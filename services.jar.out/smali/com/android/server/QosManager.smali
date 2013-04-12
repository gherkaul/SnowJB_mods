.class public Lcom/android/server/QosManager;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QosManager$PortRange;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FAILURE_GENERAL:I = -0x1

.field private static final FILTER_DELIMETER:Ljava/lang/String; = ","

.field private static final IPV4:Ljava/lang/String; = "IP"

.field private static final IPV6:Ljava/lang/String; = "IPV6"

.field private static final LOG_TAG:Ljava/lang/String; = "QoSManager"

.field private static final QOS_POLICY_FILE_NAME:Ljava/lang/String; = "/system/etc/QoSPolicy.xml"

.field private static final TOS_MASK:Ljava/lang/String; = "255"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQoSProfileReady:Z

.field private mQosProfile:Lcom/android/server/QosProfile;

.field mQosTrackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/QoSTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/ConnectivityService;

.field private mUseSrcPort:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 5
    .parameter "context"
    .parameter "connectivityService"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v3, "persist.radio.qos.use.src.port"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/QosManager;->mUseSrcPort:Z

    .line 99
    new-instance v3, Lcom/android/server/QosManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/QosManager$1;-><init>(Lcom/android/server/QosManager;)V

    iput-object v3, p0, Lcom/android/server/QosManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p1, p0, Lcom/android/server/QosManager;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    .line 134
    new-instance v3, Lcom/android/server/QosProfile;

    invoke-direct {v3}, Lcom/android/server/QosProfile;-><init>()V

    iput-object v3, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    .line 135
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z

    .line 136
    const-string v3, "persist.qos.policy.loc"

    const-string v4, "/system/etc/QoSPolicy.xml"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, qosPolicyFilename:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QoS Policy file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use source port and address filtering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/QosManager;->mUseSrcPort:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/QosProfile;->parse(Ljava/io/InputStream;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_QOS_STATE_IND"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/android/server/QosManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void

    .line 142
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QoS Policy file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/QosManager;IIIILcom/android/internal/telephony/QosSpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/server/QosManager;->updateQosStatus(IIIILcom/android/internal/telephony/QosSpec;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/QosManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 3
    .parameter "qosSpec"
    .parameter "rxPipe"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1153
    if-nez p2, :cond_0

    .line 1154
    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object p2

    .line 1155
    const/4 v0, 0x0

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1159
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1160
    return-object p2
.end method

.method private addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 2
    .parameter "qosSpec"
    .parameter "txPipe"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 1136
    if-nez p2, :cond_0

    .line 1137
    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object p2

    .line 1138
    const-string v0, "0"

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1139
    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1142
    :cond_0
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 1143
    return-object p2
.end method

.method private findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 6
    .parameter "qosSpec"
    .parameter "direction"

    .prologue
    .line 944
    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getQosPipes()Ljava/util/Collection;

    move-result-object v3

    .line 946
    .local v3, qosPipes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 947
    .local v2, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, directionValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found pipe with direction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 953
    .end local v0           #directionValue:Ljava/lang/String;
    .end local v2           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findQosByQosId(I)Landroid/net/QoSTracker;
    .locals 5
    .parameter "id"

    .prologue
    .line 923
    const/4 v2, 0x0

    .line 924
    .local v2, tracker:Landroid/net/QoSTracker;
    iget-object v4, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v4

    .line 925
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/QoSTracker;

    .line 926
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 928
    move-object v2, v1

    .line 932
    .end local v1           #qt:Landroid/net/QoSTracker;
    :cond_1
    monitor-exit v4

    .line 933
    return-object v2

    .line 932
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findQosBySocketId(I)Landroid/net/QoSTracker;
    .locals 5
    .parameter "id"

    .prologue
    .line 900
    const/4 v2, 0x0

    .line 901
    .local v2, tracker:Landroid/net/QoSTracker;
    iget-object v4, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v4

    .line 902
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/QoSTracker;

    .line 903
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 904
    invoke-virtual {v1}, Landroid/net/QoSTracker;->getSocketId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 905
    move-object v2, v1

    .line 909
    .end local v1           #qt:Landroid/net/QoSTracker;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    if-nez v2, :cond_2

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No QoSTracker available with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 913
    :cond_2
    return-object v2

    .line 909
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;
    .locals 3
    .parameter "remoteIPAddress"

    .prologue
    .line 964
    if-nez p1, :cond_0

    .line 965
    const-string v2, "remoteIPAddress is null, returning IPv4 version"

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 968
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .line 982
    :goto_0
    return-object v2

    .line 974
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 975
    .local v0, anAddress:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 976
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    goto :goto_0

    .line 978
    :cond_1
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    .end local v0           #anAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 981
    .local v1, e1:Ljava/net/UnknownHostException;
    const-string v2, "IPAddress is invalid"

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 982
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMaxRxFilterCount(Landroid/net/LinkCapabilities;)I
    .locals 6
    .parameter "cap"

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0x21

    const/16 v3, 0x18

    .line 1091
    const/4 v0, -0x1

    .line 1092
    .local v0, numFilters:I
    const/4 v1, -0x1

    .line 1094
    .local v1, numStrings:I
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1095
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_SRC_PORTS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1100
    if-le v1, v0, :cond_0

    .line 1101
    move v0, v1

    .line 1105
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1106
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_SRC_IP_ADDRESSES is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1111
    if-le v1, v0, :cond_1

    .line 1112
    move v0, v1

    .line 1116
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1117
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_FILTERSPEC_FWD_IP_TOS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1122
    if-le v1, v0, :cond_2

    .line 1123
    move v0, v1

    .line 1126
    :cond_2
    return v0
.end method

.method private getMaxTxFilterCount(Landroid/net/LinkCapabilities;)I
    .locals 6
    .parameter "cap"

    .prologue
    const/16 v5, 0x19

    const/16 v3, 0x17

    const/16 v4, 0x16

    .line 1045
    const/4 v0, -0x1

    .line 1046
    .local v0, numFilters:I
    const/4 v1, -0x1

    .line 1048
    .local v1, numStrings:I
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_DEST_PORTS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1054
    if-le v1, v0, :cond_0

    .line 1055
    move v0, v1

    .line 1059
    :cond_0
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1060
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_DEST_IP_ADDRESSES is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1065
    if-le v1, v0, :cond_1

    .line 1066
    move v0, v1

    .line 1070
    :cond_1
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1071
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_FILTERSPEC_REV_IP_TOS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1076
    if-le v1, v0, :cond_2

    .line 1077
    move v0, v1

    .line 1080
    :cond_2
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1195
    const-string v0, "QoSManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1199
    const-string v0, "QoSManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1203
    const-string v0, "QoSManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method private static networkTypeToApnType(I)Ljava/lang/String;
    .locals 3
    .parameter "netType"

    .prologue
    .line 1171
    packed-switch p0, :pswitch_data_0

    .line 1189
    :pswitch_0
    const-string v0, "QoSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1173
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1175
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 1177
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 1179
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 1181
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 1183
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 1185
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 1187
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 1171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z
    .locals 9
    .parameter "cap"
    .parameter "key"
    .parameter "filterIndex"
    .parameter "ports"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1001
    const/4 v3, 0x0

    .line 1002
    .local v3, values:[Ljava/lang/String;
    iput v4, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 1003
    iput v4, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    .line 1007
    invoke-virtual {p1, p2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-le v6, p3, :cond_2

    .line 1009
    aget-object v6, v3, p3

    const-string v7, "\\s"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    :try_start_0
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1014
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, tok:[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    if-le v6, v7, :cond_1

    .line 1017
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startQos failed due to invalid port format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 1034
    .end local v1           #tok:[Ljava/lang/String;
    :goto_0
    return v4

    .line 1020
    .restart local v1       #tok:[Ljava/lang/String;
    :cond_1
    iget v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    iget v7, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    sub-int/2addr v6, v7

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    .end local v1           #tok:[Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v5

    .line 1034
    goto :goto_0

    .line 1021
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1022
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 1023
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startQos failed due to invalid port, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 1026
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z
    .locals 17
    .parameter "cap"
    .parameter "txPipe"
    .parameter "rxPipe"
    .parameter "localPort"
    .parameter "localAddress"

    .prologue
    .line 703
    const/4 v12, 0x0

    .line 704
    .local v12, value:Ljava/lang/String;
    const/4 v13, 0x0

    .line 707
    .local v13, values:[Ljava/lang/String;
    new-instance v4, Lcom/android/server/QosManager$PortRange;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/android/server/QosManager$PortRange;-><init>(Lcom/android/server/QosManager;Lcom/android/server/QosManager$1;)V

    .line 708
    .local v4, dstPorts:Lcom/android/server/QosManager$PortRange;
    new-instance v11, Lcom/android/server/QosManager$PortRange;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lcom/android/server/QosManager$PortRange;-><init>(Lcom/android/server/QosManager;Lcom/android/server/QosManager$1;)V

    .line 710
    .local v11, srcPorts:Lcom/android/server/QosManager$PortRange;
    const/4 v5, 0x0

    .line 712
    .local v5, filterIndex:I
    const-string v14, "Preparing QoS filter"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 713
    invoke-direct/range {p0 .. p1}, Lcom/android/server/QosManager;->getMaxTxFilterCount(Landroid/net/LinkCapabilities;)I

    move-result v8

    .line 714
    .local v8, numTxFilters:I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/QosManager;->getMaxRxFilterCount(Landroid/net/LinkCapabilities;)I

    move-result v7

    .line 718
    .local v7, numRxFilters:I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/QosManager;->mUseSrcPort:Z

    if-eqz v14, :cond_1

    .line 719
    const/4 v14, -0x1

    if-ne v8, v14, :cond_0

    .line 720
    const/4 v8, 0x1

    .line 722
    :cond_0
    const/4 v14, -0x1

    if-ne v7, v14, :cond_1

    .line 723
    const/4 v7, 0x1

    .line 728
    :cond_1
    const/4 v14, -0x1

    if-ne v8, v14, :cond_2

    const/4 v14, -0x1

    if-ne v7, v14, :cond_2

    .line 729
    const-string v14, "User didn\'t specify any QoS filter keys"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 730
    const/4 v14, 0x0

    .line 890
    :goto_0
    return v14

    .line 734
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/QosManager;->getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;

    move-result-object v6

    .line 735
    .local v6, ipVersion:Lcom/android/internal/net/IPVersion;
    if-nez v6, :cond_3

    .line 736
    const/4 v14, 0x0

    goto :goto_0

    .line 741
    :cond_3
    const/16 v14, 0x15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 742
    const-string v14, "prepareQosSpec failed - transport protocol is not set"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 743
    const/4 v14, 0x0

    goto :goto_0

    .line 745
    :cond_4
    const-string v14, "udp"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 746
    const/16 v10, 0x13

    .line 747
    .local v10, srcPortStartKey:I
    const/16 v9, 0x14

    .line 748
    .local v9, srcPortRangeKey:I
    const/16 v3, 0x15

    .line 749
    .local v3, dstPortStartKey:I
    const/16 v2, 0x16

    .line 761
    .local v2, dstPortRangeKey:I
    :goto_1
    if-eqz p2, :cond_e

    .line 763
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_e

    .line 765
    const/16 v14, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 768
    sget-object v14, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v14, :cond_8

    .line 769
    const/16 v14, 0x9

    const-string v15, "IP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 775
    :goto_3
    const/16 v14, 0xa

    const-string v15, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/QosManager;->mUseSrcPort:Z

    if-eqz v14, :cond_5

    .line 782
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 783
    const-string v14, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 787
    :cond_5
    const/16 v14, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v5, v4}, Lcom/android/server/QosManager;->parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 789
    const/4 v14, 0x0

    goto :goto_0

    .line 750
    .end local v2           #dstPortRangeKey:I
    .end local v3           #dstPortStartKey:I
    .end local v9           #srcPortRangeKey:I
    .end local v10           #srcPortStartKey:I
    :cond_6
    const-string v14, "tcp"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 751
    const/16 v10, 0xf

    .line 752
    .restart local v10       #srcPortStartKey:I
    const/16 v9, 0x10

    .line 753
    .restart local v9       #srcPortRangeKey:I
    const/16 v3, 0x11

    .line 754
    .restart local v3       #dstPortStartKey:I
    const/16 v2, 0x12

    .restart local v2       #dstPortRangeKey:I
    goto :goto_1

    .line 756
    .end local v2           #dstPortRangeKey:I
    .end local v3           #dstPortStartKey:I
    .end local v9           #srcPortRangeKey:I
    .end local v10           #srcPortStartKey:I
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prepareQosSpec failed - unrecognized transport: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    .line 757
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 771
    .restart local v2       #dstPortRangeKey:I
    .restart local v3       #dstPortStartKey:I
    .restart local v9       #srcPortRangeKey:I
    .restart local v10       #srcPortStartKey:I
    :cond_8
    const/16 v14, 0x9

    const-string v15, "IPV6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_3

    .line 795
    :cond_9
    iget v14, v4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    if-eqz v14, :cond_a

    .line 796
    iget v14, v4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 797
    iget v14, v4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 801
    :cond_a
    const/16 v14, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-le v14, v5, :cond_b

    .line 803
    aget-object v14, v13, v5

    const-string v15, "\\s"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 804
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 805
    sget-object v14, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v14, :cond_d

    .line 806
    const/16 v14, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 814
    :cond_b
    :goto_4
    const/16 v14, 0x19

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-le v14, v5, :cond_c

    .line 816
    aget-object v14, v13, v5

    const-string v15, "\\s"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 817
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 818
    const/16 v14, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 819
    const/16 v14, 0xe

    const-string v15, "255"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 763
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 808
    :cond_d
    const/16 v14, 0x19

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_4

    .line 826
    :cond_e
    if-eqz p3, :cond_16

    .line 828
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_16

    .line 830
    const/16 v14, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 833
    sget-object v14, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v14, :cond_10

    .line 834
    const/16 v14, 0x9

    const-string v15, "IP"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 840
    :goto_6
    const/16 v14, 0xa

    const-string v15, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 844
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/QosManager;->mUseSrcPort:Z

    if-eqz v14, :cond_f

    .line 847
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 848
    const-string v14, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 852
    :cond_f
    const/16 v14, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v5, v11}, Lcom/android/server/QosManager;->parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 854
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 836
    :cond_10
    const/16 v14, 0x9

    const-string v15, "IPV6"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_6

    .line 860
    :cond_11
    iget v14, v11, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    if-eqz v14, :cond_12

    .line 861
    iget v14, v11, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 862
    iget v14, v11, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v14}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 866
    :cond_12
    const/16 v14, 0x22

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_13

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-le v14, v5, :cond_13

    .line 868
    aget-object v14, v13, v5

    const-string v15, "\\s"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 869
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13

    .line 870
    sget-object v14, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v14, :cond_15

    .line 871
    const/16 v14, 0xb

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 879
    :cond_13
    :goto_7
    const/16 v14, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_14

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-le v14, v5, :cond_14

    .line 881
    aget-object v14, v13, v5

    const-string v15, "\\s"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 882
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_14

    .line 883
    const/16 v14, 0xd

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 884
    const/16 v14, 0xe

    const-string v15, "255"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 828
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 873
    :cond_15
    const/16 v14, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_7

    .line 890
    :cond_16
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private prepareQoSSpec(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;
    .locals 10
    .parameter "localPort"
    .parameter "localAddress"
    .parameter "myCap"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v1, 0x2

    .line 529
    const-string v0, "Preparing qos spec"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 530
    new-instance v6, Lcom/android/internal/telephony/QosSpec;

    invoke-direct {v6}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 531
    .local v6, mQosSpec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .line 532
    .local v2, txPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v3, 0x0

    .line 533
    .local v3, rxPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v7, 0x0

    .line 535
    .local v7, value:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 536
    const-string v0, "prepareQosSpec failed because needs is null"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 537
    const/4 v6, 0x0

    .line 630
    .end local v6           #mQosSpec:Lcom/android/internal/telephony/QosSpec;
    :goto_0
    return-object v6

    .line 574
    .restart local v6       #mQosSpec:Lcom/android/internal/telephony/QosSpec;
    :cond_0
    invoke-virtual {p3, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 575
    invoke-direct {p0, v6, v2, v9, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 578
    :cond_1
    invoke-virtual {p3, v8}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 579
    invoke-direct {p0, v6, v2, v4, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 582
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 583
    const/4 v0, 0x5

    invoke-direct {p0, v6, v2, v0, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 586
    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 587
    invoke-direct {p0, v6, v2, v1, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 590
    :cond_4
    const/16 v0, 0x1b

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 591
    invoke-direct {p0, v6, v2, v5, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 595
    :cond_5
    const/16 v0, 0x1d

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 596
    invoke-direct {p0, v6, v2, v8, v7}, Lcom/android/server/QosManager;->addQosTxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 600
    :cond_6
    invoke-virtual {p3, v1}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 601
    invoke-direct {p0, v6, v3, v9, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 604
    :cond_7
    invoke-virtual {p3, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 605
    invoke-direct {p0, v6, v3, v4, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 608
    :cond_8
    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 609
    const/4 v0, 0x5

    invoke-direct {p0, v6, v3, v0, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 612
    :cond_9
    const/16 v0, 0x1c

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 613
    invoke-direct {p0, v6, v3, v5, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 616
    :cond_a
    const/16 v0, 0x1e

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 617
    invoke-direct {p0, v6, v3, v8, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 620
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 621
    invoke-direct {p0, v6, v3, v1, v7}, Lcom/android/server/QosManager;->addQosRxFlow(Lcom/android/internal/telephony/QosSpec;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    :cond_c
    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move-object v5, p2

    .line 625
    invoke-direct/range {v0 .. v5}, Lcom/android/server/QosManager;->prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 626
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 629
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared qos spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private prepareQoSSpecFromQoSPolicy(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;
    .locals 11
    .parameter "localPort"
    .parameter "localAddress"
    .parameter "cap"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 643
    const/4 v8, 0x0

    .line 644
    .local v8, role:Ljava/lang/String;
    const/4 v6, 0x0

    .line 645
    .local v6, mQosSpec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .line 646
    .local v2, txPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v3, 0x0

    .line 649
    .local v3, rxPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-boolean v0, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z

    if-nez v0, :cond_0

    .line 650
    const-string v0, "Error while parsing QoS policy file"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 687
    :goto_0
    return-object v0

    .line 655
    :cond_0
    invoke-virtual {p3, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v8

    .line 656
    iget-object v0, p0, Lcom/android/server/QosManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 658
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 659
    const-string v0, "TelephonyManager is null"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 663
    .local v7, ratId:I
    iget-object v0, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    invoke-virtual {v0, v8, v7}, Lcom/android/server/QosProfile;->getQoSSpec(Ljava/lang/String;I)Lcom/android/internal/telephony/QosSpec;

    move-result-object v6

    .line 666
    if-nez v6, :cond_2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No QoS spec matching role Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rat Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found in QoSPolicy file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 669
    goto :goto_0

    .line 678
    :cond_2
    invoke-direct {p0, v6, v4}, Lcom/android/server/QosManager;->findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/android/server/QosManager;->findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move-object v5, p2

    .line 682
    invoke-direct/range {v0 .. v5}, Lcom/android/server/QosManager;->prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v10

    .line 683
    goto :goto_0

    .line 686
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared qos spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    move-object v0, v6

    .line 687
    goto :goto_0
.end method

.method private updateQosStatus(IIIILcom/android/internal/telephony/QosSpec;)V
    .locals 3
    .parameter "txId"
    .parameter "qosId"
    .parameter "qosIndState"
    .parameter "qosState"
    .parameter "myQos"

    .prologue
    .line 502
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 504
    .local v0, qt:Landroid/net/QoSTracker;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQosStatus got indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qosState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qosId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 508
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/net/QoSTracker;->handleQosEvent(IIILcom/android/internal/telephony/QosSpec;)V

    .line 515
    :goto_1
    return-void

    .line 502
    .end local v0           #qt:Landroid/net/QoSTracker;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/QosManager;->findQosByQosId(I)Landroid/net/QoSTracker;

    move-result-object v0

    goto :goto_0

    .line 512
    .restart local v0       #qt:Landroid/net/QoSTracker;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQosStatus did not find a handle to sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentFwdLatency(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 466
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 467
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentRevLatency(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 482
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 483
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 416
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 417
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 450
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 451
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 399
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 400
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 433
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 434
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getQosState(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 382
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 383
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseQos(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 355
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Landroid/net/QoSTracker;->stopQosTransaction()V

    .line 357
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopped tracking qos for id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :try_start_1
    iget-object v2, p0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService;->removeQosRegistration(I)Z

    .line 366
    monitor-exit v3

    .line 370
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while removing qos tracker: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 363
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1

    .line 366
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 368
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No QoSTracker available for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestLink(ILandroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 18
    .parameter "id"
    .parameter "cap"
    .parameter "remoteIPAddress"
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static/range {p4 .. p4}, Landroid/net/ILinkSocketMessageHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ILinkSocketMessageHandler;

    move-result-object v3

    .line 168
    .local v3, callback:Landroid/net/ILinkSocketMessageHandler;
    const/4 v8, 0x0

    .line 169
    .local v8, linkAddress:Landroid/net/LinkAddress;
    const/4 v11, 0x0

    .line 170
    .local v11, networkType:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .line 171
    .local v6, ipVersion:Lcom/android/internal/net/IPVersion;
    const/4 v13, 0x0

    .line 175
    .local v13, v6DefaultAddr:Landroid/net/LinkAddress;
    new-instance v14, Landroid/net/ExtraLinkCapabilities;

    invoke-direct {v14}, Landroid/net/ExtraLinkCapabilities;-><init>()V

    .line 176
    .local v14, xcap:Landroid/net/ExtraLinkCapabilities;
    const/16 v15, 0x14

    const-string v16, "inactive"

    invoke-virtual/range {v14 .. v16}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkCapabilities;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 178
    .local v10, need:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v10           #need:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v15

    if-nez v15, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 185
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    new-instance v17, Landroid/net/QoSTracker;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Landroid/net/QoSTracker;-><init>(ILandroid/net/ILinkSocketMessageHandler;Landroid/net/ExtraLinkCapabilities;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 186
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to track qos request for socket: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 187
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :try_start_1
    monitor-exit v16

    .line 274
    :goto_1
    return p1

    .line 190
    :catch_0
    move-exception v4

    .line 191
    .local v4, e:Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while tracking qos request from the socket:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 193
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    .line 194
    monitor-exit v16

    goto :goto_1

    .line 196
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    :cond_1
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :goto_2
    const/16 v15, 0x1a

    invoke-virtual {v14, v15}, Landroid/net/ExtraLinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v11

    .line 204
    if-nez v11, :cond_2

    .line 205
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 206
    const/16 v15, 0x1a

    invoke-virtual {v14, v15, v11}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 210
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/QosManager;->getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;

    move-result-object v6

    .line 211
    if-nez v6, :cond_4

    .line 212
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto :goto_1

    .line 198
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring duplicate request link of qos role for socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v12

    .line 221
    .local v12, prop:Landroid/net/LinkProperties;
    if-nez v12, :cond_5

    .line 222
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Link not available for network type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 223
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto/16 :goto_1

    .line 229
    :cond_5
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v9

    .line 230
    .local v9, linkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/4 v8, 0x0

    .line 231
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 232
    .local v7, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 234
    .local v2, addr:Ljava/net/InetAddress;
    instance-of v15, v2, Ljava/net/Inet4Address;

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v15, :cond_8

    .line 235
    move-object v8, v7

    .line 255
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    :cond_7
    :goto_4
    if-nez v8, :cond_c

    .line 256
    if-nez v13, :cond_b

    .line 257
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No IP address available for network type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and IP version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 259
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto/16 :goto_1

    .line 238
    .restart local v2       #addr:Ljava/net/InetAddress;
    .restart local v7       #linkAddr:Landroid/net/LinkAddress;
    :cond_8
    instance-of v15, v2, Ljava/net/Inet6Address;

    if-eqz v15, :cond_6

    sget-object v15, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne v6, v15, :cond_6

    .line 243
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 244
    :cond_9
    move-object v13, v7

    .line 245
    goto :goto_3

    .line 248
    :cond_a
    move-object v8, v7

    .line 249
    goto :goto_4

    .line 263
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    :cond_b
    move-object v8, v13

    .line 268
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPaddress for network type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and IP version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 270
    new-instance v12, Landroid/net/LinkProperties;

    .end local v12           #prop:Landroid/net/LinkProperties;
    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    .line 271
    .restart local v12       #prop:Landroid/net/LinkProperties;
    invoke-virtual {v12, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 272
    invoke-interface {v3, v12}, Landroid/net/ILinkSocketMessageHandler;->onLinkAvail(Landroid/net/LinkProperties;)V

    goto/16 :goto_1
.end method

.method public requestQoS(IILjava/lang/String;)Z
    .locals 8
    .parameter "id"
    .parameter "port"
    .parameter "localAddress"

    .prologue
    const/4 v5, 0x0

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, qt:Landroid/net/QoSTracker;
    const/4 v1, 0x0

    .line 288
    .local v1, cap:Landroid/net/LinkCapabilities;
    const/4 v0, 0x0

    .line 289
    .local v0, apnType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 291
    .local v2, mySpec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v3

    .line 292
    if-nez v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v5

    .line 293
    :cond_1
    invoke-virtual {v3}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    .line 297
    const/16 v6, 0x1a

    invoke-virtual {v1, v6}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/QosManager;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, roleString:Ljava/lang/String;
    const-string v6, "qos_custom"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/QosManager;->prepareQoSSpec(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;

    move-result-object v2

    .line 309
    :goto_1
    if-nez v2, :cond_3

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prepare qos spec for socket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/QosManager;->prepareQoSSpecFromQoSPolicy(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;

    move-result-object v2

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v3, v2, v0}, Landroid/net/QoSTracker;->startQosTransaction(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method public resumeQoS(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, qt:Landroid/net/QoSTracker;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 343
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/QoSTracker;->resumeQosTransaction()Z

    move-result v1

    goto :goto_0
.end method

.method public suspendQoS(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, qt:Landroid/net/QoSTracker;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 326
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/QoSTracker;->suspendQosTransaction()Z

    move-result v1

    goto :goto_0
.end method
