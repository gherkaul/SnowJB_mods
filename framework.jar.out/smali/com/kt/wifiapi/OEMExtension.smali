.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field public static final DP_MODE_CITY:I = 0x1

.field public static final DP_MODE_GENERAL:I = 0x2

.field public static final DP_MODE_HOME:I = 0x3

.field public static final DP_MODE_OFF:I = 0x0

.field public static final EAP_AKA_NOTIFICATION:Ljava/lang/String; = "EAP_AKA_NOTIFICATION"

.field public static final EAP_NOTIFICATION:Ljava/lang/String; = "EAP_NOTIFICATION"

.field public static final ERROR_NOTIFICATION:Ljava/lang/String; = "ERROR_NOTIFICATION"

.field public static final ERROR_NOTIFICATION_AUTH_FAIL:I = -0x5

.field public static final ERROR_NOTIFICATION_IDPW_MISPATCH:I = -0x4

.field public static final ERROR_NOTIFICATION_INVALID_USIM:I = -0x1

.field public static final ERROR_NOTIFICATION_NO_RESPONSE:I = -0x6

.field public static final ERROR_NOTIFICATION_NO_USIM:I = -0x2

.field public static final ERROR_NOTIFICATION_PW_MISPATCH:I = -0x3

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field public static final MANUAL_CONN_ENABLE_QUERY:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

.field public static final NOTIFICATION:Ljava/lang/String; = "com.kt.wifiapi.OEMExtension.NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "WifiKTAPI"

.field private static mContext:Landroid/content/Context;

.field private static mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mDisconnectionPriority:I

.field private mFeatureSupport:I

.field private mIsReceiverRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiOn:Z

    .line 25
    iput-boolean v0, p0, Lcom/kt/wifiapi/OEMExtension;->mIsReceiverRegistered:Z

    .line 35
    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mDisconnectionPriority:I

    .line 192
    new-instance v0, Lcom/kt/wifiapi/OEMExtension$1;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension$1;-><init>(Lcom/kt/wifiapi/OEMExtension;)V

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0}, Lcom/kt/wifiapi/OEMExtension;-><init>()V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    .line 77
    const-string v0, "WifiKTAPI"

    const-string v1, "[getInstance] mWifiLgeKTOEMExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 81
    sput-object p0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "WifiKTAPI"

    const-string v1, "[getInstance] mContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    .line 86
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    const-string v0, "WifiKTAPI"

    const-string v1, "[getInstance] mWifiManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    const-string v0, "WifiKTAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getInstance] is called mWifiLgeKTOEMExt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiLgeKTOEMExt:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 5

    .prologue
    .line 159
    const/16 v1, -0x55

    .line 160
    .local v1, signalStrength:I
    const/4 v0, 0x0

    .line 162
    .local v0, dpMode:I
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_rssi_polling_threshold_db"

    const/16 v4, -0x55

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 165
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 182
    :goto_0
    return v0

    .line 167
    :sswitch_0
    const/4 v0, 0x1

    .line 168
    goto :goto_0

    .line 171
    :sswitch_1
    const/4 v0, 0x2

    .line 172
    goto :goto_0

    .line 175
    :sswitch_2
    const/4 v0, 0x3

    .line 176
    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        -0x5a -> :sswitch_2
        -0x55 -> :sswitch_1
        -0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x3f

    iput v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    .line 105
    iget v0, p0, Lcom/kt/wifiapi/OEMExtension;->mFeatureSupport:I

    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getGWSScanResultsEx()Ljava/util/List;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManualConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, result:Z
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2, v2}, Landroid/net/wifi/WifiManager;->controlManualConnection(IZ)Z

    move-result v0

    .line 123
    :cond_0
    return v0
.end method

.method public setDisconnectionPriority(I)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 128
    const/16 v0, -0x64

    .line 130
    .local v0, signalStrength:I
    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-ge v1, p1, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    .line 134
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_1
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 152
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :pswitch_0
    const/16 v0, -0x4b

    .line 137
    goto :goto_1

    .line 140
    :pswitch_1
    const/16 v0, -0x55

    .line 141
    goto :goto_1

    .line 144
    :pswitch_2
    const/16 v0, -0x5a

    .line 145
    goto :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setManualConnection(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 110
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->controlManualConnection(IZ)Z

    .line 113
    :cond_0
    return v1
.end method
