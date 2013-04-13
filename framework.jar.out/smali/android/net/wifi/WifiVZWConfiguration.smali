.class public Landroid/net/wifi/WifiVZWConfiguration;
.super Ljava/lang/Object;
.source "WifiVZWConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;,
        Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;,
        Landroid/net/wifi/WifiVZWConfiguration$Status;,
        Landroid/net/wifi/WifiVZWConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiVZWConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiVZWConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiVZWConfiguration$Protocol;,
        Landroid/net/wifi/WifiVZWConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiVZWConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field private static final HOSTAPD_ACCEPT_MAC_FILE:Ljava/lang/String; = "data/hostapd/hostapd.accept"

.field private static final HOSTAPD_DENY_MAC_FILE:Ljava/lang/String; = "data/hostapd/hostapd.deny"

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final wepKeyVarNames:[Ljava/lang/String; = null

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public Channel:I

.field public CountryCode:Ljava/lang/String;

.field public Maxscb:I

.field public SSID:Ljava/lang/String;

.field public accept_mac_file:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public anonymous_identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public ap_isolate:I

.field public authMode:I

.field public ca_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public client_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public deny_mac_file:Ljava/lang/String;

.field public disableReason:I

.field public eap:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public encMode:I

.field public enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public hiddenSSID:Z

.field public hw_mode:Ljava/lang/String;

.field public identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public ieee_mode:I

.field public ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

.field public linkProperties:Landroid/net/LinkProperties;

.field public macaddr_acl:I

.field public networkId:I

.field public pariwise:Ljava/lang/String;

.field public password:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public phase2:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public private_key:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

.field public proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

.field public secMode:I

.field public status:I

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "wep_key1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 759
    new-instance v0, Landroid/net/wifi/WifiVZWConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiVZWConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiVZWConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 501
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v6, "eap"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->eap:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 81
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v6, "phase2"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->phase2:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 83
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v6, "identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 85
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v6, "anonymous_identity"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->anonymous_identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 87
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v6, "password"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->password:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 89
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v6, "client_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->client_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 91
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v6, "private_key"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->private_key:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 93
    new-instance v5, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v6, "ca_cert"

    invoke-direct {v5, p0, v6, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->ca_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 96
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    iget-object v6, p0, Landroid/net/wifi/WifiVZWConfiguration;->eap:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->phase2:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->anonymous_identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iget-object v6, p0, Landroid/net/wifi/WifiVZWConfiguration;->password:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v6, v5, v10

    const/4 v6, 0x5

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->client_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->private_key:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Landroid/net/wifi/WifiVZWConfiguration;->ca_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 419
    const-string v5, "data/hostapd/hostapd.accept"

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    .line 420
    const-string v5, "data/hostapd/hostapd.deny"

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    .line 502
    const/4 v5, -0x1

    iput v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    .line 503
    iput-object v8, p0, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    .line 504
    iput-object v8, p0, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    .line 505
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    .line 506
    iput-boolean v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    .line 507
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    .line 508
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 509
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 510
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 511
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 512
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 513
    new-array v5, v10, [Ljava/lang/String;

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    .line 514
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 515
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v8, v5, v2

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 518
    .local v1, field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 520
    .end local v1           #field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    :cond_1
    sget-object v5, Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    .line 521
    sget-object v5, Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    .line 522
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 523
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    .line 524
    iput-object v8, p0, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    .line 525
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    .line 526
    iput-object v8, p0, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    .line 527
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    .line 528
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    .line 529
    iput v9, p0, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    .line 530
    const-string v5, "data/hostapd/hostapd.accept"

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    .line 531
    const-string v5, "data/hostapd/hostapd.deny"

    iput-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiVZWConfiguration;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 678
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v2, "eap"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->eap:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 81
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v2, "phase2"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->phase2:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 83
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v2, "identity"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 85
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v2, "anonymous_identity"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->anonymous_identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 87
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v2, "password"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->password:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 89
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v2, "client_cert"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->client_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 91
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string/jumbo v2, "private_key"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->private_key:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 93
    new-instance v1, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const-string v2, "ca_cert"

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;-><init>(Landroid/net/wifi/WifiVZWConfiguration;Ljava/lang/String;Landroid/net/wifi/WifiVZWConfiguration$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->ca_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 96
    const/16 v1, 0x8

    new-array v1, v1, [Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->eap:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->phase2:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->anonymous_identity:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iget-object v2, p0, Landroid/net/wifi/WifiVZWConfiguration;->password:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v2, v1, v4

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->client_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->private_key:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/net/wifi/WifiVZWConfiguration;->ca_cert:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .line 419
    const-string v1, "data/hostapd/hostapd.accept"

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    .line 420
    const-string v1, "data/hostapd/hostapd.deny"

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    .line 679
    if-eqz p1, :cond_2

    .line 680
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    .line 681
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    .line 682
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    .line 683
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    .line 684
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    .line 685
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    .line 687
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    .line 688
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 689
    iget-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    .line 693
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    .line 694
    iget-boolean v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    .line 695
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 696
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 697
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 698
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 699
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 701
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    .line 705
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    .line 706
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p1, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 707
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    .line 708
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    .line 709
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    .line 710
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    .line 711
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    .line 712
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    .line 713
    iget v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    iput v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    .line 714
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    .line 715
    iget-object v1, p1, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    .line 717
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Landroid/net/wifi/WifiVZWConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .parameter "src"

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .local v0, cardinality:I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 640
    .local v2, set:Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return-object v2
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .parameter "dest"
    .parameter "set"

    .prologue
    .line 648
    const/4 v0, -0x1

    .line 650
    .local v0, nextSetBit:I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 653
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 655
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 659
    iget-object v4, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 668
    :goto_0
    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 662
    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 664
    goto :goto_0

    .line 665
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 666
    goto :goto_0

    .line 668
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0xa

    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v9, sbuf:Ljava/lang/StringBuilder;
    iget v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    if-nez v11, :cond_2

    .line 538
    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_0
    :goto_0
    const-string v11, "ID: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " BSSID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PRIO: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    const-string v11, " KeyMgmt:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 547
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 548
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v5, v11, :cond_3

    .line 550
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 539
    .end local v5           #k:I
    :cond_2
    iget v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 540
    const-string v11, "- DSBLE: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 552
    .restart local v5       #k:I
    :cond_3
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 556
    :cond_4
    const-string v11, " Protocols:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const/4 v7, 0x0

    .local v7, p:I
    :goto_3
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    .line 558
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 559
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_6

    .line 561
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 563
    :cond_6
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 567
    :cond_7
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    const-string v11, " AuthAlgorithms:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/4 v0, 0x0

    .local v0, a:I
    :goto_5
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 570
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 571
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v0, v11, :cond_9

    .line 573
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 575
    :cond_9
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 579
    :cond_a
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    const-string v11, " PairwiseCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const/4 v8, 0x0

    .local v8, pc:I
    :goto_7
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    .line 582
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 583
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_c

    .line 585
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 587
    :cond_c
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 591
    :cond_d
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    const-string v11, " GroupCiphers:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const/4 v3, 0x0

    .local v3, gc:I
    :goto_9
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->size()I

    move-result v11

    if-ge v3, v11, :cond_10

    .line 594
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 595
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v11, v11

    if-ge v3, v11, :cond_f

    .line 597
    sget-object v11, Landroid/net/wifi/WifiVZWConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 599
    :cond_f
    const-string v11, "??"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 603
    :cond_10
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PSK: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 605
    const/16 v11, 0x2a

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    :cond_11
    iget-object v1, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .local v1, arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v6, :cond_13

    aget-object v2, v1, v4

    .line 609
    .local v2, field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v2}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_12

    .line 612
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 615
    .end local v2           #field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    .end local v10           #value:Ljava/lang/String;
    :cond_13
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IP assignment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    invoke-virtual {v12}, Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Proxy settings: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    invoke-virtual {v12}, Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v11, p0, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 722
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->networkId:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->status:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->disableReason:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 729
    .local v4, wepKey:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v4           #wepKey:Ljava/lang/String;
    :cond_0
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->priority:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-boolean v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiVZWConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 736
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiVZWConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 737
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiVZWConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 738
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiVZWConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 739
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v5}, Landroid/net/wifi/WifiVZWConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 741
    iget-object v0, p0, Landroid/net/wifi/WifiVZWConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 742
    .local v1, field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    invoke-virtual {v1}, Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 733
    .end local v1           #field:Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    .local v0, arr$:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 744
    .local v0, arr$:[Landroid/net/wifi/WifiVZWConfiguration$EnterpriseField;
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->ipAssignment:Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;

    invoke-virtual {v5}, Landroid/net/wifi/WifiVZWConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->proxySettings:Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;

    invoke-virtual {v5}, Landroid/net/wifi/WifiVZWConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 747
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    iget-object v5, p0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    return-void
.end method
