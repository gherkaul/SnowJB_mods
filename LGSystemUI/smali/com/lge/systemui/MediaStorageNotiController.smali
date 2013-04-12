.class public Lcom/lge/systemui/MediaStorageNotiController;
.super Landroid/content/BroadcastReceiver;
.source "MediaStorageNotiController.java"


# static fields
.field private static mPercentage:I

.field public static mScannerState:I

.field private static mStorage:I


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput v0, Lcom/lge/systemui/MediaStorageNotiController;->mStorage:I

    .line 45
    sput v0, Lcom/lge/systemui/MediaStorageNotiController;->mPercentage:I

    .line 46
    sput v0, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 271
    new-instance v4, Lcom/lge/systemui/MediaStorageNotiController$2;

    invoke-direct {v4, p0}, Lcom/lge/systemui/MediaStorageNotiController$2;-><init>(Lcom/lge/systemui/MediaStorageNotiController;)V

    iput-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    .line 58
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, thr:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 61
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 62
    .local v1, l:Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mAsyncEventHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v2, mfilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_PERCENTAGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v4, "android.intent.action.MEDIA_SCANNER_ERROR"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/systemui/MediaStorageNotiController;->setScanningNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/lge/systemui/MediaStorageNotiController;->setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/systemui/MediaStorageNotiController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    .locals 7
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"

    .prologue
    .line 187
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 238
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 194
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 198
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v4, :cond_2

    if-eqz p4, :cond_2

    .line 203
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 204
    .local v1, notificationId:I
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 207
    .end local v1           #notificationId:I
    :cond_2
    if-eqz p4, :cond_4

    .line 209
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v4, :cond_3

    .line 210
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    .line 211
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 214
    :cond_3
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 216
    if-eqz p5, :cond_5

    .line 217
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 222
    :goto_1
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object p1, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 225
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v4, Landroid/app/Notification;->icon:I

    .line 226
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 229
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_4
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 233
    .restart local v1       #notificationId:I
    if-eqz p4, :cond_6

    .line 234
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 219
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 236
    .restart local v1       #notificationId:I
    :cond_6
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized setScanningNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 7
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "ongoing"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v4, :cond_2

    .line 247
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    .line 248
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 256
    if-eqz p4, :cond_3

    .line 257
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 261
    :goto_1
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object p1, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 262
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v4, Landroid/app/Notification;->icon:I

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 266
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 268
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->icon:I

    .line 269
    .local v1, notificationId:I
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 259
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/lge/systemui/MediaStorageNotiController;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onMediaScanningStateChanged(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "storageInfo"
    .parameter "percent_msg"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/systemui/MediaStorageNotiController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/systemui/MediaStorageNotiController$1;-><init>(Lcom/lge/systemui/MediaStorageNotiController;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 81
    .local v8, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 82
    .local v5, path:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 83
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 85
    :cond_0
    const-string v9, "storage"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    move-object v3, v9

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 86
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 87
    .local v7, storageVolumes:[Landroid/os/storage/StorageVolume;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 88
    if-eqz v5, :cond_1

    if-nez v7, :cond_2

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const/4 v9, 0x1

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    .line 91
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_1

    .line 92
    aget-object v9, v7, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 93
    if-nez v2, :cond_4

    .line 94
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    .line 95
    const-string v9, "NotiController"

    const-string v10, "Scan Started InternalStorage"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v9, 0x1

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mStorage:I

    .line 91
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_4
    const/4 v9, 0x1

    if-ne v2, v9, :cond_3

    .line 98
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    .line 99
    const-string v9, "NotiController"

    const-string v10, "Scan Started ExternalStorage"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v9, -0x1

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mStorage:I

    goto :goto_2

    .line 104
    .end local v2           #i:I
    :cond_5
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 105
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 107
    const/4 v9, 0x3

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    .line 108
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v9, v7

    if-ge v2, v9, :cond_1

    .line 109
    aget-object v9, v7, v2

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 110
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    .line 111
    const-string v9, "NotiController"

    const-string v10, "Scan Finished"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 115
    .end local v2           #i:I
    :cond_7
    const-string v9, "android.intent.action.MEDIA_SCANNER_PERCENTAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 116
    sget v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    sget v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 117
    :cond_8
    const/4 v9, 0x2

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    .line 118
    const-string v9, "scanning_percent"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mPercentage:I

    .line 120
    const-string v4, ""

    .line 121
    .local v4, msg:Ljava/lang/String;
    sget v9, Lcom/lge/systemui/MediaStorageNotiController;->mStorage:I

    if-lez v9, :cond_9

    .line 122
    iget-object v9, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const v10, 0x7f09008c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lge/systemui/MediaStorageNotiController;->mPercentage:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, percentMsg:Ljava/lang/CharSequence;
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v6}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 125
    .end local v6           #percentMsg:Ljava/lang/CharSequence;
    :cond_9
    sget v9, Lcom/lge/systemui/MediaStorageNotiController;->mStorage:I

    if-gez v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/lge/systemui/MediaStorageNotiController;->mContext:Landroid/content/Context;

    const v10, 0x7f09008d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lge/systemui/MediaStorageNotiController;->mPercentage:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 128
    .restart local v6       #percentMsg:Ljava/lang/CharSequence;
    const/4 v9, 0x2

    invoke-virtual {p0, v9, v6}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #percentMsg:Ljava/lang/CharSequence;
    :cond_a
    const-string v9, "android.intent.action.MEDIA_SCANNER_ERROR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    const/4 v9, -0x1

    sput v9, Lcom/lge/systemui/MediaStorageNotiController;->mScannerState:I

    .line 133
    const-string v9, "error"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, errMsg:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v1}, Lcom/lge/systemui/MediaStorageNotiController;->onMediaScanningStateChanged(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
