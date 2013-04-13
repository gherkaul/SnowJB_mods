.class public Lcom/lge/config/BtFeatureConfig;
.super Ljava/lang/Object;
.source "BtFeatureConfig.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BtFeatureConfig"

.field private static btFeature:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isFeatureLoaded:Z

.field private static final mBrcmBoards:[Ljava/lang/String;

.field private static final mTargetOp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FX1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "L1v"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GKU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GVDCM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GKSK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GKKT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GKATT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->mBrcmBoards:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    .line 46
    sput-boolean v3, Lcom/lge/config/BtFeatureConfig;->isFeatureLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private BtFeatureConfig()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method private static btFeatureConfigSet()V
    .locals 3

    .prologue
    .line 58
    sget-object v1, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    monitor-enter v1

    .line 63
    :try_start_0
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 64
    const-string v0, "LGBT_COMMON_SCENARIO_SECURITY"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 65
    const-string v0, "LGBT_CNDTL_FUNCTION_OPP_AUTO_IMPORT"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 66
    const-string v0, "LGBT_COMMON_FUNCTION_FTP_DRM"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 67
    const-string v0, "LGBT_COMMON_SCENARIO_NESTED_VCARD"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 68
    const-string v0, "LGBT_COMMON_SIG_PTS_MENU"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 69
    const-string v0, "LGBT_COMMON_LGTEST_ATCMD_SIM_ACCESS"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 70
    const-string v0, "LGBT_COMMON_SCENARIO_3WAYCALL"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_SHOW_VK"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 72
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_SETTING_DEVICE_NAME"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 73
    const-string v0, "LGBT_COMMON_SCENARIO_NO_AUTOSCAN"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 74
    const-string v0, "LGBT_COMMON_FUNCTIOON_MEM_DIAL"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 75
    const-string v0, "LGBT_COMMON_SCENARIO_BLOCKBLDN_SAMENUM"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 76
    const-string v0, "LGBT_COMMON_SCENARIO_PAIRING_RETRY"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 77
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_CONNECT_ICON"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 78
    const-string v0, "LGBT_COMMON_SCENARIO_DISABLE_FILTER"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 79
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_DISABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 80
    const-string v0, "LGBT_COMMON_FUNCTION_BPP_DISABLE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 81
    const-string v0, "LGBT_COMMON_SCENARIO_CLEAR_TRANSFER_HISTORY"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 82
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_SEARCH_FILTER"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 83
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_POWERSAVE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 84
    const-string v0, "LGBT_COMMON_SCENARIO_CONNECT_TOAST"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 85
    const-string v0, "LGBT_COMMON_SCENARIO_DISPLAY_ONLY_CONNECTED"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "LGBT_COMMON_SCENARIO_SHUTDOWN_WO_DISCONNECT"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "LGBT_COMMON_SCENARIO_BLOCK_SENDING_DRM_FILES"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 88
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 89
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 90
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 92
    const-string v0, "LGBT_COMMON_MAX"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 104
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 106
    const-string v0, "LGBT_CNDTL_SCENARIO_VZW_ADVANCED_MENU"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 107
    const-string v0, "LGBT_CNDTL_SCENARIO_VZW_SHOW_PBAP_CONN_TOAST"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 108
    const-string v0, "LGBT_CNDTL_SCENARIO_GAP_CARKIT_ICON"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 109
    const-string v0, "LGBT_CNDTL_FUNCTION_HFP_CDMA_RSSI_MODIFY"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 110
    const-string v0, "LGBT_CNDTL_SCENARIO_GAP_CONNECT_AFTER_PAIR"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 111
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_DISABLE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 344
    :cond_0
    :goto_0
    monitor-exit v1

    .line 348
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_2
    :try_start_1
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 129
    :cond_3
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "CRK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 136
    :cond_4
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    const-string v0, "QCT_BT_CNDTL_PATCH_DCM_SCMST"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 138
    const-string v0, "LGBT_COMMON_FUNCTION_PAN_DISABLE"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 143
    :cond_5
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "BYT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 145
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 146
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto :goto_0

    .line 152
    :cond_6
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "EVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 155
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 161
    :cond_7
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "KPN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 163
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 164
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 170
    :cond_8
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "MON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 173
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 179
    :cond_9
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "O2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 181
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 182
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 188
    :cond_a
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 191
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 197
    :cond_b
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "ORG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 199
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 200
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 206
    :cond_c
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SFR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 208
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 209
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 215
    :cond_d
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SHB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 216
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 217
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 218
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 224
    :cond_e
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "STL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 225
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 226
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 233
    :cond_f
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TCL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 234
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 242
    :cond_10
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 243
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 251
    :cond_11
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 252
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 253
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 254
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 260
    :cond_12
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TL2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 261
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 262
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 263
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 269
    :cond_13
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TLA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 271
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 272
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 278
    :cond_14
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 279
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 280
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 281
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 287
    :cond_15
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "VDF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 288
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 289
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 290
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 296
    :cond_16
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "VIV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 298
    const-string v0, "LGBT_COMMON_FUNCTION_VOICEDIALING"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 299
    const-string v0, "LGBT_COMMON_CONNECT_ANOTHER_PROFILE_WHEN_INCOMING_AUDIO_CONNECTION"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 304
    :cond_17
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 305
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 306
    const-string v0, "LGBT_COMMON_LGTEST_ATCMD_SIM_ACCESS"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    .line 307
    const-string v0, "LGBT_CNDTL_SCENARIO_CHANGE_CALLER_ID_WHEN_CALL_SWAP"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 313
    :cond_18
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 314
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->isBRCMSolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 321
    :cond_19
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 322
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->isBRCMSolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 329
    :cond_1a
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "KT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 330
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->isBRCMSolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string v0, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lge/config/BtFeatureConfig;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 340
    :cond_1b
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    const-string v2, "DUMMY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private static get(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    .line 460
    sget-boolean v0, Lcom/lge/config/BtFeatureConfig;->isFeatureLoaded:Z

    if-eq v0, v1, :cond_0

    .line 461
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->btFeatureConfigSet()V

    .line 462
    sput-boolean v1, Lcom/lge/config/BtFeatureConfig;->isFeatureLoaded:Z

    .line 468
    :cond_0
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/Boolean;

    sget-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mTargetOp:Ljava/lang/String;

    return-object v0
.end method

.method public static isBRCMSolution()Z
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mBrcmBoards:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ro.product.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBRCMSolution(Ljava/lang/String;)Z
    .locals 1
    .parameter "szBoardName"

    .prologue
    .line 392
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->mBrcmBoards:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCRKServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 438
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCommonServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 435
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDCMServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 439
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKTServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 441
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLGUServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 442
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLgBtToastEnabled()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public static isLgBtToastEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 443
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMPCSServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 437
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSKTServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 440
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 375
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVzwServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 436
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->get(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static listPrintDebug()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method private static set(Ljava/lang/String;Z)V
    .locals 2
    .parameter "svcName"
    .parameter "bYn"

    .prologue
    .line 453
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_0
    sget-object v0, Lcom/lge/config/BtFeatureConfig;->btFeature:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method
