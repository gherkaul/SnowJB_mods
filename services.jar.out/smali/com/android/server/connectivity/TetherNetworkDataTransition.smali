.class public Lcom/android/server/connectivity/TetherNetworkDataTransition;
.super Ljava/lang/Object;
.source "TetherNetworkDataTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetherNetworkDataTransition$1;,
        Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_TIMEOUT:I = 0x2710

.field public static final CMD_GET_MOBILE_HOTSPOT_FLAG:I = 0x6a

.field public static final CMD_GET_USB_TETHERING_FLAG:I = 0x6c

.field public static final CMD_SET_MOBILE_HOTSPOT_FLAG:I = 0x69

.field public static final CMD_SET_USB_TETHERING_FLAG:I = 0x6b

.field private static final DEBUG:Z = false

.field private static final INT_SIZE:I = 0x4

.field private static final LONG_TIMEOUT:J = 0x7530L

.field public static final QCRILHOOK_CMD_GET:I = 0x91004

.field public static final QCRILHOOK_CMD_SET:I = 0x91005

.field public static final QCRILHOOK_OEM_BASE:I = 0x90000

.field public static final QCRILHOOK_OEM_LGRIL_BASE:I = 0x91000

.field public static final QCRILHOOK_OPRT_MODE:I = 0x91003

.field public static final QCRILHOOK_SVC_READ:I = 0x91001

.field public static final QCRILHOOK_SVC_WRITE:I = 0x91002

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final SHORT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "TetherNetworkDataTransition"

.field private static mTetherNetworkFlagSet:Z


# instance fields
.field private connectivityObject:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHeaderSize:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mTetherNetworkData:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mOemIdentifier:Ljava/lang/String;

    .line 68
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 97
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/TetherNetworkDataTransition;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->readMipErrorCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendTetherBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .parameter "buf"
    .parameter "requestId"
    .parameter "requestSize"

    .prologue
    .line 512
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 518
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 519
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 505
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 506
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 507
    return-object v0
.end method

