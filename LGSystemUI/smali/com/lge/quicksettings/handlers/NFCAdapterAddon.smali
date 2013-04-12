.class Lcom/lge/quicksettings/handlers/NFCAdapterAddon;
.super Ljava/lang/Object;
.source "NFCAdapaterAddon.java"


# static fields
.field public static ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

.field public static EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String;

.field public static EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String;

.field public static EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String;

.field public static EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String;

.field public static STATE_CARD_OFF:I

.field public static STATE_CARD_ON:I

.field public static STATE_DISCOVERY_OFF:I

.field public static STATE_DISCOVERY_ON:I

.field public static STATE_OFF:I

.field public static STATE_ON:I

.field public static STATE_P2P_OFF:I

.field public static STATE_P2P_ON:I

.field public static STATE_TURNING_CARD_OFF:I

.field public static STATE_TURNING_CARD_ON:I

.field public static STATE_TURNING_DISCOVERY_OFF:I

.field public static STATE_TURNING_DISCOVERY_ON:I

.field public static STATE_TURNING_OFF:I

.field public static STATE_TURNING_ON:I

.field public static STATE_TURNING_P2P_OFF:I

.field public static STATE_TURNING_P2P_ON:I

.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field protected static deinitNfcSystem:Ljava/lang/reflect/Method;

.field protected static disableNfcCard:Ljava/lang/reflect/Method;

.field protected static disableNfcDiscovery:Ljava/lang/reflect/Method;

.field protected static disableNfcP2p:Ljava/lang/reflect/Method;

.field protected static enableNfcCard:Ljava/lang/reflect/Method;

.field protected static enableNfcDiscovery:Ljava/lang/reflect/Method;

.field protected static enableNfcP2p:Ljava/lang/reflect/Method;

.field protected static getAdapterCardState:Ljava/lang/reflect/Method;

.field protected static getAdapterDiscoveryState:Ljava/lang/reflect/Method;

.field protected static getAdapterP2pState:Ljava/lang/reflect/Method;

.field protected static getAdapterSysState:Ljava/lang/reflect/Method;

.field protected static getNfcAdapterAddon:Ljava/lang/reflect/Method;

.field protected static initNfcSystem:Ljava/lang/reflect/Method;

.field protected static isNfcCardModeEnabled:Ljava/lang/reflect/Method;

.field protected static isNfcP2pModeEnabled:Ljava/lang/reflect/Method;

.field protected static isNfcRwModeEnabled:Ljava/lang/reflect/Method;

.field protected static isNfcSystemEnabled:Ljava/lang/reflect/Method;

.field protected static nfcAdapterAddonObject:Ljava/lang/Object;

.field protected static nfcAddonClassLoader:Ljava/lang/ClassLoader;

.field protected static updateP2pState:Ljava/lang/reflect/Method;


