.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final NAME_OF_BRCM_PACKAGE:Ljava/lang/String; = "com.broadcom.bt.server.BrcmBtServiceLoader"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1171
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1173
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1175
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 112
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void
.end method

.method public run()V
    .locals 129

    .prologue
    .line 118
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 121
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 126
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 127
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 131
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    .line 133
    .local v103, shutdownAction:Ljava/lang/String;
    if-eqz v103, :cond_0

    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    const/4 v3, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_1e

    const/16 v97, 0x1

    .line 137
    .local v97, reboot:Z
    :goto_0
    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_1f

    .line 138
    const/4 v3, 0x1

    invoke-virtual/range {v103 .. v103}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v103

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 143
    .local v96, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v97

    move-object/from16 v1, v96

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 153
    .end local v96           #reason:Ljava/lang/String;
    .end local v97           #reboot:Z
    :cond_0
    const/16 v72, 0x0

    .line 156
    .local v72, factoryTest:I
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 158
    .local v16, headless:Z
    const/16 v41, 0x0

    .line 159
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v59, 0x0

    .line 160
    .local v59, contentService:Landroid/content/ContentService;
    const/16 v77, 0x0

    .line 161
    .local v77, lights:Lcom/android/server/LightsService;
    const/16 v95, 0x0

    .line 162
    .local v95, power:Lcom/android/server/PowerManagerService;
    const/16 v48, 0x0

    .line 163
    .local v48, battery:Lcom/android/server/BatteryService;
    const/16 v115, 0x0

    .line 164
    .local v115, vibrator:Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 165
    .local v44, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 166
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 167
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 168
    .local v86, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v57, 0x0

    .line 169
    .local v57, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v126, 0x0

    .line 170
    .local v126, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v120, 0x0

    .line 171
    .local v120, wifi:Lcom/android/server/WifiService;
    const/16 v102, 0x0

    .line 172
    .local v102, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v94, 0x0

    .line 173
    .local v94, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 174
    .local v4, context:Landroid/content/Context;
    const/16 v128, 0x0

    .line 175
    .local v128, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v49, 0x0

    .line 176
    .local v49, bluetooth:Landroid/server/BluetoothService;
    const/16 v51, 0x0

    .line 177
    .local v51, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v67, 0x0

    .line 178
    .local v67, dock:Lcom/android/server/DockObserver;
    const/16 v113, 0x0

    .line 179
    .local v113, usb:Lcom/android/server/usb/UsbService;
    const/16 v100, 0x0

    .line 180
    .local v100, serial:Lcom/android/server/SerialService;
    const/16 v111, 0x0

    .line 181
    .local v111, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v98, 0x0

    .line 182
    .local v98, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v106, 0x0

    .line 183
    .local v106, throttle:Lcom/android/server/ThrottleService;
    const/16 v88, 0x0

    .line 184
    .local v88, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v54, 0x0

    .line 185
    .local v54, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v76, 0x0

    .line 187
    .local v76, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v64, 0x0

    .line 192
    .local v64, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_57

    .line 197
    .end local v95           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    sget-boolean v3, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v3, :cond_1

    .line 201
    const-string v3, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v64

    .line 203
    const-string v3, "DeviceManager3LM"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 207
    :cond_1
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static/range {v72 .. v72}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 212
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    :cond_2
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 224
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 227
    .local v62, cryptState:Ljava/lang/String;
    const/16 v93, 0x0

    .line 228
    .local v93, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 229
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v93, 0x1

    .line 236
    :cond_3
    :goto_2
    if-eqz v72, :cond_21

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, v93

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v94

    .line 239
    const/16 v73, 0x0

    .line 241
    .local v73, firstBoot:Z
    :try_start_2
    invoke-interface/range {v94 .. v94}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v73

    .line 245
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 247
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 251
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 253
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_58

    move-object/from16 v41, v42

    .line 258
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_5
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, 0x1

    move/from16 v0, v72

    if-ne v0, v3, :cond_22

    const/4 v3, 0x1

    :goto_6
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v59

    .line 262
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 265
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v78, Lcom/android/server/LightsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 268
    .end local v77           #lights:Lcom/android/server/LightsService;
    .local v78, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v78

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_59

    .line 270
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 272
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v116, Lcom/android/server/VibratorService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5a

    .line 274
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .local v116, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v78

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 280
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5b

    .line 282
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 288
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v3, 0x1

    move/from16 v0, v72

    if-eq v0, v3, :cond_23

    const/4 v3, 0x1

    move v9, v3

    :goto_7
    if-nez v73, :cond_24

    const/4 v3, 0x1

    :goto_8
    move/from16 v0, v93

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v128

    .line 292
    const-string v3, "window"

    move-object/from16 v0, v128

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 293
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v76

    .line 294
    const-string v3, "input"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v128

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 300
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->isBRCMSolution()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    const-string v3, "SystemServer"

    const-string v9, "[LG_BTUI] BT BRCM Loader"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 303
    :try_start_b
    const-string v3, "com.broadcom.bt.server.BrcmBtServiceLoader"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v63

    .line 304
    .local v63, ctrClass:Ljava/lang/Class;
    if-nez v63, :cond_25

    .line 305
    const-string v3, "SystemServer"

    const-string v9, "[LG_BTUI] Check NAME_OF_BRCM_PACKAGE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 327
    .end local v63           #ctrClass:Ljava/lang/Class;
    :cond_4
    :goto_9
    :try_start_c
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 328
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    :goto_a
    move-object/from16 v115, v116

    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .line 372
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v73           #firstBoot:Z
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v93           #onlyCore:Z
    .restart local v77       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v65, 0x0

    .line 373
    .local v65, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v104, 0x0

    .line 374
    .local v104, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v74, 0x0

    .line 375
    .local v74, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v45, 0x0

    .line 376
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v90, 0x0

    .line 377
    .local v90, notification:Lcom/android/server/NotificationManagerService;
    const/16 v118, 0x0

    .line 378
    .local v118, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v79, 0x0

    .line 379
    .local v79, location:Lcom/android/server/LocationManagerService;
    const/16 v60, 0x0

    .line 380
    .local v60, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v109, 0x0

    .line 381
    .local v109, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v81, 0x0

    .line 382
    .local v81, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v69, 0x0

    .line 385
    .local v69, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v72

    if-eq v0, v3, :cond_5

    .line 387
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v75, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v75

    move-object/from16 v1, v128

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 389
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .local v75, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_56

    move-object/from16 v74, v75

    .line 395
    .end local v75           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 404
    :cond_5
    :goto_d
    :try_start_10
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 410
    :goto_e
    :try_start_11
    invoke-interface/range {v94 .. v94}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 416
    :goto_f
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040415

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_55

    .line 423
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v72

    if-eq v0, v3, :cond_2c

    .line 424
    const/16 v84, 0x0

    .line 425
    .local v84, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 431
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v85, Lcom/android/server/MountService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 433
    .end local v84           #mountService:Lcom/android/server/MountService;
    .local v85, mountService:Lcom/android/server/MountService;
    :try_start_14
    const-string v3, "mount"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_54

    move-object/from16 v84, v85

    .line 440
    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_11
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v82, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 442
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v82, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_16
    const-string v3, "lock_settings"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_53

    move-object/from16 v81, v82

    .line 448
    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v66, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 450
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v66, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_18
    const-string v3, "device_policy"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_52

    move-object/from16 v65, v66

    .line 455
    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 456
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/lge/cappuccino/IMdm;->launchService(Landroid/content/Context;)V

    .line 461
    :cond_7
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v105, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v128

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 463
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v105, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1a
    const-string v3, "statusbar"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_51

    move-object/from16 v104, v105

    .line 468
    .end local v105           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    invoke-static {}, Lcom/lge/internal/AndroidUpgradeChecker;->getInstance()Lcom/lge/internal/AndroidUpgradeChecker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/internal/AndroidUpgradeChecker;->isAndroidUpgraded()Z

    move-result v3

    if-nez v3, :cond_8

    .line 469
    const-string v3, "SystemServer"

    const-string v9, "startSystemUI() faster!!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v4}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 474
    :cond_8
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 482
    :goto_15
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 484
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 490
    :goto_16
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v110, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 492
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v110, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1e
    const-string v3, "textservices"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_50

    move-object/from16 v109, v110

    .line 498
    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v87, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 500
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v87, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_20
    const-string v3, "netstats"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4f

    move-object/from16 v12, v87

    .line 506
    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 510
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_22
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4e

    .line 516
    :goto_19
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v127, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 518
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v127, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_24
    const-string v3, "wifip2p"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4d

    move-object/from16 v126, v127

    .line 526
    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    sget-boolean v3, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWiFiOffloading()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 528
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "WiFi Offloading Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 530
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v125

    .line 531
    .local v125, wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    move-object/from16 v0, v125

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 540
    .end local v125           #wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    :cond_9
    :goto_1b
    sget-boolean v3, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWiFiAggregation()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 542
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "WiFi Aggregation Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiAggregationIfaceIface()Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 544
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiAggregationIfaceIface()Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    move-result-object v122

    .line 545
    .local v122, wifiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;
    move-object/from16 v0, v122

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 555
    .end local v122           #wifiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;
    :cond_a
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v121, Lcom/android/server/WifiService;

    move-object/from16 v0, v121

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 557
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .local v121, wifi:Lcom/android/server/WifiService;
    :try_start_28
    const-string v3, "wifi"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4c

    move-object/from16 v120, v121

    .line 563
    .end local v121           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    :goto_1d
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v58, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 566
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .local v58, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2a
    const-string v3, "connectivity"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 567
    move-object/from16 v0, v58

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 568
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 569
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 570
    invoke-virtual/range {v126 .. v126}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 571
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4b

    move-object/from16 v57, v58

    .line 577
    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1e
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v102

    .line 579
    const-string v3, "servicediscovery"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 586
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v107, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 588
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .local v107, throttle:Lcom/android/server/ThrottleService;
    :try_start_2d
    const-string v3, "throttle"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_4a

    move-object/from16 v106, v107

    .line 595
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    :goto_20
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18

    .line 607
    :goto_21
    if-eqz v84, :cond_b

    .line 608
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 611
    :cond_b
    const-string v3, "ro.lge.capp_sdencryption"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 613
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "LGSDEncService service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v3, "LGSDEnc"

    new-instance v9, Lcom/android/server/LGSDEncService;

    invoke-direct {v9, v4}, Lcom/android/server/LGSDEncService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 622
    :cond_c
    :goto_22
    if-eqz v41, :cond_d

    .line 623
    :try_start_30
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 629
    :cond_d
    :goto_23
    if-eqz v59, :cond_e

    .line 630
    :try_start_31
    invoke-virtual/range {v59 .. v59}, Landroid/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 636
    :cond_e
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v91, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v104

    move-object/from16 v2, v77

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1c

    .line 638
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .local v91, notification:Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v3, "notification"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 639
    move-object/from16 v0, v91

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_49

    move-object/from16 v90, v91

    .line 645
    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1d

    .line 653
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v80, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .line 655
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .local v80, location:Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v3, "location"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_48

    move-object/from16 v79, v80

    .line 661
    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v61, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 663
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v61, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v3, "country_detector"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_47

    move-object/from16 v60, v61

    .line 669
    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 677
    :goto_29
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 684
    :goto_2a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 687
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-nez v16, :cond_f

    .line 689
    new-instance v119, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 690
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v119, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3c
    const-string v3, "wallpaper"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_46

    move-object/from16 v118, v119

    .line 697
    .end local v119           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_f
    :goto_2b
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 699
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 707
    :cond_10
    :goto_2c
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v68, Lcom/android/server/DockObserver;

    move-object/from16 v0, v68

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .end local v67           #dock:Lcom/android/server/DockObserver;
    .local v68, dock:Lcom/android/server/DockObserver;
    move-object/from16 v67, v68

    .line 715
    .end local v68           #dock:Lcom/android/server/DockObserver;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 723
    :goto_2e
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v114, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 726
    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .local v114, usb:Lcom/android/server/usb/UsbService;
    :try_start_41
    const-string v3, "usb"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_45

    move-object/from16 v113, v114

    .line 732
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .restart local v113       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v101, Lcom/android/server/SerialService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .line 735
    .end local v100           #serial:Lcom/android/server/SerialService;
    .local v101, serial:Lcom/android/server/SerialService;
    :try_start_43
    const-string v3, "serial"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_44

    move-object/from16 v100, v101

    .line 741
    .end local v101           #serial:Lcom/android/server/SerialService;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v112, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_28

    .end local v111           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v112, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v111, v112

    .line 749
    .end local v112           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v111       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .line 757
    :goto_32
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v46, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 759
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .local v46, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_47
    const-string v3, "appwidget"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_43

    move-object/from16 v45, v46

    .line 765
    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v99, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2b

    .end local v98           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v99, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v98, v99

    .line 772
    .end local v99           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v98       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    .line 779
    :goto_35
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v47, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 781
    .local v47, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    .line 791
    .end local v47           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_36
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2e

    .line 799
    :goto_37
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v89, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2f

    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v89, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v88, v89

    .line 806
    .end local v89           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v55, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_30

    .line 808
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v55, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4e
    const-string v3, "commontime_management"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_42

    move-object/from16 v54, v55

    .line 814
    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_39
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 820
    :goto_3a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 823
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v70, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_32

    .line 826
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v70, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_51
    const-string v3, "dreams"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_41

    move-object/from16 v69, v70

    .line 833
    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_11
    :goto_3b
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_THEMEICON:Z

    if-eqz v3, :cond_12

    .line 835
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "ThemeIconManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v3, "themeicon"

    new-instance v9, Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/thm/ThemeIconManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_33

    .line 845
    :cond_12
    :goto_3c
    const-string v3, "SPR"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 848
    :try_start_53
    const-string v3, "sprint_lte_service"

    const-string v9, "add sprint_lte_service"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const-string v3, "lte"

    new-instance v9, Lcom/sprint/net/ConnectionService;

    invoke-direct {v9, v4}, Lcom/sprint/net/ConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_34

    .line 857
    :cond_13
    :goto_3d
    const-string v3, "SPR"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 860
    :try_start_54
    const-string v3, "sprint_cdma_service"

    const-string v9, "add sprint_cdma_service"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v3, "cdma"

    new-instance v9, Lcom/sprint/net/cdma/CDMAConnectionService;

    invoke-direct {v9, v4}, Lcom/sprint/net/cdma/CDMAConnectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_35

    .line 871
    :cond_14
    :goto_3e
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "Wifi Ext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 873
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v123

    .line 875
    .local v123, wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    move-object/from16 v0, v123

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_36

    .line 884
    .end local v123           #wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    :cond_15
    :goto_3f
    sget-boolean v3, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useMobileHotspot()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 886
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "Mobile Hotspot Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 888
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v124

    .line 889
    .local v124, wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    move-object/from16 v0, v124

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WifiMHPIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_37

    .line 899
    .end local v124           #wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    :cond_16
    :goto_40
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v9, "KT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 902
    :try_start_57
    const-string v3, "KT UCA"

    const-string v9, "KT UCA Service"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v3, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_38

    .line 914
    :cond_17
    :goto_41
    const-string v3, "SPR_MFW_TEST"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 917
    :try_start_58
    const-string v3, "sprintservice"

    const-string v9, "sprint check connection service"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const-string v3, "SPCconnectivity"

    new-instance v9, Lcom/sprint/net/SPCConnectivityService;

    invoke-direct {v9, v4}, Lcom/sprint/net/SPCConnectivityService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_39

    .line 928
    :cond_18
    :goto_42
    sget-boolean v3, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v3, :cond_19

    .line 929
    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 931
    const-string v3, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_19

    .line 932
    const-string v3, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v3, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 944
    .end local v84           #mountService:Lcom/android/server/MountService;
    :cond_19
    :goto_43
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 945
    .local v28, safeMode:Z
    if-eqz v28, :cond_2b

    .line 946
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 948
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 950
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 959
    :goto_44
    :try_start_59
    invoke-virtual/range {v115 .. v115}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_3a

    .line 964
    :goto_45
    if-eqz v65, :cond_1a

    .line 966
    :try_start_5a
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_3b

    .line 972
    :cond_1a
    :goto_46
    if-eqz v90, :cond_1b

    .line 974
    :try_start_5b
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3c

    .line 981
    :cond_1b
    :goto_47
    :try_start_5c
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3d

    .line 986
    :goto_48
    if-eqz v28, :cond_1c

    .line 987
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 993
    :cond_1c
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v56

    .line 994
    .local v56, config:Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 995
    .local v83, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/view/WindowManager;

    .line 996
    .local v117, w:Landroid/view/WindowManager;
    invoke-interface/range {v117 .. v117}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 997
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v56

    move-object/from16 v1, v83

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 999
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1001
    :try_start_5d
    invoke-interface/range {v94 .. v94}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3e

    .line 1006
    :goto_49
    :try_start_5e
    invoke-virtual/range {v81 .. v81}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3f

    .line 1012
    :goto_4a
    move-object/from16 v17, v4

    .line 1013
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1014
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1015
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1016
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1017
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v57

    .line 1018
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v67

    .line 1019
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v113

    .line 1020
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v106

    .line 1021
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v111

    .line 1022
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v45

    .line 1023
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v118

    .line 1024
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v74

    .line 1025
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v98

    .line 1026
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v79

    .line 1027
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v60

    .line 1028
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v88

    .line 1029
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v54

    .line 1030
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v109

    .line 1031
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v104

    .line 1032
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v69

    .line 1033
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v76

    .line 1034
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v49

    .line 1041
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1161
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1162
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1166
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 134
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v59           #contentService:Landroid/content/ContentService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v64           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v67           #dock:Lcom/android/server/DockObserver;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #factoryTest:I
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v94           #pm:Landroid/content/pm/IPackageManager;
    .end local v98           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v100           #serial:Lcom/android/server/SerialService;
    .end local v102           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v111           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .end local v117           #w:Landroid/view/WindowManager;
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v128           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_1e
    const/16 v97, 0x0

    goto/16 :goto_0

    .line 140
    .restart local v97       #reboot:Z
    :cond_1f
    const/16 v96, 0x0

    .restart local v96       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 231
    .end local v96           #reason:Ljava/lang/String;
    .end local v97           #reboot:Z
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v59       #contentService:Landroid/content/ContentService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v64       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #dock:Lcom/android/server/DockObserver;
    .restart local v72       #factoryTest:I
    .restart local v76       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93       #onlyCore:Z
    .restart local v94       #pm:Landroid/content/pm/IPackageManager;
    .restart local v98       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    .restart local v102       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    .restart local v111       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v113       #usb:Lcom/android/server/usb/UsbService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v128       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_20
    :try_start_5f
    const-string v3, "1"

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v93, 0x1

    goto/16 :goto_2

    .line 236
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 254
    .restart local v73       #firstBoot:Z
    :catch_0
    move-exception v71

    .line 255
    .local v71, e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_1

    goto/16 :goto_5

    .line 367
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v73           #firstBoot:Z
    .end local v93           #onlyCore:Z
    :catch_1
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .line 368
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v71, e:Ljava/lang/RuntimeException;
    :goto_4c
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 259
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #e:Ljava/lang/RuntimeException;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v73       #firstBoot:Z
    .restart local v93       #onlyCore:Z
    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 289
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v116       #vibrator:Lcom/android/server/VibratorService;
    :cond_23
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_7

    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 307
    .restart local v63       #ctrClass:Ljava/lang/Class;
    :cond_25
    :try_start_60
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v92

    .line 308
    .local v92, obj:Ljava/lang/Object;
    const-string v3, "loadServices"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    move-object/from16 v0, v63

    invoke-virtual {v0, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v108

    .line 310
    .local v108, tm:Ljava/lang/reflect/Method;
    if-nez v108, :cond_26

    .line 311
    const-string v3, "SystemServer"

    const-string v9, "[LG_BTUI] Can\'t find the loadServices"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_3

    goto/16 :goto_9

    .line 317
    .end local v63           #ctrClass:Ljava/lang/Class;
    .end local v92           #obj:Ljava/lang/Object;
    .end local v108           #tm:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v71

    .line 318
    .local v71, e:Ljava/lang/Exception;
    :try_start_61
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v71

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_3

    .line 367
    .end local v71           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v71

    move-object/from16 v115, v116

    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto :goto_4c

    .line 313
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #ctrClass:Ljava/lang/Class;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v92       #obj:Ljava/lang/Object;
    .restart local v108       #tm:Ljava/lang/reflect/Method;
    .restart local v116       #vibrator:Lcom/android/server/VibratorService;
    :cond_26
    :try_start_62
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "method name--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v108 .. v108}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const/4 v9, 0x1

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    move-object/from16 v0, v108

    move-object/from16 v1, v92

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_3

    goto/16 :goto_9

    .line 329
    .end local v63           #ctrClass:Ljava/lang/Class;
    .end local v92           #obj:Ljava/lang/Object;
    .end local v108           #tm:Ljava/lang/reflect/Method;
    :cond_27
    const/4 v3, 0x1

    move/from16 v0, v72

    if-ne v0, v3, :cond_28

    .line 330
    :try_start_63
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 332
    :cond_28
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v50, Landroid/server/BluetoothService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_63} :catch_3

    .line 334
    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .local v50, bluetooth:Landroid/server/BluetoothService;
    :try_start_64
    const-string v3, "bluetooth"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 335
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 337
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 338
    new-instance v52, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_5c

    .line 339
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v52, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_65
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 341
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_5d

    move-object/from16 v51, v52

    .line 345
    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_29
    :try_start_66
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->isBRCMSolution()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    .line 349
    .local v43, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    .line 351
    .local v53, bluetoothOn:I
    if-nez v43, :cond_2a

    if-eqz v53, :cond_2a

    .line 352
    invoke-virtual/range {v50 .. v50}, Landroid/server/BluetoothService;->enable()Z
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_5c

    .end local v43           #airplaneModeOn:I
    .end local v53           #bluetoothOn:I
    :cond_2a
    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 390
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v73           #firstBoot:Z
    .end local v78           #lights:Lcom/android/server/LightsService;
    .end local v93           #onlyCore:Z
    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v71

    .line 391
    .local v71, e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 398
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v71

    .line 399
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 405
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v71

    .line 406
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 411
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v71

    .line 412
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 434
    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    :catch_8
    move-exception v71

    .line 435
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 443
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v71

    .line 444
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 451
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v71

    .line 452
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 464
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v71

    .line 465
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 477
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v71

    .line 478
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 485
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v71

    .line 486
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 493
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v71

    .line 494
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 501
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v71

    .line 502
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 511
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v71

    move-object/from16 v8, v86

    .line 512
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 519
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v71

    .line 520
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 533
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v71

    .line 534
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting WiFi Offloading Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 547
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v71

    .line 548
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting WiFi Aggregation Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 558
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v71

    .line 559
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 572
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v71

    .line 573
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 581
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v71

    .line 582
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 590
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v71

    .line 591
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 598
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v71

    .line 599
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 615
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v71

    .line 616
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting LGSDEmcService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 624
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v71

    .line 625
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 631
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v71

    .line 632
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 640
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v71

    .line 641
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 648
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v71

    .line 649
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 656
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v71

    .line 657
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 664
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v71

    .line 665
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 672
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v71

    .line 673
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 680
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v71

    .line 681
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 692
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v71

    .line 693
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 701
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v71

    .line 702
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 710
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v71

    .line 711
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 718
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v71

    .line 719
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 727
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v71

    .line 728
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 736
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v71

    .line 737
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 744
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v71

    .line 745
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 752
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v71

    .line 753
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 760
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v71

    .line 761
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 767
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v71

    .line 768
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 774
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v71

    .line 775
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 782
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v71

    .line 783
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 794
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v71

    .line 795
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 801
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v71

    .line 802
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 809
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v71

    .line 810
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 816
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v71

    .line 817
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 827
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v71

    .line 828
    .restart local v71       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 838
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v71

    .line 839
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting ThemeIconManager"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 850
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v71

    .line 851
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "sprint_lte_service"

    const-string v9, "Failure starting sprint_lte_service service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 862
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v71

    .line 863
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "sprint_cdma_service"

    const-string v9, "Failure starting sprint_cdma_service service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 877
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v71

    .line 878
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Wifi Ext Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 891
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v71

    .line 892
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Mobile Hotspot Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 905
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v71

    .line 906
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "KT UCA"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 919
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v71

    .line 920
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "sprintservice"

    const-string v9, "Failure starting sprint check connection service"

    move-object/from16 v0, v71

    invoke-static {v3, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 953
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_2b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_44

    .line 960
    :catch_3a
    move-exception v71

    .line 961
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 967
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v71

    .line 968
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 975
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v71

    .line 976
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 982
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v71

    .line 983
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1002
    .end local v71           #e:Ljava/lang/Throwable;
    .restart local v56       #config:Landroid/content/res/Configuration;
    .restart local v83       #metrics:Landroid/util/DisplayMetrics;
    .restart local v117       #w:Landroid/view/WindowManager;
    :catch_3e
    move-exception v71

    .line 1003
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1007
    .end local v71           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v71

    .line 1008
    .restart local v71       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 242
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #config:Landroid/content/res/Configuration;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v71           #e:Ljava/lang/Throwable;
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v83           #metrics:Landroid/util/DisplayMetrics;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v117           #w:Landroid/view/WindowManager;
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v73       #firstBoot:Z
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v93       #onlyCore:Z
    :catch_40
    move-exception v3

    goto/16 :goto_4

    .line 827
    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v73           #firstBoot:Z
    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v93           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v70       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v71

    move-object/from16 v69, v70

    .end local v70           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto/16 :goto_61

    .line 809
    .end local v54           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_42
    move-exception v71

    move-object/from16 v54, v55

    .end local v55           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 760
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v46       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_43
    move-exception v71

    move-object/from16 v45, v46

    .end local v46           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 736
    .end local v100           #serial:Lcom/android/server/SerialService;
    .restart local v101       #serial:Lcom/android/server/SerialService;
    :catch_44
    move-exception v71

    move-object/from16 v100, v101

    .end local v101           #serial:Lcom/android/server/SerialService;
    .restart local v100       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 727
    .end local v113           #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    :catch_45
    move-exception v71

    move-object/from16 v113, v114

    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .restart local v113       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 692
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v119       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_46
    move-exception v71

    move-object/from16 v118, v119

    .end local v119           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5c

    .line 664
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_47
    move-exception v71

    move-object/from16 v60, v61

    .end local v61           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5b

    .line 656
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .restart local v80       #location:Lcom/android/server/LocationManagerService;
    :catch_48
    move-exception v71

    move-object/from16 v79, v80

    .end local v80           #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5a

    .line 640
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v91       #notification:Lcom/android/server/NotificationManagerService;
    :catch_49
    move-exception v71

    move-object/from16 v90, v91

    .end local v91           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_59

    .line 590
    .end local v106           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    :catch_4a
    move-exception v71

    move-object/from16 v106, v107

    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v106       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_58

    .line 572
    .end local v57           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4b
    move-exception v71

    move-object/from16 v57, v58

    .end local v58           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_57

    .line 558
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v121       #wifi:Lcom/android/server/WifiService;
    :catch_4c
    move-exception v71

    move-object/from16 v120, v121

    .end local v121           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_56

    .line 519
    .end local v126           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v127       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4d
    move-exception v71

    move-object/from16 v126, v127

    .end local v127           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v126       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_55

    .line 511
    :catch_4e
    move-exception v71

    goto/16 :goto_54

    .line 501
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v86       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4f
    move-exception v71

    move-object/from16 v12, v87

    .end local v87           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_53

    .line 493
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v110       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_50
    move-exception v71

    move-object/from16 v109, v110

    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_52

    .line 464
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v105       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_51
    move-exception v71

    move-object/from16 v104, v105

    .end local v105           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_51

    .line 451
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_52
    move-exception v71

    move-object/from16 v65, v66

    .end local v66           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_50

    .line 443
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v82       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_53
    move-exception v71

    move-object/from16 v81, v82

    .end local v82           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4f

    .line 434
    .end local v84           #mountService:Lcom/android/server/MountService;
    .restart local v85       #mountService:Lcom/android/server/MountService;
    :catch_54
    move-exception v71

    move-object/from16 v84, v85

    .end local v85           #mountService:Lcom/android/server/MountService;
    .restart local v84       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4e

    .line 420
    .end local v84           #mountService:Lcom/android/server/MountService;
    :catch_55
    move-exception v3

    goto/16 :goto_10

    .line 390
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_56
    move-exception v71

    move-object/from16 v74, v75

    .end local v75           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4d

    .line 367
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v60           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v65           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v69           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v74           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v79           #location:Lcom/android/server/LocationManagerService;
    .end local v81           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v90           #notification:Lcom/android/server/NotificationManagerService;
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v95       #power:Lcom/android/server/PowerManagerService;
    :catch_57
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v62       #cryptState:Ljava/lang/String;
    .restart local v73       #firstBoot:Z
    .restart local v93       #onlyCore:Z
    :catch_58
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    :catch_59
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v48

    .end local v48           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v116       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v71

    move-object/from16 v7, v44

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v115, v116

    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v116       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v71

    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v115, v116

    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v49           #bluetooth:Landroid/server/BluetoothService;
    .end local v51           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v77           #lights:Lcom/android/server/LightsService;
    .end local v115           #vibrator:Lcom/android/server/VibratorService;
    .restart local v50       #bluetooth:Landroid/server/BluetoothService;
    .restart local v52       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v78       #lights:Lcom/android/server/LightsService;
    .restart local v116       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v71

    move-object/from16 v51, v52

    .end local v52           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v49, v50

    .end local v50           #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v115, v116

    .end local v116           #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v77, v78

    .end local v78           #lights:Lcom/android/server/LightsService;
    .restart local v77       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .line 254
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v48       #battery:Lcom/android/server/BatteryService;
    :catch_5e
    move-exception v71

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4b

    .end local v44           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v48           #battery:Lcom/android/server/BatteryService;
    .end local v62           #cryptState:Ljava/lang/String;
    .end local v73           #firstBoot:Z
    .end local v93           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v60       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v65       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v69       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v74       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v79       #location:Lcom/android/server/LocationManagerService;
    .restart local v81       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v90       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_2c
    move-object/from16 v8, v86

    .end local v86           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_43
.end method
