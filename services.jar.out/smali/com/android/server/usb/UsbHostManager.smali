.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiverMount:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOtgKeyboardNotification:Landroid/app/Notification;

.field private mOtgMouseNotification:Landroid/app/Notification;

.field private mOtgOtherNotification:Landroid/app/Notification;

.field private mOtgStorageNotification:Landroid/app/Notification;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 5
    .parameter "context"
    .parameter "settingsManager"

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 78
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 87
    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mMountService:Landroid/os/storage/IMountService;

    .line 88
    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 405
    new-instance v2, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mBroadcastReceiverMount:Landroid/content/BroadcastReceiver;

    .line 435
    new-instance v2, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    new-instance v2, Lcom/android/server/usb/UsbHostManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbHostManager$3;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 92
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 100
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 102
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.usb.USB_DEVICE_OTG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v1, filterMount:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mBroadcastReceiverMount:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbHostManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbHostManager;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbHostManager;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->doUnmount()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private clearOtgNotification(Landroid/hardware/usb/UsbDevice;)V
    .locals 12
    .parameter "device"

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    .line 350
    .local v7, numInterfaces:I
    const/4 v0, 0x0

    .line 351
    .local v0, cnt:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_2

    .line 352
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 353
    .local v8, user_if:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    .line 354
    .local v4, interfaceId:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    .line 355
    .local v3, interfaceClass:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    .line 356
    .local v6, interfaceSubclass:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    .line 357
    .local v5, interfaceProtocol:I
    const v2, 0x108052f

    .line 358
    .local v2, icon:I
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    .line 359
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v10, "OTG : Detached Usb Hub "

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTG : DeviceName  : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTG : DeviceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const/4 v9, 0x3

    if-ne v3, v9, :cond_5

    .line 364
    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 365
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Keyboard detached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    if-eqz v9, :cond_0

    .line 367
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 368
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 399
    .end local v2           #icon:I
    .end local v3           #interfaceClass:I
    .end local v4           #interfaceId:I
    .end local v5           #interfaceProtocol:I
    .end local v6           #interfaceSubclass:I
    .end local v8           #user_if:Landroid/hardware/usb/UsbInterface;
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v10, "error parsing USB interface"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 370
    .restart local v2       #icon:I
    .restart local v3       #interfaceClass:I
    .restart local v4       #interfaceId:I
    .restart local v5       #interfaceProtocol:I
    .restart local v6       #interfaceSubclass:I
    .restart local v8       #user_if:Landroid/hardware/usb/UsbInterface;
    :cond_3
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 371
    :try_start_1
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Mouse detached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    if-eqz v9, :cond_0

    .line 373
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 374
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    goto :goto_1

    .line 378
    :cond_4
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown Protocol in HID classes interfaceProtocol["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    if-eqz v9, :cond_0

    .line 380
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 381
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    goto/16 :goto_1

    .line 384
    :cond_5
    const/16 v9, 0x8

    if-ne v3, v9, :cond_6

    .line 385
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Storage detached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    if-eqz v9, :cond_0

    .line 387
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 388
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    goto/16 :goto_1

    .line 391
    :cond_6
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown class : interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    if-eqz v9, :cond_0

    .line 393
    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 394
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private doUnmount()V
    .locals 8

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 476
    .local v2, mountService:Landroid/os/storage/IMountService;
    sget-object v6, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v7, "OTG : Try to unmount"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_2

    .line 479
    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, paths:[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 481
    array-length v6, v4

    if-lez v6, :cond_2

    .line 482
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 483
    aget-object v3, v4, v1

    .line 484
    .local v3, path:Ljava/lang/String;
    const-string v6, "/storage/USBstorage"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 487
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v5           #state:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1           #i:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t unmount"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 464
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 465
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 466
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMountService:Landroid/os/storage/IMountService;

    .line 471
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 468
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 463
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isBlackListed(III)Z
    .locals 1
    .parameter "clazz"
    .parameter "subClass"
    .parameter "protocol"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 122
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const/4 v2, 0x1

    .line 127
    :goto_1
    return v2

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private showOtgNotification(I)V
    .locals 12
    .parameter "icon"

    .prologue
    const v11, 0x1040571

    const v6, 0x1040570

    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 238
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    if-eqz v5, :cond_4

    .line 243
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-eq v5, p1, :cond_0

    .line 264
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.usb.USB_DEVICE_OTG"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, otgIntent:Landroid/content/Intent;
    const/high16 v5, 0x4000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 268
    .local v3, r:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 269
    .local v4, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 271
    .local v0, message:Ljava/lang/CharSequence;
    const v5, 0x202052a

    if-ne p1, v5, :cond_7

    .line 272
    const-string v5, "OTG.isUsbStorage"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 275
    .local v2, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 276
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 277
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    if-nez v5, :cond_3

    .line 278
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    .line 279
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 281
    :cond_3
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iput p1, v5, Landroid/app/Notification;->icon:I

    .line 282
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 283
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 284
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 285
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 287
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mOtgKeyboardNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 246
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #otgIntent:Landroid/content/Intent;
    .end local v2           #pIntent:Landroid/app/PendingIntent;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    if-eqz v5, :cond_5

    .line 247
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-ne v5, p1, :cond_2

    goto :goto_0

    .line 250
    :cond_5
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    if-eqz v5, :cond_6

    .line 251
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-ne v5, p1, :cond_2

    goto/16 :goto_0

    .line 254
    :cond_6
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    if-eqz v5, :cond_2

    .line 255
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    if-ne v5, p1, :cond_2

    goto/16 :goto_0

    .line 289
    .restart local v0       #message:Ljava/lang/CharSequence;
    .restart local v1       #otgIntent:Landroid/content/Intent;
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_7
    const v5, 0x2020530

    if-ne p1, v5, :cond_9

    .line 290
    const-string v5, "OTG.isUsbStorage"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 293
    .restart local v2       #pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 294
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    if-nez v5, :cond_8

    .line 296
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    .line 297
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 299
    :cond_8
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iput p1, v5, Landroid/app/Notification;->icon:I

    .line 300
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 301
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 302
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 303
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 305
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mOtgMouseNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 307
    .end local v2           #pIntent:Landroid/app/PendingIntent;
    :cond_9
    const v5, 0x2020546

    if-ne p1, v5, :cond_b

    .line 308
    const-string v5, "OTG.isUsbStorage"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 311
    .restart local v2       #pIntent:Landroid/app/PendingIntent;
    const v5, 0x104056e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 312
    const v5, 0x104056f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    if-nez v5, :cond_a

    .line 314
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    .line 315
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 317
    :cond_a
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iput p1, v5, Landroid/app/Notification;->icon:I

    .line 318
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 319
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 320
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 321
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 323
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mOtgStorageNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 326
    .end local v2           #pIntent:Landroid/app/PendingIntent;
    :cond_b
    const-string v5, "OTG.isUsbStorage"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 329
    .restart local v2       #pIntent:Landroid/app/PendingIntent;
    const v5, 0x1040572

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 330
    const v5, 0x1040572

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 331
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    if-nez v5, :cond_c

    .line 332
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    .line 333
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 335
    :cond_c
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iput p1, v5, Landroid/app/Notification;->icon:I

    .line 336
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 337
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 338
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 339
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 341
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mOtgOtherNotification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private usbDeviceAdded(Ljava/lang/String;IIIII[I[I)V
    .locals 32
    .parameter "deviceName"
    .parameter "vendorID"
    .parameter "productID"
    .parameter "deviceClass"
    .parameter "deviceSubclass"
    .parameter "deviceProtocol"
    .parameter "interfaceValues"
    .parameter "endpointValues"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_1

    .line 161
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed deviceName     : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed deviceClass    : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed deviceSubclass : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed deviceProtocol : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 170
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 172
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device already on mDevices list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v31

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v4

    monitor-exit v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 176
    :cond_3
    :try_start_1
    move-object/from16 v0, p7

    array-length v4, v0

    div-int/lit8 v30, v4, 0x5

    .line 177
    .local v30, numInterfaces:I
    move/from16 v0, v30

    new-array v0, v0, [Landroid/hardware/usb/UsbInterface;

    move-object/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .local v17, interfaces:[Landroid/os/Parcelable;
    const/16 v26, 0x0

    .local v26, ival:I
    const/16 v22, 0x0

    .line 181
    .local v22, eval:I
    const/16 v25, 0x0

    .local v25, intf:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .local v27, ival:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 182
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_2
    aget v5, p7, v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .local v5, interfaceId:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_3
    aget v6, p7, v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    .local v6, interfaceClass:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_4
    aget v7, p7, v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 185
    .local v7, interfaceSubclass:I
    add-int/lit8 v27, v26, 0x1

    .end local v26           #ival:I
    .restart local v27       #ival:I
    :try_start_5
    aget v8, p7, v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 186
    .local v8, interfaceProtocol:I
    add-int/lit8 v26, v27, 0x1

    .end local v27           #ival:I
    .restart local v26       #ival:I
    :try_start_6
    aget v29, p7, v27

    .line 188
    .local v29, numEndpoints:I
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : interfaceId       : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : interfaceClass\t : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : interfaceSubclass : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : interfaceProtocol : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : numEndpoints      : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move/from16 v0, v29

    new-array v9, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 196
    .local v9, endpoints:[Landroid/os/Parcelable;
    const/16 v21, 0x0

    .local v21, endp:I
    move/from16 v23, v22

    .end local v22           #eval:I
    .local v23, eval:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 197
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    aget v18, p8, v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 198
    .local v18, address:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_7
    aget v19, p8, v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 199
    .local v19, attributes:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #eval:I
    .restart local v22       #eval:I
    :try_start_8
    aget v28, p8, v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 200
    .local v28, maxPacketSize:I
    add-int/lit8 v23, v22, 0x1

    .end local v22           #eval:I
    .restart local v23       #eval:I
    :try_start_9
    aget v24, p8, v22

    .line 201
    .local v24, interval:I
    new-instance v4, Landroid/hardware/usb/UsbEndpoint;

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    aput-object v4, v9, v21

    .line 196
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 206
    .end local v18           #address:I
    .end local v19           #attributes:I
    .end local v24           #interval:I
    .end local v28           #maxPacketSize:I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed interfaceClass    : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed interfaceSubclass : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OTG : BlackListed interfaceProtocol : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 212
    :try_start_a
    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 214
    :cond_5
    :try_start_b
    new-instance v4, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v4 .. v9}, Landroid/hardware/usb/UsbInterface;-><init>(IIII[Landroid/os/Parcelable;)V

    aput-object v4, v17, v25
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 181
    add-int/lit8 v25, v25, 0x1

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    move/from16 v27, v26

    .end local v26           #ival:I
    .restart local v27       #ival:I
    goto/16 :goto_1

    .line 217
    .end local v5           #interfaceId:I
    .end local v6           #interfaceClass:I
    .end local v7           #interfaceSubclass:I
    .end local v8           #interfaceProtocol:I
    .end local v9           #endpoints:[Landroid/os/Parcelable;
    .end local v21           #endp:I
    .end local v27           #ival:I
    .end local v29           #numEndpoints:I
    .restart local v26       #ival:I
    :catch_0
    move-exception v20

    .line 220
    .local v20, e:Ljava/lang/Exception;
    :goto_3
    :try_start_c
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v11, "error parsing USB descriptors"

    move-object/from16 v0, v20

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    monitor-exit v31

    goto/16 :goto_0

    .line 224
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #ival:I
    .restart local v27       #ival:I
    :cond_6
    new-instance v10, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v10 .. v17}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIII[Landroid/os/Parcelable;)V

    .line 226
    .local v10, device:Landroid/hardware/usb/UsbDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/usb/UsbHostManager;->usbDeviceNotify(Landroid/hardware/usb/UsbDevice;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v4, v10}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 231
    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 217
    .end local v10           #device:Landroid/hardware/usb/UsbDevice;
    .restart local v5       #interfaceId:I
    :catch_1
    move-exception v20

    move/from16 v26, v27

    .end local v27           #ival:I
    .restart local v26       #ival:I
    goto :goto_3

    .end local v22           #eval:I
    .restart local v6       #interfaceClass:I
    .restart local v7       #interfaceSubclass:I
    .restart local v8       #interfaceProtocol:I
    .restart local v9       #endpoints:[Landroid/os/Parcelable;
    .restart local v21       #endp:I
    .restart local v23       #eval:I
    .restart local v29       #numEndpoints:I
    :catch_2
    move-exception v20

    move/from16 v22, v23

    .end local v23           #eval:I
    .restart local v22       #eval:I
    goto :goto_3
.end method

.method private usbDeviceNotify(Landroid/hardware/usb/UsbDevice;)V
    .locals 12
    .parameter "device"

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    .line 505
    .local v7, numInterfaces:I
    const/4 v0, 0x0

    .line 506
    .local v0, cnt:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_1

    .line 507
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 508
    .local v8, user_if:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    .line 509
    .local v4, interfaceId:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    .line 510
    .local v3, interfaceClass:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    .line 511
    .local v6, interfaceSubclass:I
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    .line 512
    .local v5, interfaceProtocol:I
    const v2, 0x108052f

    .line 513
    .local v2, icon:I
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_0

    .line 514
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v10, "OTG : Connect Usb Hub "

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTG : DeviceName  : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OTG : DeviceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    const/4 v9, 0x3

    if-ne v3, v9, :cond_4

    .line 519
    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    .line 520
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Keyboard attached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const v2, 0x202052a

    .line 522
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostManager;->showOtgNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 539
    .end local v2           #icon:I
    .end local v3           #interfaceClass:I
    .end local v4           #interfaceId:I
    .end local v5           #interfaceProtocol:I
    .end local v6           #interfaceSubclass:I
    .end local v8           #user_if:Landroid/hardware/usb/UsbInterface;
    :catch_0
    move-exception v1

    .line 540
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v10, "error parsing USB interface"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 523
    .restart local v2       #icon:I
    .restart local v3       #interfaceClass:I
    .restart local v4       #interfaceId:I
    .restart local v5       #interfaceProtocol:I
    .restart local v6       #interfaceSubclass:I
    .restart local v8       #user_if:Landroid/hardware/usb/UsbInterface;
    :cond_2
    const/4 v9, 0x2

    if-ne v5, v9, :cond_3

    .line 524
    :try_start_1
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Mouse attached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const v2, 0x2020530

    .line 526
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostManager;->showOtgNotification(I)V

    goto :goto_1

    .line 528
    :cond_3
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown Protocol in HID classes interfaceProtocol["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    :cond_4
    const/16 v9, 0x8

    if-ne v3, v9, :cond_5

    .line 531
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USB Storage attached! interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const v2, 0x2020546

    .line 533
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbHostManager;->showOtgNotification(I)V

    goto/16 :goto_1

    .line 535
    :cond_5
    sget-object v9, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown class : interfaceClass : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 549
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 552
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbHostManager;->clearOtgNotification(Landroid/hardware/usb/UsbDevice;)V

    .line 555
    :cond_0
    monitor-exit v2

    .line 556
    return-void

    .line 555
    .end local v0           #device:Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 598
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 599
    :try_start_0
    const-string v2, "  USB Host State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    .local v1, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4
    .parameter "devices"

    .prologue
    .line 573
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 577
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .parameter "deviceName"

    .prologue
    .line 582
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 583
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 586
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 587
    .local v0, device:Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1

    .line 589
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 562
    :try_start_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$4;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 567
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 568
    monitor-exit v2

    .line 569
    return-void

    .line 568
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