.method private notifyNetworkConnectivityChange()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v2, "notify network connectivity changed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readMipErrorCode()I
    .locals 5

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 479
    .local v1, mipError:I
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 482
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 483
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMipErrorCode()I

    move-result v1

    .line 491
    :goto_0
    return v1

    .line 485
    :cond_0
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null FATAL ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e3:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v1, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;-><init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;Lcom/android/server/connectivity/TetherNetworkDataTransition$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 10
    .parameter "requestId"
    .parameter "request"

    .prologue
    const/4 v7, 0x0

    .line 524
    const/16 v8, 0x800

    new-array v4, v8, [B

    .line 525
    .local v4, response:[B
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 526
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_0

    .line 527
    const-string v8, "TetherNetworkDataTransition"

    const-string v9, "phone is null at sendRilOemHookMsg"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 558
    :goto_0
    return-object v0

    .line 532
    :cond_0
    :try_start_0
    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 533
    .local v5, retVal:I
    if-ltz v5, :cond_2

    .line 534
    const/4 v6, 0x0

    .line 536
    .local v6, validResponseBytes:[B
    if-lez v5, :cond_1

    .line 537
    new-array v6, v5, [B

    .line 538
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v6, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 541
    .local v0, ar:Landroid/os/AsyncResult;
    goto :goto_0

    .line 547
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #validResponseBytes:[B
    :cond_2
    mul-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 548
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    invoke-direct {v0, p2, v8, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0

    .line 550
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v5           #retVal:I
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Landroid/os/RemoteException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8, v7, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0
.end method

.method private sendTetherBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "action"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, broadcast:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkData:Landroid/content/BroadcastReceiver;

    .line 129
    return-void
.end method

.method private waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z
    .locals 10
    .parameter "networkType"
    .parameter "expectedState"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 335
    .local v1, mCm:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v4

    .line 338
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 340
    .local v2, startTime:J
    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v6, :cond_0

    .line 355
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNetworkInfo before state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v6, v6, p3

    if-lez v6, :cond_2

    .line 360
    :try_start_1
    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v6, p2, :cond_0

    .line 364
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networktype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 366
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 370
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v6, "TetherNetworkDataTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wait for the connectivity state for network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    monitor-enter v6

    .line 378
    :try_start_2
    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectivityObject:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, p1, :cond_3

    iget-object v7, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-eq v7, p2, :cond_4

    .line 384
    :cond_3
    const-string v7, "TetherNetworkDataTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    monitor-exit v6

    goto/16 :goto_1

    .line 389
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 379
    :catch_2
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 388
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public checkDataProfile()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 458
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 459
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 461
    .local v3, service:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 465
    .local v2, result:Z
    const/4 v5, 0x4

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/ITelephony;->checkDataProfileEx(II)Z

    move-result v2

    .line 466
    const-string v5, "TetherNetworkDataTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDataProfile check apn info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    .line 470
    :goto_0
    return v4

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public connectMobile()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 265
    .local v1, mCm:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 291
    :goto_0
    return v2

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 276
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1, v4}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v5, 0x7530

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 286
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "Can\'t change to connect Mobile Data connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    move v2, v3

    .line 291
    goto :goto_0
.end method

.method public connectMobileCheck()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 211
    .local v2, mCm:Landroid/net/IConnectivityManager;
    const/4 v0, 0x0

    .line 213
    .local v0, doWait:Z
    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v3

    .line 218
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v5, v6, :cond_2

    .line 228
    const/4 v0, 0x1

    .line 235
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 238
    if-ne v0, v4, :cond_3

    .line 239
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v6, 0x1388

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z

    move-result v5

    if-nez v5, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 241
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "Can\'t change to connect Mobile Data connectMobileCheck"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 231
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 249
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v2, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 257
    goto :goto_0

    .line 251
    :catch_2
    move-exception v1

    .line 253
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectMobile()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    const-string v4, "connectivity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 298
    .local v1, mCm:Landroid/net/IConnectivityManager;
    if-nez v1, :cond_0

    .line 325
    :goto_0
    return v2

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 303
    goto :goto_0

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->registerConnectivityReceiver()V

    .line 309
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v4}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const-wide/16 v5, 0x7530

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->waitForNetworkState(ILandroid/net/NetworkInfo$State;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    .line 320
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "can not disconnect Mobile Data connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->unregisterConnectivityReceiver()V

    move v2, v3

    .line 325
    goto :goto_0
.end method

.method public getTetherNetworkDataFlagSet()Z
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    return v0
.end method

.method public isLteOrEhrpdNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 395
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 397
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 398
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    :goto_0
    return v2

    .line 404
    :cond_1
    const/16 v3, 0xd

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/16 v3, 0xe

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 406
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, e4:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPamPdnDataProfileEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 422
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 424
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 425
    const-string v3, "TetherNetworkDataTransition"

    const-string v4, "phone is null at isMultiPDNNetworkEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    :goto_0
    return v2

    .line 431
    :cond_1
    const/16 v4, 0xd

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/16 v4, 0xe

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->checkDataProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 436
    goto :goto_0

    .line 444
    :cond_3
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "mobile data will use as tether network "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 445
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, e4:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyPhoneTetherStatus(Z)Z
    .locals 2
    .parameter "tethered"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    const/16 v1, 0x6b

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->setFlag(ILjava/lang/String;)V

    .line 199
    sput-boolean p1, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mTetherNetworkFlagSet:Z

    .line 200
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_0
    const-string v0, "TetherNetworkDataTransition"

    const-string v1, "&&&&&&&&&&& TETHER REQUEST ----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public sendLgRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .locals 4
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 562
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 563
    .local v1, request:[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 565
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 566
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendLgRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 4
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 572
    iget v2, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 573
    .local v1, request:[B
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 575
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->addLgGpsRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 576
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 578
    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public setFlag(ILjava/lang/String;)V
    .locals 4
    .parameter "itemId"
    .parameter "itemValue"

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, length:I
    if-eqz p2, :cond_0

    .line 584
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 586
    :cond_0
    add-int/lit8 v3, v1, 0x8

    new-array v2, v3, [B

    .line 587
    .local v2, requestData:[B
    invoke-static {v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 588
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 589
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    if-eqz p2, :cond_1

    .line 591
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 594
    :cond_1
    const v3, 0x91005

    invoke-virtual {p0, v3, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendLgRilHookMsg(I[B)Landroid/os/AsyncResult;

    .line 595
    return-void
.end method
