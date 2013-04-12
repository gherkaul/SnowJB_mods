.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_LGU_SIGNAL_STRENGTH:[[I

.field static final WIFI_LGU_SIGNAL_STRENGTH_LGE:[[I

.field static final WIFI_SECURITY_AP_SIGNAL_STRENGTH:[[I

.field static final WIFI_SECURITY_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGE:[[I

.field static final WIFI_UPLUS_LEVEL_COUNT:I

.field static final WIFI_UPLUS_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 22
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 37
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGE:[[I

    .line 47
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LGU_SIGNAL_STRENGTH:[[I

    .line 59
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LGU_SIGNAL_STRENGTH_LGE:[[I

    .line 69
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_UPLUS_SIGNAL_STRENGTH:[[I

    .line 79
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SECURITY_AP_SIGNAL_STRENGTH:[[I

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGE:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 91
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_UPLUS_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_UPLUS_LEVEL_COUNT:I

    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SECURITY_AP_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SECURITY_LEVEL_COUNT:I

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0x94t 0x3t 0x2t 0x7ft
        0x95t 0x3t 0x2t 0x7ft
        0x97t 0x3t 0x2t 0x7ft
        0x99t 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x94t 0x3t 0x2t 0x7ft
        0x96t 0x3t 0x2t 0x7ft
        0x98t 0x3t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 37
    :array_2
    .array-data 0x4
        0x95t 0x3t 0x2t 0x7ft
        0x97t 0x3t 0x2t 0x7ft
        0x99t 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x96t 0x3t 0x2t 0x7ft
        0x98t 0x3t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 47
    :array_4
    .array-data 0x4
        0x94t 0x3t 0x2t 0x7ft
        0x95t 0x3t 0x2t 0x7ft
        0x97t 0x3t 0x2t 0x7ft
        0x99t 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x94t 0x3t 0x2t 0x7ft
        0x32t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 59
    :array_6
    .array-data 0x4
        0x95t 0x3t 0x2t 0x7ft
        0x97t 0x3t 0x2t 0x7ft
        0x99t 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x32t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_8
    .array-data 0x4
        0xa8t 0x3t 0x2t 0x7ft
        0xaat 0x3t 0x2t 0x7ft
        0xact 0x3t 0x2t 0x7ft
        0xaet 0x3t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0xa8t 0x3t 0x2t 0x7ft
        0xaat 0x3t 0x2t 0x7ft
        0xadt 0x3t 0x2t 0x7ft
        0xaft 0x3t 0x2t 0x7ft
    .end array-data

    .line 79
    :array_a
    .array-data 0x4
        0xa0t 0x3t 0x2t 0x7ft
        0xa2t 0x3t 0x2t 0x7ft
        0xa4t 0x3t 0x2t 0x7ft
        0xa6t 0x3t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0xa0t 0x3t 0x2t 0x7ft
        0xa2t 0x3t 0x2t 0x7ft
        0xa5t 0x3t 0x2t 0x7ft
        0xa7t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
