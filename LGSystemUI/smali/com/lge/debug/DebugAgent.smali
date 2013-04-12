.class public Lcom/lge/debug/DebugAgent;
.super Ljava/lang/Object;
.source "DebugAgent.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;

.field private mDDSvcIntent:Landroid/content/Intent;

.field private mDataActivityCount:I

.field private mDataNetType:I

.field private mDataNetTypeCount:I

.field private mDataState:I

.field private mDataStateCount:I

.field private mDebugButtonScrollView:Landroid/widget/HorizontalScrollView;

.field private mDisplayMode:I

.field private mIconSlot:[Z

.field private mLGIntents:Lcom/lge/systemui/LGIntents;

.field public mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSIMCount:I

.field private mServiceCount:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStrengthCount:I

.field private mSvcConnectionThread:Ljava/lang/Runnable;

.field private mWifiActivityCount:I

.field private mWifiCount:I

.field private mWifiLevelCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/lge/systemui/LGPhoneStatusBar;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 4
    .parameter "context"
    .parameter "statusBarWindowView"
    .parameter "phoneStatusBar"
    .parameter "lgPhoneStatusBar"
    .parameter "networkController"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mSIMCount:I

    .line 66
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mServiceCount:I

    .line 67
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mStrengthCount:I

    .line 68
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDataStateCount:I

    .line 69
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDataNetTypeCount:I

    .line 70
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDataState:I

    .line 71
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDataNetType:I

    .line 72
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDataActivityCount:I

    .line 73
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mWifiCount:I

    .line 74
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mWifiLevelCount:I

    .line 75
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mWifiActivityCount:I

    .line 80
    const/16 v1, 0xa

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mIconSlot:[Z

    .line 83
    iput v2, p0, Lcom/lge/debug/DebugAgent;->mDisplayMode:I

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.lge.debug.DebugDisplay_Svc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mDDSvcIntent:Landroid/content/Intent;

    .line 86
    new-instance v1, Lcom/lge/debug/DebugAgent$1;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$1;-><init>(Lcom/lge/debug/DebugAgent;)V

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mSvcConnectionThread:Ljava/lang/Runnable;

    .line 115
    new-instance v1, Lcom/lge/debug/DebugAgent$2;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$2;-><init>(Lcom/lge/debug/DebugAgent;)V

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    new-instance v1, Lcom/lge/debug/DebugAgent$3;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$3;-><init>(Lcom/lge/debug/DebugAgent;)V

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 137
    iput-object p3, p0, Lcom/lge/debug/DebugAgent;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 138
    iput-object p4, p0, Lcom/lge/debug/DebugAgent;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    .line 140
    iput-object p5, p0, Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 141
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    .line 142
    new-instance v1, Lcom/lge/systemui/LGIntents;

    iget-object v2, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/systemui/LGIntents;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mLGIntents:Lcom/lge/systemui/LGIntents;

    .line 143
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->createDebugButton()V

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.systemui.debug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.lge.systemui.function"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method private ClearForcedFeature()V
    .locals 3

    .prologue
    .line 808
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qslide.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 809
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 813
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qremote.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 814
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 818
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/brightness_slider.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 819
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 823
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 824
    return-void
.end method

.method private ClearOperator()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/operator.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 784
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/shared_prefs/quicksettings_setting.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 789
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 790
    return-void
.end method

.method private HideBrightnessSlider()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 957
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/brightness_slider.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 958
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 980
    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 981
    return-void

    .line 961
    :cond_1
    const/4 v1, 0x0

    .line 963
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 966
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 967
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v3, 0x2d

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 971
    if-eqz v2, :cond_0

    .line 973
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    goto :goto_0

    .line 968
    :catch_1
    move-exception v0

    .line 969
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 971
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 973
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 975
    :cond_3
    :goto_3
    throw v0

    .line 974
    :catch_2
    move-exception v1

    goto :goto_3

    .line 971
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 968
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private HideQRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 900
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qremote.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 901
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 923
    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 924
    return-void

    .line 904
    :cond_1
    const/4 v1, 0x0

    .line 906
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 909
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 910
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v3, 0x2d

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 914
    if-eqz v2, :cond_0

    .line 916
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    goto :goto_0

    .line 911
    :catch_1
    move-exception v0

    .line 912
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 914
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 916
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 918
    :cond_3
    :goto_3
    throw v0

    .line 917
    :catch_2
    move-exception v1

    goto :goto_3

    .line 914
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 911
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private HideQSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 843
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qslide.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 844
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 866
    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 867
    return-void

    .line 847
    :cond_1
    const/4 v1, 0x0

    .line 849
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 850
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 852
    :cond_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 853
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v3, 0x2d

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 857
    if-eqz v2, :cond_0

    .line 859
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    goto :goto_0

    .line 854
    :catch_1
    move-exception v0

    .line 855
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 859
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 861
    :cond_3
    :goto_3
    throw v0

    .line 860
    :catch_2
    move-exception v1

    goto :goto_3

    .line 857
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 854
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private SaveOperator(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 751
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/operator.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 753
    const/4 v1, 0x0

    .line 755
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 758
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 763
    if-eqz v2, :cond_1

    .line 765
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 771
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/shared_prefs/quicksettings_setting.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 773
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 775
    :cond_2
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 776
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 765
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 767
    :cond_3
    :goto_3
    throw v0

    .line 766
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 763
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 760
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private ShowBrightnessSlider()V
    .locals 3

    .prologue
    .line 941
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/brightness_slider.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 944
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 947
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 954
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private ShowQRemote()V
    .locals 3

    .prologue
    .line 884
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qremote.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 887
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 890
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 897
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private ShowQSlide()V
    .locals 3

    .prologue
    .line 827
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qslide.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 830
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 833
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 840
    return-void

    .line 834
    :catch_0
    move-exception v0

    .line 835
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    :catchall_0
    move-exception v0

    throw v0
.end method

.method static synthetic access$000(Lcom/lge/debug/DebugAgent;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mDDSvcIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mStrengthCount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mStrengthCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mStrengthCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataStateCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataStateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mDataStateCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/debug/DebugAgent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/debug/DebugAgent;->mDataState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataNetTypeCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataNetTypeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mDataNetTypeCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataNetType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/debug/DebugAgent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/debug/DebugAgent;->mDataNetType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataActivityCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDataActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mDataActivityCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mWifiCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiLevelCount:I

    return v0
.end method

.method static synthetic access$1808(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiLevelCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mWifiLevelCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiActivityCount:I

    return v0
.end method

.method static synthetic access$1908(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mWifiActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mWifiActivityCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/debug/DebugAgent;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/debug/DebugAgent;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/debug/DebugAgent;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mIconSlot:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/debug/DebugAgent;)Lcom/lge/debug/IDebugDisplay_Svc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/debug/DebugAgent;Lcom/lge/debug/IDebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay_Svc;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/debug/DebugAgent;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lge/debug/DebugAgent;->doDebugAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/debug/DebugAgent;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lge/debug/DebugAgent;->doFunctionCall(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mSIMCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mSIMCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mSIMCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/debug/DebugAgent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mServiceCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/lge/debug/DebugAgent;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/debug/DebugAgent;->mServiceCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/debug/DebugAgent;->mServiceCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object v0
.end method

.method private createDebugButton()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mDebugButtonScrollView:Landroid/widget/HorizontalScrollView;

    .line 152
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    .local v0, button:Landroid/widget/Button;
    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v1, Lcom/lge/debug/DebugAgent$4;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$4;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 177
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "Service"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v1, Lcom/lge/debug/DebugAgent$5;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$5;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 203
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "Strength"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v1, Lcom/lge/debug/DebugAgent$6;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$6;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 237
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "Data State"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v1, Lcom/lge/debug/DebugAgent$7;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$7;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 259
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "Data NetType"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v1, Lcom/lge/debug/DebugAgent$8;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$8;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 293
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "onDataChanged"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    new-instance v1, Lcom/lge/debug/DebugAgent$9;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$9;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 301
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "Data Activity"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v1, Lcom/lge/debug/DebugAgent$10;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$10;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c001f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 326
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    new-instance v1, Lcom/lge/debug/DebugAgent$11;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$11;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 354
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "WIFI Strength"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v1, Lcom/lge/debug/DebugAgent$12;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$12;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 385
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "WIFI Activity"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v1, Lcom/lge/debug/DebugAgent$13;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$13;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 419
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "set ssid"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 420
    new-instance v1, Lcom/lge/debug/DebugAgent$14;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$14;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 426
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 427
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "tty"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v1, Lcom/lge/debug/DebugAgent$15;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$15;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 437
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "cdma_eri"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    new-instance v1, Lcom/lge/debug/DebugAgent$16;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$16;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 447
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 448
    new-instance v1, Lcom/lge/debug/DebugAgent$17;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$17;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 457
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "alarmclock"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    new-instance v1, Lcom/lge/debug/DebugAgent$18;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$18;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 468
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "sync_active"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 469
    new-instance v1, Lcom/lge/debug/DebugAgent$19;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$19;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 477
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "sync_failing"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 478
    new-instance v1, Lcom/lge/debug/DebugAgent$20;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$20;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 487
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 488
    new-instance v1, Lcom/lge/debug/DebugAgent$21;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$21;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 497
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "headset"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 498
    new-instance v1, Lcom/lge/debug/DebugAgent$22;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$22;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 507
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "gps_privacy"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 508
    new-instance v1, Lcom/lge/debug/DebugAgent$23;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$23;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 517
    .restart local v0       #button:Landroid/widget/Button;
    const-string v1, "felica_lock"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 518
    new-instance v1, Lcom/lge/debug/DebugAgent$24;

    invoke-direct {v1, p0}, Lcom/lge/debug/DebugAgent$24;-><init>(Lcom/lge/debug/DebugAgent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mDebugButtonScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 527
    return-void
.end method

.method private display(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 793
    iput p1, p0, Lcom/lge/debug/DebugAgent;->mDisplayMode:I

    .line 795
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mDDSvcIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 797
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 799
    :cond_0
    iput-object v3, p0, Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;

    .line 801
    if-eqz p1, :cond_1

    .line 802
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mSvcConnectionThread:Ljava/lang/Runnable;

    const-string v2, "DebugDisplay_Service"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 805
    :cond_1
    return-void
.end method

.method private final doDebugAction(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x64

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 530
    const-string v0, "sub action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string v1, "set operator vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    const-string v0, "VZW"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    const-string v1, "set operator at&t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    const-string v0, "ATT"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_3
    const-string v1, "set operator skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    const-string v0, "SKT"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_4
    const-string v1, "set operator ktf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    const-string v0, "KT"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_5
    const-string v1, "set operator lgu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 542
    const-string v0, "LGU"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_6
    const-string v1, "set operator docomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 544
    const-string v0, "DCM"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_7
    const-string v1, "set operator tmus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 546
    const-string v0, "TMUS"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_8
    const-string v1, "set operator kddi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 548
    const-string v0, "KDDI"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_9
    const-string v1, "set operator open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 550
    const-string v0, "OPEN"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_a
    const-string v1, "set operator mpcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 552
    const-string v0, "MPCS"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    :cond_b
    const-string v1, "set operator usc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 554
    const-string v0, "USC"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_c
    const-string v1, "set operator org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 556
    const-string v0, "ORG"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :cond_d
    const-string v1, "set operator spcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 558
    const-string v0, "SPR"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    :cond_e
    const-string v1, "set operator trf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 560
    const-string v0, "TRF"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_f
    const-string v1, "set operator acg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 562
    const-string v0, "ACG"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :cond_10
    const-string v1, "set operator rgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 564
    const-string v0, "RGS"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_11
    const-string v1, "set operator bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 566
    const-string v0, "BELL"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_12
    const-string v1, "set operator tls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 568
    const-string v0, "TLS"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    :cond_13
    const-string v1, "set operator vdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 570
    const-string v0, "VDF"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    :cond_14
    const-string v1, "set operator viv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 572
    const-string v0, "VIV"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :cond_15
    const-string v1, "set operator shb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 574
    const-string v0, "SHB"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    :cond_16
    const-string v1, "set operator mon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 576
    const-string v0, "MON"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :cond_17
    const-string v1, "set operator stl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 578
    const-string v0, "STL"

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->SaveOperator(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    :cond_18
    const-string v1, "clear operator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 580
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->ClearOperator()V

    goto/16 :goto_0

    .line 581
    :cond_19
    const-string v1, "show debug buttons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 582
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mDebugButtonScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_0

    .line 583
    :cond_1a
    const-string v1, "hide debug buttons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 584
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mDebugButtonScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_0

    .line 585
    :cond_1b
    const-string v1, "no display notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 586
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02004b

    const-string v2, "This is test"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 587
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 588
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "test"

    iget-object v4, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lge/systemui/WIFIActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x800

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 591
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 592
    :cond_1c
    const-string v1, "call notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 593
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02004b

    const-string v2, "This is test"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 594
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 595
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "test"

    iget-object v4, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lge/systemui/WIFIActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x800

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 598
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 599
    :cond_1d
    const-string v1, "voice recorder notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 600
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02004b

    const-string v2, "This is test"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 601
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 602
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "test"

    iget-object v4, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lge/systemui/WIFIActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x800

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 605
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 606
    :cond_1e
    const-string v1, "wifi screen notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 607
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02004b

    const-string v2, "This is test"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 608
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 609
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "test"

    iget-object v4, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lge/systemui/WIFIActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x800

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 612
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 613
    :cond_1f
    const-string v1, "wifi share notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 614
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02004b

    const-string v2, "This is test"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 615
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 616
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v2, "title"

    const-string v3, "test"

    iget-object v4, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lge/systemui/WIFIActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x800

    invoke-static {v4, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 619
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 620
    :cond_20
    const-string v1, "remove notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 621
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 622
    :cond_21
    const-string v1, "kill systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 623
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 624
    :cond_22
    const-string v1, "display activity list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 625
    invoke-direct {p0, v7}, Lcom/lge/debug/DebugAgent;->display(I)V

    goto/16 :goto_0

    .line 626
    :cond_23
    const-string v1, "display memory info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 627
    invoke-direct {p0, v9}, Lcom/lge/debug/DebugAgent;->display(I)V

    goto/16 :goto_0

    .line 628
    :cond_24
    const-string v1, "display layout guide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 629
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lge/debug/DebugAgent;->display(I)V

    goto/16 :goto_0

    .line 630
    :cond_25
    const-string v1, "no display anyinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 631
    invoke-direct {p0, v8}, Lcom/lge/debug/DebugAgent;->display(I)V

    goto/16 :goto_0

    .line 632
    :cond_26
    const-string v1, "intents available check"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 633
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mLGIntents:Lcom/lge/systemui/LGIntents;

    invoke-virtual {v0}, Lcom/lge/systemui/LGIntents;->checkIntentStatus()V

    goto/16 :goto_0

    .line 634
    :cond_27
    const-string v1, "show music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 636
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "display"

    aput-object v3, v2, v8

    const-string v3, "playing"

    aput-object v3, v2, v7

    const-string v3, "name=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "MUSIC"

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_28

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 638
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 639
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 640
    iget-object v3, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Music display = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", playing= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x7d0

    invoke-static {v3, v1, v9, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 642
    :cond_28
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 644
    :cond_29
    const-string v1, "show fmradio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 646
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "display"

    aput-object v3, v2, v8

    const-string v3, "playing"

    aput-object v3, v2, v7

    const-string v3, "name=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "FMRADIO"

    aput-object v6, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 648
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 649
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 650
    iget-object v3, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FMRadio display = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", playing= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x7d0

    invoke-static {v3, v1, v9, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 652
    :cond_2a
    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 654
    :cond_2b
    const-string v1, "set music true true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 655
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 656
    const-string v1, "display"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v1, "playing"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'MUSIC\'"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v1, "Music = true"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v9, v2, v3}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 660
    :cond_2c
    const-string v1, "set music false false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 661
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 662
    const-string v1, "display"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    const-string v1, "playing"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'MUSIC\'"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v1, "Music = false"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v9, v2, v3}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 666
    :cond_2d
    const-string v1, "set fmradio true true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 667
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 668
    const-string v1, "display"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v1, "playing"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'FMRADIO\'"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v1, "FMRaio = true"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v9, v2, v3}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 672
    :cond_2e
    const-string v1, "set fmradio false false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 673
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 674
    const-string v1, "display"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v1, "playing"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    const-string v3, "name=\'FMRADIO\'"

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;

    const-string v1, "FMRaio = false"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v9, v2, v3}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 678
    :cond_2f
    const-string v1, "clear forced feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 679
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->ClearForcedFeature()V

    goto/16 :goto_0

    .line 680
    :cond_30
    const-string v1, "show QSlide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 681
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->ShowQSlide()V

    goto/16 :goto_0

    .line 682
    :cond_31
    const-string v1, "hide QSlide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 683
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->HideQSlide()V

    goto/16 :goto_0

    .line 684
    :cond_32
    const-string v1, "show QRemote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 685
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->ShowQRemote()V

    goto/16 :goto_0

    .line 686
    :cond_33
    const-string v1, "hide QRemote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 687
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->HideQRemote()V

    goto/16 :goto_0

    .line 688
    :cond_34
    const-string v1, "show BrightnessSlider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 689
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->ShowBrightnessSlider()V

    goto/16 :goto_0

    .line 690
    :cond_35
    const-string v1, "hide BrightnessSlider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->HideBrightnessSlider()V

    goto/16 :goto_0
.end method

.method private final doFunctionCall(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    const-string v0, "sub action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    const-string v1, "disable function parameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    const-string v0, "sub2 action"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 702
    iget-object v1, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 703
    :cond_2
    const-string v1, "expand function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 704
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    goto :goto_0

    .line 705
    :cond_3
    const-string v1, "collapse function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    goto :goto_0

    .line 707
    :cond_4
    const-string v1, "enableTransparentStatusbar function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 708
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->enableTransparentStatusbar()V

    goto :goto_0

    .line 709
    :cond_5
    const-string v1, "disableTransparentStatusbar function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 710
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->disableTransparentStatusbar()V

    goto :goto_0

    .line 711
    :cond_6
    const-string v1, "enableMusicControl function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 712
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 713
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0, v3}, Lcom/lge/systemui/LGPhoneStatusBar;->makeMiniComponent(Z)V

    goto :goto_0

    .line 714
    :cond_7
    const-string v1, "disableMusicControl function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 715
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 716
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/lge/systemui/LGPhoneStatusBar;->makeMiniComponent(Z)V

    goto :goto_0

    .line 717
    :cond_8
    const-string v1, "disableTouch function true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 718
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disableTouch(Z)V

    goto :goto_0

    .line 719
    :cond_9
    const-string v1, "disableTouch function false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 720
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disableTouch(Z)V

    goto/16 :goto_0

    .line 721
    :cond_a
    const-string v1, "setSystemUiVisibility function parameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 722
    const-string v0, "sub2 action"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 725
    :try_start_0
    invoke-direct {p0}, Lcom/lge/debug/DebugAgent;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_0

    .line 727
    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 732
    :cond_b
    const-string v1, "setDragSensitivity true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 733
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->setDragSensitivity(Z)V

    goto/16 :goto_0

    .line 734
    :cond_c
    const-string v1, "setDragSensitivity false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->setDragSensitivity(Z)V

    goto/16 :goto_0
.end method

.method public static forcedBrightnessSlider()I
    .locals 4

    .prologue
    .line 984
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/brightness_slider.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 986
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 988
    const/4 v0, 0x1

    .line 994
    :goto_0
    return v0

    .line 990
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 994
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forcedQRemote()I
    .locals 4

    .prologue
    .line 927
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qremote.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 929
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    .line 933
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 937
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forcedQSlide()I
    .locals 4

    .prologue
    .line 870
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.android.systemui/files/qslide.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 872
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x1

    .line 880
    :goto_0
    return v0

    .line 876
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 880
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 741
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 743
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 744
    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
