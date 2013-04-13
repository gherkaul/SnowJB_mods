.class public Lcom/sprint/net/cdma/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final CDMA_SERVICE:Ljava/lang/String; = "cdma"

.field public static final CMD_DEBUG_CONFIGURATION:I = 0x8fe

.field public static final CMD_DEBUG_DATA_STATUS:I = 0x8ff

.field public static final CMD_SPRINT_CDMA_DEBUG_1X:I = 0x2368

.field public static final CMD_SPRINT_CDMA_DEBUG_EVDO:I = 0x2369

.field public static final CMD_SPRINT_CDMA_PRL_VERSION:I = 0x2362

.field private static final ITEM_LEN:I = 0x32

.field static final TAG:Ljava/lang/String; = "CDMA-ConnectionManager"


# instance fields
.field private CDMACONNECTIONMANAGER_PERMISSION:Ljava/lang/String;

.field mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

.field mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

.field mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

.field private final mHeaderSize:I

.field private final mOemIdentifier:Ljava/lang/String;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mServiceState:Landroid/telephony/ServiceState;

.field private myctxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "com.sprint.permission.SPRINT3G"

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->CDMACONNECTIONMANAGER_PERMISSION:Ljava/lang/String;

    .line 100
    const-string v0, "QUALCOMM"

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mOemIdentifier:Ljava/lang/String;

    .line 101
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mHeaderSize:I

    .line 105
    const-string v0, "CDMA-ConnectionManager"

    const-string v1, "constructor called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionManager;->myctxt:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo;

    invoke-direct {v0}, Lcom/sprint/net/cdma/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    .line 111
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info;

    invoke-direct {v0}, Lcom/sprint/net/cdma/Cdma2000Info;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    .line 112
    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo;

    invoke-direct {v0}, Lcom/sprint/net/cdma/EvdoInfo;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    .line 117
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/cdma/ConnectionManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 120
    return-void
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .parameter "buf"
    .parameter "requestId"
    .parameter "requestSize"

    .prologue
    .line 444
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 451
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 436
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 437
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 438
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 10
    .parameter "requestId"
    .parameter "request"

    .prologue
    const/4 v9, 0x0

    .line 498
    const/16 v6, 0x800

    new-array v3, v6, [B

    .line 501
    .local v3, response:[B
    :try_start_0
    iget-object v6, p0, Lcom/sprint/net/cdma/ConnectionManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, p2, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 502
    .local v4, retVal:I
    if-ltz v4, :cond_1

    .line 503
    const/4 v5, 0x0

    .line 505
    .local v5, validResponseBytes:[B
    if-lez v4, :cond_0

    .line 506
    new-array v5, v4, [B

    .line 507
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_0
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 526
    .end local v4           #retVal:I
    .end local v5           #validResponseBytes:[B
    .local v0, ar:Landroid/os/AsyncResult;
    :goto_0
    return-object v0

    .line 516
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v4       #retVal:I
    :cond_1
    mul-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 517
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v0, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0

    .line 519
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #retVal:I
    :catch_0
    move-exception v1

    .line 520
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

    .line 523
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v9, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_0
.end method


# virtual methods
.method public getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .locals 12

    .prologue
    const/16 v11, 0x28a

    const/16 v10, 0x1f5

    const/16 v9, 0x1f4

    const/16 v8, 0x1c3

    const/16 v7, 0xa

    .line 155
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionManager;->enforceAccessPermission()V

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, temp:Ljava/lang/String;
    const/16 v4, 0x2368

    invoke-virtual {p0, v4}, Lcom/sprint/net/cdma/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-nez v1, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 257
    :goto_0
    return-object v4

    .line 188
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x32

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mServiceOption:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x64

    const/16 v6, 0x96

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mChannel:I

    .line 197
    const/16 v4, 0x96

    const/16 v5, 0xc8

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v4, "DCN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mBandClass:I

    .line 210
    :goto_2
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0xc8

    const/16 v6, 0xfa

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mSid:I

    .line 213
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0xfa

    const/16 v6, 0x12c

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mNid:I

    .line 216
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x12c

    const/16 v6, 0x15e

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mBaseStationId:I

    .line 219
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x15e

    const/16 v6, 0x190

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mPn:I

    .line 222
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x190

    const/16 v6, 0x1c2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mProtocolRevision:I

    .line 225
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x259

    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:I

    .line 228
    const/16 v4, 0x1c2

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "N"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mLatitude:I

    .line 235
    :goto_3
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 236
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x226

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mLongitude:I

    .line 241
    :goto_4
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x227

    const/16 v6, 0x258

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, -0x4080

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mReceivePower:F

    .line 242
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x259

    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, -0x4080

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mReceiveEcIo:F

    .line 244
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x2bc

    invoke-virtual {v1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mFrameError:I

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 248
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    invoke-virtual {v3}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    iput-boolean v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mDayLigntSavingSet:Z

    .line 249
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    div-int/lit8 v5, v5, 0x3c

    div-int/lit8 v5, v5, 0x1e

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    .line 257
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    goto/16 :goto_0

    .line 189
    .end local v3           #tz:Ljava/util/TimeZone;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "CDMA-ConnectionManager"

    const-string v5, "getCdma2000Info : NumberFormatException maybe have no service option"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mServiceOption:I

    goto/16 :goto_1

    .line 200
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "PCS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/4 v5, 0x1

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mBandClass:I

    goto/16 :goto_2

    .line 202
    :cond_2
    const-string v4, "Secondary 800"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    iput v7, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mBandClass:I

    goto/16 :goto_2

    .line 205
    :cond_3
    const-string v4, "CDMA-ConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdma2000Info : This band class is not supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const v5, 0x7fffffff

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mBandClass:I

    goto/16 :goto_2

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mLatitude:I

    goto/16 :goto_3

    .line 238
    :cond_5
    iget-object v4, p0, Lcom/sprint/net/cdma/ConnectionManager;->mCdma2000Info:Lcom/sprint/net/cdma/Cdma2000Info;

    const/16 v5, 0x226

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sprint/net/cdma/Cdma2000Info;->mLongitude:I

    goto/16 :goto_4
.end method

.method public getCmdValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemID"

    .prologue
    .line 423
    const/4 v1, 0x0

    .line 426
    .local v1, item:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sprint/net/cdma/ConnectionManager;->getCommands(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 431
    :goto_0
    return-object v1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "CDMA-ConnectionManager"

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
    .locals 9
    .parameter "commandId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 459
    const v6, 0x91004

    invoke-virtual {p0, v6, p1}, Lcom/sprint/net/cdma/ConnectionManager;->sendQcRilHookMsg(II)Landroid/os/AsyncResult;

    move-result-object v5

    .line 461
    .local v5, result:Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 462
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-static {v6}, Lcom/sprint/net/cdma/ConnectionManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 463
    .local v4, responseData:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 464
    .local v2, length:I
    new-array v3, v2, [B

    .line 466
    .local v3, responseBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 467
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v3, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 471
    .local v1, itemValue:Ljava/lang/String;
    const-string v6, "CDMA-ConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommands itemValue : --------luis.ko : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-object v1

    .line 474
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

.method public getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 265
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionManager;->enforceAccessPermission()V

    .line 271
    const/16 v3, 0x8fe

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sprint/net/cdma/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, result_config:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 273
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1           #result_config:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CDMA-ConnectionManager"

    const-string v4, "getDeviceInfo : Invalid Chipset Data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    iput-object v6, v3, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetModel:Ljava/lang/String;

    .line 280
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    iput-object v6, v3, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    const-string/jumbo v4, "ro.lge.swversion"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/net/cdma/DeviceInfo;->mSdkVersion:Ljava/lang/String;

    .line 288
    const/16 v3, 0x2362

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sprint/net/cdma/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, result_prl:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 290
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .end local v2           #result_prl:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 294
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "CDMA-ConnectionManager"

    const-string v4, "getDeviceInfo : Invalid PRL version"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    iput-object v6, v3, Lcom/sprint/net/cdma/DeviceInfo;->mPrlVersion:Ljava/lang/String;

    .line 298
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    return-object v3

    .line 275
    .restart local v1       #result_config:Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    const/16 v4, 0xc8

    const/16 v5, 0xfa

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetModel:Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    const/16 v4, 0xfa

    const/16 v5, 0x12c

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 292
    .end local v1           #result_config:Ljava/lang/String;
    .restart local v2       #result_prl:Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mDeviceInfo:Lcom/sprint/net/cdma/DeviceInfo;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/net/cdma/DeviceInfo;->mPrlVersion:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .locals 9

    .prologue
    const/16 v4, 0x32

    const/4 v8, 0x0

    const/16 v7, 0x1f4

    const/high16 v6, -0x4080

    const/16 v5, 0xa

    .line 308
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionManager;->enforceAccessPermission()V

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, result:Ljava/lang/String;
    const/16 v2, 0x2369

    invoke-virtual {p0, v2}, Lcom/sprint/net/cdma/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    if-nez v0, :cond_0

    .line 314
    const/4 v2, 0x0

    .line 382
    :goto_0
    return-object v2

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mState:Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x64

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mMacIndex:I

    .line 327
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x64

    const/16 v4, 0x96

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mChannel:I

    .line 330
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x96

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:J

    .line 336
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0xfa

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mPn:I

    .line 339
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x12d

    const/16 v4, 0x130

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dBm"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mReceivePower:F

    .line 342
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x15e

    const/16 v4, 0x190

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mPacketError:I

    .line 345
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x191

    const/16 v4, 0x190

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dB"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    .line 348
    const/16 v2, 0x1c2

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    iput v8, v2, Lcom/sprint/net/cdma/EvdoInfo;->mRequestedDrc:I

    .line 355
    :goto_1
    const/16 v2, 0x226

    const/16 v3, 0x258

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, temp:Ljava/lang/String;
    const-string v2, "Pending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    sget-object v3, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PENDING:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    iput-object v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    .line 368
    :goto_2
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x1f5

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dB"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    .line 382
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    goto/16 :goto_0

    .line 351
    .end local v1           #temp:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/16 v3, 0x1c2

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mRequestedDrc:I

    goto :goto_1

    .line 358
    .restart local v1       #temp:Ljava/lang/String;
    :cond_2
    const-string v2, "Failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    sget-object v3, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    iput-object v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    goto :goto_2

    .line 360
    :cond_3
    const-string v2, "Passed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    sget-object v3, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    iput-object v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    goto :goto_2

    .line 363
    :cond_4
    const-string v2, "CDMA-ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEvdoInfo : Can not get proper value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mEvdoInfo:Lcom/sprint/net/cdma/EvdoInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    goto :goto_2
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x32

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, IP:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 408
    .local v2, result:Ljava/lang/String;
    const/16 v3, 0x8ff

    invoke-virtual {p0, v3}, Lcom/sprint/net/cdma/ConnectionManager;->getCmdValue(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    const/16 v3, 0x32

    const/16 v4, 0x64

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "CDMA-ConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-numeric ip addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastMipResponce()I
    .locals 4

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 395
    .local v0, mipResponse:I
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getMipErrorCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 399
    :goto_0
    const-string v1, "CDMA-ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastMipResponse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v0

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 484
    iget v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 485
    .local v1, request:[B
    invoke-static {v1}, Lcom/sprint/net/cdma/ConnectionManager;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 487
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/sprint/net/cdma/ConnectionManager;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 488
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 490
    invoke-direct {p0, p1, v1}, Lcom/sprint/net/cdma/ConnectionManager;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method