# instance fields
.field private nfcAdapterAddonClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "lge.nfc.action.ADAPTER_STATE_CHANGED"

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    .line 22
    const-string v0, "com.lge.nfcaddon.extra.ADAPTER_CARD_STATE"

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String;

    .line 23
    const/16 v0, 0xb

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_OFF:I

    .line 24
    const/16 v0, 0xc

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_CARD_ON:I

    .line 25
    const/16 v0, 0xd

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_ON:I

    .line 26
    const/16 v0, 0xe

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_CARD_OFF:I

    .line 28
    const-string v0, "com.lge.nfcaddon.extra.ADAPTER_DISCOVERY_STATE"

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String;

    .line 29
    const/16 v0, 0x15

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_OFF:I

    .line 30
    const/16 v0, 0x16

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_DISCOVERY_ON:I

    .line 31
    const/16 v0, 0x17

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_ON:I

    .line 32
    const/16 v0, 0x18

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_DISCOVERY_OFF:I

    .line 34
    const-string v0, "com.lge.nfcaddon.extra.ADAPTER_P2P_STATE"

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String;

    .line 35
    const/16 v0, 0x1f

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_OFF:I

    .line 36
    const/16 v0, 0x20

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_P2P_ON:I

    .line 37
    const/16 v0, 0x21

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_ON:I

    .line 38
    const/16 v0, 0x22

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_P2P_OFF:I

    .line 40
    const-string v0, "com.lge.nfcaddon.extra.ADAPTER_SYSTEM_STATE"

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String;

    .line 41
    const/16 v0, 0x29

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_OFF:I

    .line 42
    const/16 v0, 0x2a

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_ON:I

    .line 43
    const/16 v0, 0x2b

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_ON:I

    .line 44
    const/16 v0, 0x2c

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_OFF:I

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sput-object p1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->context:Landroid/content/Context;

    .line 76
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/com.lge.nfcaddon.jar"

    const-class v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAddonClassLoader:Ljava/lang/ClassLoader;

    .line 79
    const-string v0, "com.lge.nfcaddon.NfcAdapterAddon"

    const/4 v1, 0x1

    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAddonClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    .line 82
    const-string v0, "ACTION_ADAPTER_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    .line 84
    const-string v0, "EXTRA_ADAPTER_CARD_STATE"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String;

    .line 85
    const-string v0, "STATE_CARD_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_OFF:I

    .line 86
    const-string v0, "STATE_TURNING_CARD_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_CARD_ON:I

    .line 87
    const-string v0, "STATE_CARD_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_ON:I

    .line 88
    const-string v0, "STATE_TURNING_CARD_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_CARD_OFF:I

    .line 90
    const-string v0, "EXTRA_ADAPTER_DISCOVERY_STATE"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String;

    .line 91
    const-string v0, "STATE_DISCOVERY_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_OFF:I

    .line 92
    const-string v0, "STATE_TURNING_DISCOVERY_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_DISCOVERY_ON:I

    .line 93
    const-string v0, "STATE_DISCOVERY_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_ON:I

    .line 94
    const-string v0, "STATE_TURNING_DISCOVERY_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_DISCOVERY_OFF:I

    .line 96
    const-string v0, "EXTRA_ADAPTER_P2P_STATE"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String;

    .line 97
    const-string v0, "STATE_P2P_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_OFF:I

    .line 98
    const-string v0, "STATE_TURNING_P2P_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_P2P_ON:I

    .line 99
    const-string v0, "STATE_P2P_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_ON:I

    .line 100
    const-string v0, "STATE_TURNING_P2P_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_P2P_OFF:I

    .line 102
    const-string v0, "EXTRA_ADAPTER_SYSTEM_STATE"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String;

    .line 103
    const-string v0, "STATE_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_OFF:I

    .line 104
    const-string v0, "STATE_TURNING_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_ON:I

    .line 105
    const-string v0, "STATE_ON"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_ON:I

    .line 106
    const-string v0, "STATE_TURNING_OFF"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getField_Integer(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_TURNING_OFF:I

    .line 109
    const-string v0, "getAdapterSysState"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getAdapterSysState:Ljava/lang/reflect/Method;

    .line 110
    const-string v0, "getAdapterCardState"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getAdapterCardState:Ljava/lang/reflect/Method;

    .line 111
    const-string v0, "getAdapterDiscoveryState"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getAdapterDiscoveryState:Ljava/lang/reflect/Method;

    .line 112
    const-string v0, "getAdapterP2pState"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getAdapterP2pState:Ljava/lang/reflect/Method;

    .line 114
    const-string v0, "initNfcSystem"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initNfcSystem:Ljava/lang/reflect/Method;

    .line 115
    const-string v0, "deinitNfcSystem"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->deinitNfcSystem:Ljava/lang/reflect/Method;

    .line 117
    const-string v0, "enableNfcCard"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcCard:Ljava/lang/reflect/Method;

    .line 118
    const-string v0, "disableNfcCard"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcCard:Ljava/lang/reflect/Method;

    .line 119
    const-string v0, "enableNfcDiscovery"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcDiscovery:Ljava/lang/reflect/Method;

    .line 120
    const-string v0, "disableNfcDiscovery"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcDiscovery:Ljava/lang/reflect/Method;

    .line 121
    const-string v0, "enableNfcP2p"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcP2p:Ljava/lang/reflect/Method;

    .line 122
    const-string v0, "disableNfcP2p"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcP2p:Ljava/lang/reflect/Method;

    .line 124
    const-string v0, "isNfcSystemEnabled"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled:Ljava/lang/reflect/Method;

    .line 125
    const-string v0, "isNfcCardModeEnabled"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcCardModeEnabled:Ljava/lang/reflect/Method;

    .line 126
    const-string v0, "isNfcRwModeEnabled"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcRwModeEnabled:Ljava/lang/reflect/Method;

    .line 127
    const-string v0, "isNfcP2pModeEnabled"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcP2pModeEnabled:Ljava/lang/reflect/Method;

    .line 129
    const-string v0, "getNfcAdapterAddon"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getNfcAdapterAddon:Ljava/lang/reflect/Method;

    .line 131
    const-string v0, "updateP2pState"

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->updateP2pState:Ljava/lang/reflect/Method;

    .line 134
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initDefaultNfcAdapterAddon()Z

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v1, "NFCAdapterAddon() is initialzed successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v1, "NFCAdapterAddon() is initialzed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFCAdapterAddon() : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getField_Integer(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 186
    .line 187
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 196
    :goto_0
    const-class v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 198
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_1
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getField_Integer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 207
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getField_String(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 211
    .line 212
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 216
    const-string v1, ""

    .line 217
    if-eqz v0, :cond_0

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_0
    const-class v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_1

    .line 223
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    sget-object v4, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " changed, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 235
    :goto_0
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getField_String("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v2

    .line 235
    goto :goto_0
.end method

.method private getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "methodName"

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, method:Ljava/lang/reflect/Method;
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAddonClassLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonClass:Ljava/lang/Class;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isNfcAdapterAddonSupported()Z
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/framework/com.lge.nfcaddon.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deinitNfcSystem()Z
    .locals 4

    .prologue
    .line 313
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->deinitNfcSystem:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->deinitNfcSystem:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 321
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, deinitNfcSystem\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableNfcCard()Z
    .locals 4

    .prologue
    .line 325
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcCard:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcCard:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 333
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, disableNfcCard\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableNfcDiscovery()Z
    .locals 4

    .prologue
    .line 337
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcDiscovery:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 339
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcDiscovery:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, disableNfcDiscovery\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableNfcP2p()Z
    .locals 4

    .prologue
    .line 349
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcP2p:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->disableNfcP2p:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, disableNfcP2p\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNfcCard()Z
    .locals 4

    .prologue
    .line 361
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcCard:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 363
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcCard:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :goto_0
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, enableNfcCard\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNfcDiscovery()Z
    .locals 4

    .prologue
    .line 373
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcDiscovery:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcDiscovery:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 381
    :goto_0
    return v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, enableNfcDiscovery\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNfcP2p()Z
    .locals 4

    .prologue
    .line 385
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcP2p:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcP2p:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, enableNfcP2p\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcAdapterAddon()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 450
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getNfcAdapterAddon:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getNfcAdapterAddon:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : not support api, getNfcAdapterAddon\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    move-object v1, v2

    .line 458
    goto :goto_0
.end method

.method public initDefaultNfcAdapterAddon()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcAdapterAddonSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 165
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v2, "NfcAdapterAddon, default NfcAdapterAddonObject is already initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->getNfcAdapterAddon()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    .line 172
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 173
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v2, "NfcAdapterAddon, default NfcAdapterAddonObject is initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v2, "NfcAdapterAddon, default NfcAdapterAddonObject cann\'t be initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 177
    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get default NfcAdapterAddonObject, NfcAdapterAddon is not supported."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public initNfcSystem()Z
    .locals 4

    .prologue
    .line 301
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initNfcSystem:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->initNfcSystem:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, initNfcSystem\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNfcAdapterAddonReady()Z
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v1, "NfcAdapterAddon is Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    sget-object v0, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    const-string v1, "NfcAdapterAddon is NOT Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcCardModeEnabled()Z
    .locals 4

    .prologue
    .line 426
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcCardModeEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 428
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcCardModeEnabled:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    :goto_0
    return v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, isNfcCardModeEnabled\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNfcDiscoveryModeEnabled()Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcRwModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isNfcP2pModeEnabled()Z
    .locals 4

    .prologue
    .line 438
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcP2pModeEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 440
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcP2pModeEnabled:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, isNfcP2pModeEnabled\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNfcRwModeEnabled()Z
    .locals 4

    .prologue
    .line 409
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcRwModeEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 411
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcRwModeEnabled:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 417
    :goto_0
    return v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, isNfcRwModeEnabled\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNfcSystemEnabled()Z
    .locals 4

    .prologue
    .line 397
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->isNfcSystemEnabled:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    :goto_0
    return v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, isNfcSystemEnabled\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateP2pState()Z
    .locals 4

    .prologue
    .line 462
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->updateP2pState:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 464
    :try_start_0
    sget-object v2, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->updateP2pState:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->nfcAdapterAddonObject:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 470
    :goto_0
    return v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : not support api, updateP2pState\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
