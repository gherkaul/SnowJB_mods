.class public Lcom/sprint/net/lte/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/ConnectionManager$Status;,
        Lcom/sprint/net/lte/ConnectionManager$State;
    }
.end annotation


# static fields
.field public static final CMD_DEBUG_LTE_ENGINEERING:I = 0x900

.field private static final ITEM_LEN:I = 0x32

.field public static final LTE_SERVICE:Ljava/lang/String; = "lte"


# instance fields
.field private LTECONNECTIONMANAGER_PERMISSION:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

.field mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

.field private final mHeaderSize:I

.field private final mOemIdentifier:Ljava/lang/String;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;

.field private myctxt:Landroid/content/Context;

.field public operator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sprint/net/IConnectionManager;)V
    .locals 2
    .parameter "ctxt"
    .parameter "service"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "com.sprint.permission.SPRINT4G"

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->LTECONNECTIONMANAGER_PERMISSION:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->operator:Ljava/lang/String;

    .line 103
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mOemIdentifier:Ljava/lang/String;

    .line 106
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mHeaderSize:I

    .line 153
    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/sprint/net/lte/ConnectionManager$1;-><init>(Lcom/sprint/net/lte/ConnectionManager;)V

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 111
    const-string v0, "ConnectionManager"

    const-string v1, "ConnectionManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sprint/net/lte/ConnectionManager;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcom/sprint/net/lte/ConnectionInfo;

    invoke-direct {v0}, Lcom/sprint/net/lte/ConnectionInfo;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    .line 116
    new-instance v0, Lcom/sprint/net/lte/DeviceInfo;

    invoke-direct {v0}, Lcom/sprint/net/lte/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

    .line 118
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 121
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->operator:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .parameter "buf"
    .parameter "requestId"
    .parameter "requestSize"

    .prologue
    .line 674
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 680
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 681
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 667
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 668
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 669
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->LTECONNECTIONMANAGER_PERMISSION:Ljava/lang/String;

    const-string v2, "LTEConnectionManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 631
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 633
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 637
    :goto_0
    return-object v0

    .line 635
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 10
    .parameter "requestId"
    .parameter "request"

    .prologue
    const/4 v9, 0x0

    .line 728
    const/16 v6, 0x800

    new-array v3, v6, [B

    .line 733
    .local v3, response:[B
    :try_start_0
    iget-object v6, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, p2, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 734
    .local v4, retVal:I
    if-ltz v4, :cond_1

    .line 735
    const/4 v5, 0x0

    .line 737
    .local v5, validResponseBytes:[B
    if-lez v4, :cond_0

    .line 738
    new-array v5, v4, [B

    .line 739
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 759
    .end local v4           #retVal:I
    .end local v5           #validResponseBytes:[B
    .local v0, ar:Landroid/os/AsyncResult;
    :goto_0
    return-object v0

    .line 748
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v4       #retVal:I
    :cond_1
    mul-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 749
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v0, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0

    .line 751
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #retVal:I
    :catch_0
    move-exception v1

    .line 753
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "ConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendQcRilOemHook RequestID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, unable to send RIL request from this application"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v9, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0
.end method


# virtual methods
.method public addconnectedApninfo()V
    .locals 14

    .prologue
    .line 417
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 418
    .local v0, FOTANetInfo:Landroid/net/NetworkInfo;
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 419
    .local v2, defaultNetInfo:Landroid/net/NetworkInfo;
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 421
    .local v9, pamNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v9, :cond_2

    .line 422
    :cond_0
    const-string v12, "ConnectionManager"

    const-string/jumbo v13, "network is not available."

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    const/4 v10, 0x0

    .line 430
    .local v10, plmn:Ljava/lang/String;
    const/4 v11, 0x0

    .line 431
    .local v11, result:Ljava/lang/String;
    const/16 v12, 0x900

    invoke-virtual {p0, v12}, Lcom/sprint/net/lte/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v11

    .line 434
    if-nez v11, :cond_3

    .line 435
    const-string v12, "ConnectionManager"

    const-string v13, "CMD_DEBUG_LTE_ENGINEERING error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_3
    const/16 v12, 0x64

    const/16 v13, 0x96

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 442
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    .line 444
    .local v4, length:I
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, mcc:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v10, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, mnc:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 449
    new-instance v3, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v3}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 450
    .local v3, fotaApn:Lcom/sprint/net/lte/ApnsInUse;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mnc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mcc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". gprs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "fota"

    invoke-virtual {p0, v13}, Lcom/sprint/net/lte/ConnectionManager;->getNI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 451
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    .line 452
    .local v7, myLink:Landroid/net/LinkProperties;
    invoke-virtual {p0, v3, v7}, Lcom/sprint/net/lte/ConnectionManager;->getAddr(Lcom/sprint/net/lte/ApnsInUse;Landroid/net/LinkProperties;)V

    .line 453
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v12, v3}, Lcom/sprint/net/lte/ConnectionInfo;->AddapnList(Lcom/sprint/net/lte/ApnsInUse;)V

    .line 456
    .end local v3           #fotaApn:Lcom/sprint/net/lte/ApnsInUse;
    .end local v7           #myLink:Landroid/net/LinkProperties;
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 458
    new-instance v1, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v1}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 459
    .local v1, defaultApn:Lcom/sprint/net/lte/ApnsInUse;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mnc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mcc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".gprs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "default"

    invoke-virtual {p0, v13}, Lcom/sprint/net/lte/ConnectionManager;->getNI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 460
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    .line 461
    .restart local v7       #myLink:Landroid/net/LinkProperties;
    invoke-virtual {p0, v1, v7}, Lcom/sprint/net/lte/ConnectionManager;->getAddr(Lcom/sprint/net/lte/ApnsInUse;Landroid/net/LinkProperties;)V

    .line 462
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v12, v1}, Lcom/sprint/net/lte/ConnectionInfo;->AddapnList(Lcom/sprint/net/lte/ApnsInUse;)V

    .line 465
    .end local v1           #defaultApn:Lcom/sprint/net/lte/ApnsInUse;
    .end local v7           #myLink:Landroid/net/LinkProperties;
    :cond_5
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 467
    new-instance v8, Lcom/sprint/net/lte/ApnsInUse;

    invoke-direct {v8}, Lcom/sprint/net/lte/ApnsInUse;-><init>()V

    .line 468
    .local v8, pamApn:Lcom/sprint/net/lte/ApnsInUse;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mnc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mcc"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".gprs"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "dun"

    invoke-virtual {p0, v13}, Lcom/sprint/net/lte/ConnectionManager;->getNI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    .line 469
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    .line 470
    .restart local v7       #myLink:Landroid/net/LinkProperties;
    invoke-virtual {p0, v8, v7}, Lcom/sprint/net/lte/ConnectionManager;->getAddr(Lcom/sprint/net/lte/ApnsInUse;Landroid/net/LinkProperties;)V

    .line 471
    iget-object v12, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v12, v8}, Lcom/sprint/net/lte/ConnectionInfo;->AddapnList(Lcom/sprint/net/lte/ApnsInUse;)V

    goto/16 :goto_0
