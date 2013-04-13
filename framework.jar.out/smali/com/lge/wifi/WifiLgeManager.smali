.class public Lcom/lge/wifi/WifiLgeManager;
.super Ljava/lang/Object;
.source "WifiLgeManager.java"


# static fields
.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final AUTOIP_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

.field public static ENTERPRISE_AP:I = 0x0

.field public static final EXTRA_P2P_WIFI_STATE:Ljava/lang/String; = "lge_wifi_p2p_state"

.field public static final EXTRA_WIFI_SETTINGS_STATUS:Ljava/lang/String; = "wifi_setting_status"

.field public static MSCHAP_AP:I = 0x0

.field public static OPEN_AP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiLgeManager"

.field public static WEP_AP:I = 0x0

.field public static final WIFI_CURRENT_AP_FRAUD:I = 0x3

.field public static final WIFI_CURRENT_AP_OPEN:I = 0x1

.field public static final WIFI_CURRENT_AP_WEP:I = 0x2

.field public static final WIFI_NOTIFY_IMS_STOP_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_ACTION"

.field public static final WIFI_NOTIFY_IMS_STOP_REPLY_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFY_IMS_STOP_REPLY_ACTION"

.field public static final WIFI_NOTIFY_VT_END_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_ENDED"

.field public static final WIFI_NOTIFY_VT_START_ACTION:Ljava/lang/String; = "com.lge.ims.action.VT_STARTED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_DISABLING:I = 0x0

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x3

.field public static final WIFI_P2P_STATE_ENABLING:I = 0x2

.field public static final WIFI_P2P_STATE_NOT_SUPPORTED:I = -0x1

.field public static final WIFI_P2P_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_SETTINGS_STATUS_CHANGED_ACTION:Ljava/lang/String; = "com.lge.wifi.WIFI_SETTINGS_STATUS_CHANGED"

.field public static final WIFI_SETTINGS_STATUS_PAUSE:I = 0x0

.field public static final WIFI_SETTINGS_STATUS_RESUME:I = 0x1

.field public static WPA_AP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/lge/wifi/WifiLgeManager;->OPEN_AP:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/lge/wifi/WifiLgeManager;->WEP_AP:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/lge/wifi/WifiLgeManager;->WPA_AP:I

    .line 36
    const/4 v0, 0x3

    sput v0, Lcom/lge/wifi/WifiLgeManager;->ENTERPRISE_AP:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/lge/wifi/WifiLgeManager;->MSCHAP_AP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method
