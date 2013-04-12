.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# instance fields
.field private final VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private final VZW_GPS_EXTRA_ENABLED:Ljava/lang/String;

.field private final VZW_GPS_FIX_CHANGE_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const-string v1, "com.vzw.location.GPS_ENABLED_CHANGE"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->VZW_GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 47
    const-string v1, "com.vzw.location.GPS_FIX_CHANGE"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->VZW_GPS_FIX_CHANGE_ACTION:Ljava/lang/String;

    .line 48
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->VZW_GPS_EXTRA_ENABLED:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "com.vzw.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "com.vzw.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->getNotificationService(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private getNotificationService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 73
    .local v0, nm:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v1, "LocationController"

    const-string v2, "Notification Service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 84
    .local v8, enabled:Z
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 89
    .local v14, vzw_enabled:Z
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v8, :cond_1

    :cond_0
    const-string v1, "com.vzw.location.GPS_FIX_CHANGE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v14, :cond_3

    .line 92
    :cond_1
    const v10, 0x1080539

    .line 93
    .local v10, iconId:I
    const v12, 0x7f090076

    .line 94
    .local v12, textResId:I
    const/4 v13, 0x1

    .line 107
    .local v13, visible:Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    if-nez v1, :cond_2

    .line 108
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/LocationController;->getNotificationService(Landroid/content/Context;)V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_8

    .line 113
    if-eqz v13, :cond_7

    .line 114
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v9, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 118
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 126
    .local v5, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v5, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 127
    const/4 v1, 0x0

    iput-object v1, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 129
    const/4 v1, 0x1

    iput v1, v5, Landroid/app/Notification;->priority:I

    .line 131
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 132
    .local v6, idOut:[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x3d8d7

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v5           #n:Landroid/app/Notification;
    .end local v6           #idOut:[I
    .end local v9           #gpsIntent:Landroid/content/Intent;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 95
    .end local v10           #iconId:I
    .end local v12           #textResId:I
    .end local v13           #visible:Z
    :cond_3
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    const-string v1, "com.vzw.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v14, :cond_6

    .line 98
    :cond_5
    const/4 v13, 0x0

    .line 99
    .restart local v13       #visible:Z
    const/4 v12, 0x0

    .restart local v12       #textResId:I
    move v10, v12

    .restart local v10       #iconId:I
    goto :goto_0

    .line 102
    .end local v10           #iconId:I
    .end local v12           #textResId:I
    .end local v13           #visible:Z
    :cond_6
    const v10, 0x7f02031d

    .line 103
    .restart local v10       #iconId:I
    const v12, 0x7f090075

    .line 104
    .restart local v12       #textResId:I
    const/4 v13, 0x1

    .restart local v13       #visible:Z
    goto :goto_0

    .line 139
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3d8d7

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    goto :goto_1

    .line 147
    :cond_8
    const-string v1, "LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