.end method

.method public getAddr(Lcom/sprint/net/lte/ApnsInUse;Landroid/net/LinkProperties;)V
    .locals 6
    .parameter "apns"
    .parameter "myLink"

    .prologue
    const/4 v5, 0x0

    .line 383
    iput-object v5, p1, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    .line 384
    iput-object v5, p1, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    .line 386
    if-eqz p2, :cond_2

    .line 388
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 390
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 391
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    move-object v4, v0

    .line 392
    check-cast v4, Ljava/net/Inet6Address;

    .line 393
    .local v4, i6addr:Ljava/net/Inet6Address;
    invoke-virtual {v4}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    iput-object v0, p1, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    .line 399
    .end local v4           #i6addr:Ljava/net/Inet6Address;
    :cond_1
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 400
    check-cast v3, Ljava/net/Inet4Address;

    .line 401
    .local v3, i4addr:Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 403
    iput-object v0, p1, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    goto :goto_0

    .line 411
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #i4addr:Ljava/net/Inet4Address;
    :cond_2
    return-void
.end method

.method public getCmdValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemID"

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 653
    .local v1, item:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/ConnectionManager;->getCommands(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 662
    :goto_0
    return-object v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCommands(I)Ljava/lang/String;
    .locals 7
    .parameter "commandId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 689
    const v6, 0x91004

    invoke-virtual {p0, v6, p1}, Lcom/sprint/net/lte/ConnectionManager;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v5

    .line 692
    .local v5, result:Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 693
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-static {v6}, Lcom/sprint/net/lte/ConnectionManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 694
    .local v4, responseData:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 695
    .local v2, length:I
    new-array v3, v2, [B

    .line 696
    .local v3, responseBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 697
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v3, v0

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 708
    .local v1, itemValue:Ljava/lang/String;
    return-object v1

    .line 704
    .end local v0           #i:I
    .end local v1           #itemValue:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #responseBytes:[B
    .end local v4           #responseData:Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;
    .locals 14

    .prologue
    const/16 v13, 0x190

    const/16 v12, 0x15e

    const/16 v11, 0x12c

    const/16 v10, 0x96

    const/4 v7, 0x0

    .line 299
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 302
    iget-object v8, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v8}, Lcom/sprint/net/lte/ConnectionInfo;->clearall()V

    .line 304
    invoke-virtual {p0}, Lcom/sprint/net/lte/ConnectionManager;->getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;

    move-result-object v8

    sget-object v9, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    if-ne v8, v9, :cond_2

    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, result:Ljava/lang/String;
    const/16 v8, 0x900

    invoke-virtual {p0, v8}, Lcom/sprint/net/lte/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    if-nez v6, :cond_0

    .line 375
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 315
    .restart local v6       #result:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/sprint/net/lte/BaseStationInfo;

    invoke-direct {v5}, Lcom/sprint/net/lte/BaseStationInfo;-><init>()V

    .line 317
    .local v5, mybase:Lcom/sprint/net/lte/BaseStationInfo;
    const/16 v8, 0xfa

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, Uplink:Ljava/lang/String;
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, Downlink:Ljava/lang/String;
    const/16 v8, 0x19

    iput v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->bandClass:I

    .line 321
    const/16 v8, 0x2bc

    const/16 v9, 0x2ee

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, Mybandwidth:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sprint/net/lte/ConnectionManager;->getbandwith(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->bandwidth:I

    .line 324
    const/16 v8, 0x64

    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->plmnID:Ljava/lang/String;

    .line 325
    sget-object v8, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    iput-object v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->modulationUplink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    .line 326
    sget-object v8, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    iput-object v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->modulationDownlink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    .line 328
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->frequencyUplink:J

    .line 329
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->frequencyDownlink:J

    .line 333
    iput-object v7, v5, Lcom/sprint/net/lte/BaseStationInfo;->neighborList:Ljava/util/List;

    .line 334
    iput-object v7, v5, Lcom/sprint/net/lte/BaseStationInfo;->name:Ljava/lang/String;

    .line 338
    const/16 v7, 0x2ee

    const/16 v8, 0x320

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, Longname:Ljava/lang/String;
    const/16 v7, 0x320

    const/16 v8, 0x352

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, ShortName:Ljava/lang/String;
    const-string v7, "TNULL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 343
    const-string v7, "ConnectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Longname :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput-object v1, v5, Lcom/sprint/net/lte/BaseStationInfo;->name:Ljava/lang/String;

    .line 351
    :goto_1
    const-string v7, "ConnectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mybase.name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/sprint/net/lte/BaseStationInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v7, 0xc8

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/sprint/net/lte/BaseStationInfo;->basestationId:Ljava/lang/String;

    .line 356
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    iget-object v8, v5, Lcom/sprint/net/lte/BaseStationInfo;->basestationId:Ljava/lang/String;

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->bsid:Ljava/lang/String;

    .line 358
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v7, v5}, Lcom/sprint/net/lte/ConnectionInfo;->AddbasestateList(Lcom/sprint/net/lte/BaseStationInfo;)V

    .line 359
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsrp:Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const/16 v8, 0x1c2

    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsrq:Ljava/lang/String;

    .line 361
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const/16 v8, 0x1c2

    const/16 v9, 0x1f4

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->txpwr:Ljava/lang/String;

    .line 362
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const/16 v8, 0x28a

    const/16 v9, 0x2bc

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsri:Ljava/lang/String;

    .line 365
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    iget-object v7, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsri:Ljava/lang/String;

    const-string v8, "-125 dBm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 367
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const-string v8, "NO_SRV"

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsrp:Ljava/lang/String;

    .line 368
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const-string v8, "NO_SRV"

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsrq:Ljava/lang/String;

    .line 369
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    const-string v8, "NO_SRV"

    iput-object v8, v7, Lcom/sprint/net/lte/ConnectionInfo;->rsri:Ljava/lang/String;

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/sprint/net/lte/ConnectionManager;->addconnectedApninfo()V

    .line 375
    .end local v0           #Downlink:Ljava/lang/String;
    .end local v1           #Longname:Ljava/lang/String;
    .end local v2           #Mybandwidth:Ljava/lang/String;
    .end local v3           #ShortName:Ljava/lang/String;
    .end local v4           #Uplink:Ljava/lang/String;
    .end local v5           #mybase:Lcom/sprint/net/lte/BaseStationInfo;
    .end local v6           #result:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/sprint/net/lte/ConnectionManager;->mCurrinfo:Lcom/sprint/net/lte/ConnectionInfo;

    goto/16 :goto_0

    .line 348
    .restart local v0       #Downlink:Ljava/lang/String;
    .restart local v1       #Longname:Ljava/lang/String;
    .restart local v2       #Mybandwidth:Ljava/lang/String;
    .restart local v3       #ShortName:Ljava/lang/String;
    .restart local v4       #Uplink:Ljava/lang/String;
    .restart local v5       #mybase:Lcom/sprint/net/lte/BaseStationInfo;
    .restart local v6       #result:Ljava/lang/String;
    :cond_3
    const-string v7, "ConnectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ShortName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-object v3, v5, Lcom/sprint/net/lte/BaseStationInfo;->name:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;
    .locals 4

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 611
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

    invoke-virtual {v1}, Lcom/sprint/net/lte/DeviceInfo;->clearall()V

    .line 612
    invoke-virtual {p0}, Lcom/sprint/net/lte/ConnectionManager;->saveAPNinfo()Z

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, result:Ljava/lang/String;
    const/16 v1, 0x900

    invoke-virtual {p0, v1}, Lcom/sprint/net/lte/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/net/lte/DeviceInfo;->mdeviceId:Ljava/lang/String;

    .line 623
    :goto_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

    return-object v1

    .line 621
    :cond_0
    const-string v1, "ConnectionManager"

    const-string v2, "CMD_DEBUG_LTE_ENGINEERING error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 593
    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 601
    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public getNI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 482
    const/4 v3, 0x0

    .line 485
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 493
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "apn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    :cond_0
    return-object v2
.end method

.method public getState()Lcom/sprint/net/lte/ConnectionManager$State;
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 184
    invoke-virtual {p0}, Lcom/sprint/net/lte/ConnectionManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->OFF:Lcom/sprint/net/lte/ConnectionManager$State;

    .line 190
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 188
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->ON_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    goto :goto_0

    .line 190
    :cond_1
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$State;->ON_NOT_CONNECTED:Lcom/sprint/net/lte/ConnectionManager$State;

    goto :goto_0
.end method

.method public getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 200
    iget-object v5, p0, Lcom/sprint/net/lte/ConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 203
    .local v2, niMobile:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 210
    .local v1, mobileNetworkType:I
    const/16 v5, 0xd

    if-ne v1, v5, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 214
    :cond_2
    const/4 v3, 0x0

    .line 215
    .local v3, result:Ljava/lang/String;
    const/16 v5, 0x900

    invoke-virtual {p0, v5}, Lcom/sprint/net/lte/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_0

    .line 221
    const/16 v4, 0x258

    const/16 v5, 0x28a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, LTEstatus:Ljava/lang/String;
    const-string v4, "ConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "statusFromRIL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->SCANNING:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 230
    :cond_3
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 231
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 232
    :cond_4
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 234
    :cond_5
    const-string v4, "3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 235
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 236
    :cond_6
    const-string v4, "4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 237
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0

    .line 239
    :cond_7
    sget-object v4, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    goto :goto_0
.end method

.method public getbandwith(Ljava/lang/String;)I
    .locals 3
    .parameter "getvalue"

    .prologue
    .line 274
    const-string v0, "ConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bandwith "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    .line 278
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x3

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x5

    goto :goto_0

    .line 282
    :cond_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    const/16 v0, 0xa

    goto :goto_0

    .line 284
    :cond_3
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    const/16 v0, 0xf

    goto :goto_0

    .line 286
    :cond_4
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 287
    const/16 v0, 0x14

    goto :goto_0

    .line 289
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Lcom/sprint/net/lte/ConnectionManager;->enforceAccessPermission()V

    .line 251
    iget-object v2, p0, Lcom/sprint/net/lte/ConnectionManager;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_0

    .line 268
    :goto_0
    return v1

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/sprint/net/lte/ConnectionManager;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 256
    const-string v2, "ConnectionManager"

    const-string v3, "Power Off state!!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, networkMode:I
    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    const/16 v2, 0xc

    if-le v0, v2, :cond_3

    .line 265
    :cond_2
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network mode == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 172
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhone:Landroid/telephony/TelephonyManager;

    .line 173
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 176
    return-void
.end method

.method public saveAPNinfo()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 512
    const/4 v3, 0x0

    .line 515
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 519
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->myctxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 523
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 583
    :goto_0
    return v0

    .line 527
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 530
    :cond_1
    new-instance v7, Lcom/sprint/net/lte/ApnInfo;

    invoke-direct {v7}, Lcom/sprint/net/lte/ApnInfo;-><init>()V

    .line 533
    .local v7, myapn:Lcom/sprint/net/lte/ApnInfo;
    const-string/jumbo v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/lte/ConnectionManager;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, types:[Ljava/lang/String;
    aget-object v0, v8, v9

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const-string v0, "all type"

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    .line 561
    :goto_1
    const-string v0, "apn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->ni:Ljava/lang/String;

    .line 562
    const-string/jumbo v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->type:Ljava/lang/String;

    .line 563
    const-string v0, "LTE/eHRPD"

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->ratType:Ljava/lang/String;

    .line 564
    iput v9, v7, Lcom/sprint/net/lte/ApnInfo;->timer:I

    .line 565
    const-string v0, "authtype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->authType:Ljava/lang/String;

    .line 567
    const-string/jumbo v0, "user"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 568
    iput-boolean v10, v7, Lcom/sprint/net/lte/ApnInfo;->isUsernameSet:Z

    .line 572
    :goto_2
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 573
    iput-boolean v10, v7, Lcom/sprint/net/lte/ApnInfo;->isPasswordSet:Z

    .line 577
    :goto_3
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/lte/DeviceInfo;

    invoke-virtual {v0, v7}, Lcom/sprint/net/lte/DeviceInfo;->AddapnInfo(Lcom/sprint/net/lte/ApnInfo;)V

    .line 579
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    .line 580
    goto :goto_0

    .line 540
    :cond_3
    aget-object v0, v8, v9

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 542
    const-string v0, "internet"

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    goto :goto_1

    .line 544
    :cond_4
    aget-object v0, v8, v9

    const-string v1, "fota"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    const-string/jumbo v0, "ota"

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    goto :goto_1

    .line 548
    :cond_5
    aget-object v0, v8, v9

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    const-string/jumbo v0, "pam"

    iput-object v0, v7, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    goto/16 :goto_1

    .line 570
    :cond_6
    iput-boolean v9, v7, Lcom/sprint/net/lte/ApnInfo;->isUsernameSet:Z

    goto :goto_2

    .line 575
    :cond_7
    iput-boolean v9, v7, Lcom/sprint/net/lte/ApnInfo;->isPasswordSet:Z

    goto :goto_3

    .end local v7           #myapn:Lcom/sprint/net/lte/ApnInfo;
    .end local v8           #types:[Ljava/lang/String;
    :cond_8
    move v0, v9

    .line 583
    goto/16 :goto_0
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 714
    iget v2, p0, Lcom/sprint/net/lte/ConnectionManager;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 715
    .local v1, request:[B
    invoke-static {v1}, Lcom/sprint/net/lte/ConnectionManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 717
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/sprint/net/lte/ConnectionManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 718
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 720
    invoke-direct {p0, p1, v1}, Lcom/sprint/net/lte/ConnectionManager;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method
