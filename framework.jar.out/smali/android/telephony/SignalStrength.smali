.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BEST:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final NUM_SIGNAL_STRENGTH_BINS_ORIGINAL:I = 0x5

.field public static final SIGNAL_STRENGTH_AWESOME:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final VDBG:Z

.field private static lastEcIoIndex:I

.field private static lastEcIoValues:[I


# instance fields
.field private datafeature:I

.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mRadioTechnology:I

.field private mTdScdmaRscp:I

.field operator:Ljava/lang/String;

.field private sDataNetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x5

    .line 69
    const-string v0, "BM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 88
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v0, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "moderate"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "good"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "great"

    aput-object v4, v0, v3

    const-string v3, "awesome"

    aput-object v3, v0, v1

    const-string v3, "best"

    aput-object v3, v0, v2

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 124
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    .line 126
    sput v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 411
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 69
    :cond_1
    const-string v0, "US"

    const-string v4, "ATT"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CA"

    const-string v4, "RGS"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CA"

    const-string v4, "BELL"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CA"

    const-string v4, "TLS"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KR"

    const-string v4, "KT"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KR"

    const-string v4, "LGU"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VDF"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SHB"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AU"

    const-string v4, "TEL"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "STL"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MON"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OPEN"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 165
    iput v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 166
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 167
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 168
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 169
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 170
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 171
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 172
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 173
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 174
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 175
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 176
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 177
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 180
    iput v3, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 184
    iput v3, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 186
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "tdScdmaRscp"
    .parameter "gsm"

    .prologue
    .line 247
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 249
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 250
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 222
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 223
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 224
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 225
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 226
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 227
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 228
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 229
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 230
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 231
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 232
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 233
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 234
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 235
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 15
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 261
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 312
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 314
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 315
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 316
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 317
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 318
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 319
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 320
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 321
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 322
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 323
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 328
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 332
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 334
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 336
    :cond_10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 1
    .parameter "in"
    .parameter "validate"

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 368
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 370
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 273
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "gsmFlag"

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 197
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 198
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 199
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 200
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 201
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 202
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 203
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 204
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 205
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 206
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 207
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 208
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 209
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 210
    return-void
.end method

.method private getCdmaLevelKR()I
    .locals 9

    .prologue
    .line 1456
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1457
    .local v0, cdmaDbm:I
    const/4 v6, 0x0

    .line 1462
    .local v6, levelDbm:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdmaDbm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1463
    const/16 v1, -0x62

    .line 1464
    .local v1, level1:I
    const/16 v2, -0x66

    .line 1465
    .local v2, level2:I
    const/16 v3, -0x69

    .line 1466
    .local v3, level3:I
    const/16 v4, -0x6c

    .line 1467
    .local v4, level4:I
    const/16 v5, -0x6f

    .line 1469
    .local v5, level5:I
    if-le v0, v1, :cond_0

    const/4 v6, 0x5

    .line 1478
    :goto_0
    return v6

    .line 1470
    :cond_0
    if-le v0, v2, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    .line 1471
    :cond_1
    if-le v0, v3, :cond_2

    const/4 v6, 0x3

    goto :goto_0

    .line 1472
    :cond_2
    if-le v0, v4, :cond_3

    const/4 v6, 0x2

    goto :goto_0

    .line 1473
    :cond_3
    if-le v0, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    .line 1474
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getGsmLevelKR()I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/16 v5, 0x63

    .line 1121
    const/4 v1, 0x0

    .line 1127
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1137
    .local v0, asu:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1139
    .local v2, networkType:I
    packed-switch v2, :pswitch_data_0

    .line 1197
    :pswitch_0
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1198
    if-ne v0, v5, :cond_27

    const/4 v1, 0x0

    .line 1223
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[jail.koo] networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , asu = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  , level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1224
    return v1

    .line 1142
    :pswitch_1
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1143
    if-ne v0, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1144
    :cond_1
    const/16 v3, 0xc

    if-lt v0, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 1145
    :cond_2
    const/16 v3, 0x9

    if-lt v0, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 1146
    :cond_3
    const/4 v3, 0x7

    if-lt v0, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 1147
    :cond_4
    if-lt v0, v6, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 1148
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1149
    :cond_6
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1150
    if-ne v0, v5, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    .line 1151
    :cond_7
    const/16 v3, 0xe

    if-lt v0, v3, :cond_8

    const/4 v1, 0x5

    goto :goto_0

    .line 1152
    :cond_8
    const/16 v3, 0xc

    if-lt v0, v3, :cond_9

    const/4 v1, 0x4

    goto :goto_0

    .line 1153
    :cond_9
    const/16 v3, 0x9

    if-lt v0, v3, :cond_a

    const/4 v1, 0x3

    goto :goto_0

    .line 1154
    :cond_a
    const/4 v3, 0x7

    if-lt v0, v3, :cond_b

    const/4 v1, 0x2

    goto :goto_0

    .line 1155
    :cond_b
    if-lt v0, v6, :cond_c

    const/4 v1, 0x1

    goto :goto_0

    .line 1156
    :cond_c
    const/4 v1, 0x0

    goto :goto_0

    .line 1157
    :cond_d
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    const/4 v3, 0x3

    if-le v0, v3, :cond_e

    if-ne v0, v5, :cond_f

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1159
    :cond_f
    const/16 v3, 0xc

    if-lt v0, v3, :cond_10

    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1160
    :cond_10
    const/16 v3, 0xb

    if-lt v0, v3, :cond_11

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1161
    :cond_11
    const/16 v3, 0x9

    if-lt v0, v3, :cond_12

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1162
    :cond_12
    if-lt v0, v7, :cond_13

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1163
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1171
    :pswitch_2
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1172
    if-ne v0, v5, :cond_14

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1173
    :cond_14
    if-lt v0, v7, :cond_15

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1174
    :cond_15
    if-lt v0, v6, :cond_16

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1175
    :cond_16
    if-lt v0, v9, :cond_17

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1176
    :cond_17
    if-lt v0, v8, :cond_18

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1177
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1178
    :cond_19
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1179
    if-ne v0, v5, :cond_1a

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1180
    :cond_1a
    const/16 v3, 0x8

    if-lt v0, v3, :cond_1b

    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1181
    :cond_1b
    if-lt v0, v7, :cond_1c

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1182
    :cond_1c
    if-lt v0, v6, :cond_1d

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1183
    :cond_1d
    if-lt v0, v9, :cond_1e

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1184
    :cond_1e
    if-lt v0, v8, :cond_1f

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1185
    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1186
    :cond_20
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    if-le v0, v8, :cond_21

    if-ne v0, v5, :cond_22

    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1188
    :cond_22
    const/16 v3, 0xd

    if-lt v0, v3, :cond_23

    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1189
    :cond_23
    const/16 v3, 0xa

    if-lt v0, v3, :cond_24

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1190
    :cond_24
    const/4 v3, 0x7

    if-lt v0, v3, :cond_25

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1191
    :cond_25
    const/4 v3, 0x5

    if-lt v0, v3, :cond_26

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1192
    :cond_26
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1199
    :cond_27
    if-lt v0, v7, :cond_28

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1200
    :cond_28
    if-lt v0, v6, :cond_29

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1201
    :cond_29
    if-lt v0, v9, :cond_2a

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1202
    :cond_2a
    if-lt v0, v8, :cond_2b

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1203
    :cond_2b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1204
    :cond_2c
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1205
    if-ne v0, v5, :cond_2d

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1206
    :cond_2d
    const/16 v3, 0x8

    if-lt v0, v3, :cond_2e

    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1207
    :cond_2e
    if-lt v0, v7, :cond_2f

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1208
    :cond_2f
    if-lt v0, v6, :cond_30

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1209
    :cond_30
    if-lt v0, v9, :cond_31

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1210
    :cond_31
    if-lt v0, v8, :cond_32

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1211
    :cond_32
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1212
    :cond_33
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1213
    const/4 v3, 0x3

    if-le v0, v3, :cond_34

    if-ne v0, v5, :cond_35

    :cond_34
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_35
    const/16 v3, 0xc

    if-lt v0, v3, :cond_36

    const/4 v1, 0x5

    goto/16 :goto_0

    .line 1215
    :cond_36
    const/16 v3, 0xa

    if-lt v0, v3, :cond_37

    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1216
    :cond_37
    const/16 v3, 0x8

    if-lt v0, v3, :cond_38

    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1217
    :cond_38
    if-lt v0, v7, :cond_39

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 1218
    :cond_39
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getGsmUmtsLevelEU()I
    .locals 8

    .prologue
    const/16 v7, 0x63

    const/16 v6, 0xc

    const/4 v5, 0x7

    const/4 v4, 0x4

    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, level:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1263
    .local v0, asu:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmUmtsLevelEU getRadioTechnology()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1284
    if-ne v0, v7, :cond_5

    const/4 v1, 0x0

    .line 1299
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmUmtsLevelEU getRadioTechnology()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1300
    return v1

    .line 1270
    :sswitch_0
    if-ne v0, v7, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1271
    :cond_0
    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    .line 1272
    :cond_1
    if-le v0, v6, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 1273
    :cond_2
    if-le v0, v5, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 1274
    :cond_3
    if-le v0, v4, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 1275
    :cond_4
    const/4 v1, 0x1

    .line 1277
    goto :goto_0

    .line 1285
    :cond_5
    const/16 v2, 0x12

    if-le v0, v2, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    .line 1286
    :cond_6
    if-le v0, v6, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    .line 1287
    :cond_7
    if-le v0, v5, :cond_8

    const/4 v1, 0x3

    goto :goto_0

    .line 1288
    :cond_8
    if-le v0, v4, :cond_9

    const/4 v1, 0x2

    goto :goto_0

    .line 1289
    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    .line 1265
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private getLevelEU()I
    .locals 3

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, level:I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "AU"

    const-string v2, "TEL"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelAU()I

    move-result v0

    .line 692
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteLevel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 693
    if-nez v0, :cond_0

    .line 694
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmUmtsLevelEU()I

    move-result v0

    .line 698
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevelEU level ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 699
    return v0

    .line 691
    :cond_1
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelEU()I

    move-result v0

    goto :goto_0
.end method

.method private getLevelKR()I
    .locals 3

    .prologue
    .line 647
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_2

    .line 651
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmLevelKR()I

    move-result v0

    .line 671
    .local v0, level:I
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevelKR level ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 672
    return v0

    .line 660
    .end local v0           #level:I
    :cond_1
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelKR()I

    move-result v0

    .line 662
    .restart local v0       #level:I
    if-nez v0, :cond_0

    .line 663
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmLevelKR()I

    move-result v0

    goto :goto_0

    .line 669
    .end local v0           #level:I
    :cond_2
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaLevelKR()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method private getLteLevelAU()I
    .locals 4

    .prologue
    const/16 v3, -0x78

    .line 2477
    const/4 v0, 0x0

    .line 2494
    .local v0, rsrpIconLevel:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2501
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AU: getLTELevel - rsrp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrpIconLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2502
    return v0

    .line 2495
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 2496
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2497
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2498
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2499
    :cond_6
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLteLevelEU()I
    .locals 4

    .prologue
    const/16 v3, -0x73

    .line 2440
    const/4 v0, 0x0

    .line 2456
    .local v0, rsrpIconLevel:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 2463
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EU: getLTELevel - rsrp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rsrpIconLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2465
    return v0

    .line 2457
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 2458
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 2459
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 2460
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v1, v3, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 2461
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLteLevelKR()I
    .locals 10

    .prologue
    const/16 v9, -0x8c

    const v8, 0x7fffffff

    const/16 v7, -0x73

    const/16 v6, -0x78

    const/4 v5, -0x1

    .line 2337
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2338
    const/4 v1, 0x0

    .line 2340
    .local v1, rssiIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v8, :cond_1

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2427
    :cond_0
    :goto_1
    return v0

    .line 2341
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x67

    if-lt v3, v4, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 2342
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x6d

    if-lt v3, v4, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 2343
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 2344
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 2345
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2348
    .end local v1           #rssiIconLevel:I
    :cond_6
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2349
    const/4 v1, 0x0

    .line 2351
    .restart local v1       #rssiIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v8, :cond_7

    const/4 v1, 0x0

    :goto_2
    move v0, v1

    .line 2359
    goto :goto_1

    .line 2352
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x61

    if-lt v3, v4, :cond_8

    const/4 v1, 0x5

    goto :goto_2

    .line 2353
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x67

    if-lt v3, v4, :cond_9

    const/4 v1, 0x4

    goto :goto_2

    .line 2354
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x6d

    if-lt v3, v4, :cond_a

    const/4 v1, 0x3

    goto :goto_2

    .line 2355
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_b

    const/4 v1, 0x2

    goto :goto_2

    .line 2356
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    .line 2357
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 2360
    .end local v1           #rssiIconLevel:I
    :cond_d
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2361
    const/4 v1, 0x0

    .line 2363
    .restart local v1       #rssiIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v8, :cond_e

    const/4 v1, 0x0

    :goto_3
    move v0, v1

    .line 2371
    goto :goto_1

    .line 2364
    :cond_e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_f

    const/4 v1, 0x5

    goto :goto_3

    .line 2365
    :cond_f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_10

    const/4 v1, 0x4

    goto :goto_3

    .line 2366
    :cond_10
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v6, :cond_11

    const/4 v1, 0x3

    goto :goto_3

    .line 2367
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x82

    if-lt v3, v4, :cond_12

    const/4 v1, 0x2

    goto :goto_3

    .line 2368
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_13

    const/4 v1, 0x1

    goto :goto_3

    .line 2369
    :cond_13
    const/4 v1, 0x0

    goto :goto_3

    .line 2379
    .end local v1           #rssiIconLevel:I
    :cond_14
    const/4 v1, 0x0

    .restart local v1       #rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 2381
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_17

    const/4 v0, -0x1

    .line 2394
    :cond_15
    :goto_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_1c

    const/4 v2, -0x1

    .line 2402
    :cond_16
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2406
    if-eq v2, v5, :cond_21

    if-eq v0, v5, :cond_21

    .line 2412
    if-lt v0, v2, :cond_0

    move v0, v2

    goto/16 :goto_1

    .line 2382
    :cond_17
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_18

    const/4 v0, 0x4

    goto :goto_4

    .line 2383
    :cond_18
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_19

    const/4 v0, 0x3

    goto :goto_4

    .line 2384
    :cond_19
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_1a

    const/4 v0, 0x2

    goto :goto_4

    .line 2385
    :cond_1a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_1b

    const/4 v0, 0x1

    goto :goto_4

    .line 2386
    :cond_1b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v9, :cond_15

    const/4 v0, 0x0

    goto :goto_4

    .line 2395
    :cond_1c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_1d

    const/4 v2, 0x4

    goto :goto_5

    .line 2396
    :cond_1d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_1e

    const/4 v2, 0x3

    goto :goto_5

    .line 2397
    :cond_1e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1f

    const/4 v2, 0x2

    goto :goto_5

    .line 2398
    :cond_1f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_20

    const/4 v2, 0x1

    goto/16 :goto_5

    .line 2399
    :cond_20
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_16

    .line 2400
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 2415
    :cond_21
    if-eq v2, v5, :cond_22

    move v0, v2

    goto/16 :goto_1

    .line 2417
    :cond_22
    if-ne v0, v5, :cond_0

    .line 2420
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_24

    const/4 v1, 0x0

    .line 2425
    :cond_23
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2427
    goto/16 :goto_1

    .line 2421
    :cond_24
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_25

    const/4 v1, 0x4

    goto :goto_6

    .line 2422
    :cond_25
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_26

    const/4 v1, 0x3

    goto :goto_6

    .line 2423
    :cond_26
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_27

    const/4 v1, 0x2

    goto :goto_6

    .line 2424
    :cond_27
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_23

    const/4 v1, 0x1

    goto :goto_6
.end method

.method private final getRSSIindexGSM(I)I
    .locals 4
    .parameter "asu"

    .prologue
    const/16 v3, -0x4f

    const/16 v1, -0x58

    const/16 v2, -0x61

    .line 954
    const/4 v0, 0x0

    .line 964
    .local v0, iconLevel:I
    add-int/lit8 p1, p1, -0x1

    .line 965
    if-lt p1, v3, :cond_0

    const/4 v0, 0x5

    .line 973
    :goto_0
    return v0

    .line 966
    :cond_0
    if-lt p1, v1, :cond_1

    if-ge p1, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 967
    :cond_1
    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 968
    :cond_2
    const/16 v1, -0x67

    if-lt p1, v1, :cond_3

    if-ge p1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 969
    :cond_3
    const/16 v1, -0x68

    if-gt p1, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 970
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getRSSIindexUMTS(II)I
    .locals 11
    .parameter "asu"
    .parameter "asu_Ecio"

    .prologue
    const/16 v10, -0x4f

    const/16 v9, -0x59

    const/16 v8, -0x63

    const/16 v7, -0x69

    .line 977
    const/4 v1, 0x0

    .line 978
    .local v1, iconLevel_ecio:I
    const/4 v3, 0x0

    .line 979
    .local v3, iconLevel_ecio_sum:I
    const/4 v2, 0x0

    .line 980
    .local v2, iconLevel_ecio_avr:I
    const/4 v0, 0x0

    .line 990
    .local v0, iconLevel:I
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "RGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "BELL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 992
    add-int/lit8 p1, p1, -0x1

    .line 993
    :cond_0
    if-lt p1, v10, :cond_2

    const/4 v0, 0x5

    .line 1000
    :goto_0
    const/16 v5, -0x64

    if-le p2, v5, :cond_7

    const/4 v1, 0x5

    .line 1006
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BRIGHTHY] lastEcIoIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastEcIoValues.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1007
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    aput v1, v5, v6

    .line 1008
    sget v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    sput v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 1010
    :cond_1
    const/4 v4, 0x0

    .local v4, kk:I
    :goto_2
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 1011
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    .line 1010
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 994
    .end local v4           #kk:I
    :cond_2
    if-lt p1, v9, :cond_3

    if-ge p1, v10, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 995
    :cond_3
    if-lt p1, v8, :cond_4

    if-ge p1, v9, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 996
    :cond_4
    if-lt p1, v7, :cond_5

    if-ge p1, v8, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 997
    :cond_5
    if-ge p1, v7, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 998
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1001
    :cond_7
    const/16 v5, -0x78

    if-le p2, v5, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    .line 1002
    :cond_8
    const/16 v5, -0x8c

    if-le p2, v5, :cond_9

    const/4 v1, 0x3

    goto :goto_1

    .line 1003
    :cond_9
    const/16 v5, -0xa0

    if-le p2, v5, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    .line 1004
    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    .line 1013
    .restart local v4       #kk:I
    :cond_b
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    div-int v2, v3, v5

    .line 1014
    if-le v1, v2, :cond_c

    .line 1020
    :goto_3
    if-ge v0, v1, :cond_d

    .line 1021
    :goto_4
    return v0

    :cond_c
    move v1, v2

    .line 1014
    goto :goto_3

    :cond_d
    move v0, v1

    .line 1020
    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2746
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 154
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 155
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 156
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 2669
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 2670
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 2671
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 2672
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 2673
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 2674
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 2675
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 2676
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 2677
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 2678
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 2679
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 2680
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 2681
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 2684
    const-string v0, "Dataf"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 2686
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 2688
    const-string/jumbo v0, "mRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 2690
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 285
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 286
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 287
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 288
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 289
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 290
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 291
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 292
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 295
    iget v0, p1, Landroid/telephony/SignalStrength;->datafeature:I

    iput v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 297
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 299
    iget v0, p1, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 301
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 2612
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2617
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 2621
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 2613
    :catch_0
    move-exception v1

    .line 2614
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2621
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 2699
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2700
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2701
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2702
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2703
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2704
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2705
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2706
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2707
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2708
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2709
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2710
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2711
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2714
    const-string v0, "Dataf"

    iget v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2716
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2718
    const-string/jumbo v0, "mRadioTechnology"

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2720
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, asuLevel:I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_a

    .line 761
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelKR()I

    move-result v3

    if-nez v3, :cond_1

    .line 763
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 767
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel_KR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 843
    :goto_1
    return v1

    .line 765
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 769
    :cond_2
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 770
    iget v3, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    .line 771
    const/16 v0, 0x63

    .line 776
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel_KR_LGU="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 777
    goto :goto_1

    .line 774
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    goto :goto_2

    .line 784
    :cond_4
    const-string v3, "VDF"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "SHB"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "STL"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "MON"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "HK"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "TW"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "EU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AU"

    const-string v4, "TEL"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "US"

    const-string v4, "ATT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ESA"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "SAU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "AME"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 798
    :cond_5
    const-string v3, "SignalStrength"

    const-string v4, "SignalStrength:getAsuLevel()-check LTE_EU if 0 go for GSM for ESA and AME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelEU()I

    move-result v3

    if-nez v3, :cond_6

    .line 800
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 805
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel_EU="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 806
    goto/16 :goto_1

    .line 802
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_3

    .line 811
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_9

    .line 812
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_8

    .line 813
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 842
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 843
    goto/16 :goto_1

    .line 815
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_4

    .line 818
    :cond_9
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_4

    .line 821
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 824
    .local v1, cdmaAsuLevel:I
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel_KR_LGU_CDMA ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 830
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 831
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_c

    .line 833
    move v0, v1

    goto :goto_4

    .line 834
    :cond_c
    if-nez v1, :cond_d

    .line 836
    move v0, v2

    goto :goto_4

    .line 839
    :cond_d
    if-ge v1, v2, :cond_e

    move v0, v1

    :goto_5
    goto :goto_4

    :cond_e
    move v0, v2

    goto :goto_5
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1547
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1548
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1552
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1560
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1567
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1568
    .local v4, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1569
    return v4

    .line 1553
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1554
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1555
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1556
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1557
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1561
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1562
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1563
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1564
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1565
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1567
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 1421
    const-string v5, "BM"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SPR"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1422
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel_SPCS()I

    move-result v2

    .line 1448
    :goto_0
    return v2

    .line 1427
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1428
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1432
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .line 1439
    .local v3, levelDbm:I
    :goto_1
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_6

    const/4 v4, 0x4

    .line 1445
    .local v4, levelEcio:I
    :goto_2
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1446
    .local v2, level:I
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1433
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_2
    const/16 v5, -0x55

    if-lt v0, v5, :cond_3

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 1434
    .end local v3           #levelDbm:I
    :cond_3
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_4

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 1435
    .end local v3           #levelDbm:I
    :cond_4
    const/16 v5, -0x64

    if-lt v0, v5, :cond_5

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 1436
    .end local v3           #levelDbm:I
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 1440
    :cond_6
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_7

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 1441
    .end local v4           #levelEcio:I
    :cond_7
    const/16 v5, -0x82

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 1442
    .end local v4           #levelEcio:I
    :cond_8
    const/16 v5, -0x96

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 1443
    .end local v4           #levelEcio:I
    :cond_9
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_2

    :cond_a
    move v2, v4

    .line 1445
    goto :goto_3
.end method

.method public getCdmaLevel_SPCS()I
    .locals 22

    .prologue
    .line 1489
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v15

    .line 1490
    .local v15, cdmaDbm:I
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v16

    .line 1497
    .local v16, cdmaEcio:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[CDMA] getCdmaLevel_SPCS Dbm ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1498
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[CDMA] getCdmaLevel_SPCS Ecio ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1508
    const/16 v2, -0x52

    .local v2, DbmThrs1:I
    const/16 v9, -0x5a

    .line 1509
    .local v9, EcioThrs1:I
    const/16 v3, -0x5c

    .local v3, DbmThrs2:I
    const/16 v10, -0x6e

    .line 1510
    .local v10, EcioThrs2:I
    const/16 v4, -0x61

    .local v4, DbmThrs3:I
    const/16 v11, -0x78

    .line 1511
    .local v11, EcioThrs3:I
    const/16 v5, -0x65

    .local v5, DbmThrs4:I
    const/16 v12, -0x82

    .line 1512
    .local v12, EcioThrs4:I
    const/16 v6, -0x6a

    .local v6, DbmThrs5:I
    const/16 v13, -0x8c

    .line 1513
    .local v13, EcioThrs5:I
    const/16 v7, -0x70

    .local v7, DbmThrs6:I
    const/16 v14, -0x96

    .line 1514
    .local v14, EcioThrs6:I
    const/16 v8, -0x71

    .line 1516
    .local v8, DbmThrs7:I
    if-lt v15, v2, :cond_0

    const/16 v18, 0x6

    .line 1526
    .local v18, levelDbm:I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v9, :cond_7

    const/16 v19, 0x6

    .line 1534
    .local v19, levelEcio:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move/from16 v17, v18

    .line 1535
    .local v17, level:I
    :goto_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getCdmaLevel_SPCS="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1536
    return v17

    .line 1517
    .end local v17           #level:I
    .end local v18           #levelDbm:I
    .end local v19           #levelEcio:I
    :cond_0
    if-lt v15, v3, :cond_1

    const/16 v18, 0x5

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1518
    .end local v18           #levelDbm:I
    :cond_1
    if-lt v15, v4, :cond_2

    const/16 v18, 0x4

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1519
    .end local v18           #levelDbm:I
    :cond_2
    if-lt v15, v5, :cond_3

    const/16 v18, 0x3

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1520
    .end local v18           #levelDbm:I
    :cond_3
    if-lt v15, v6, :cond_4

    const/16 v18, 0x2

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1521
    .end local v18           #levelDbm:I
    :cond_4
    if-lt v15, v7, :cond_5

    const/16 v18, 0x1

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1522
    .end local v18           #levelDbm:I
    :cond_5
    if-lt v15, v8, :cond_6

    const/16 v18, 0x0

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1523
    .end local v18           #levelDbm:I
    :cond_6
    const/16 v18, 0x0

    .restart local v18       #levelDbm:I
    goto :goto_0

    .line 1527
    :cond_7
    move/from16 v0, v16

    if-lt v0, v10, :cond_8

    const/16 v19, 0x5

    .restart local v19       #levelEcio:I
    goto :goto_1

    .line 1528
    .end local v19           #levelEcio:I
    :cond_8
    move/from16 v0, v16

    if-lt v0, v11, :cond_9

    const/16 v19, 0x4

    .restart local v19       #levelEcio:I
    goto :goto_1

    .line 1529
    .end local v19           #levelEcio:I
    :cond_9
    move/from16 v0, v16

    if-lt v0, v12, :cond_a

    const/16 v19, 0x3

    .restart local v19       #levelEcio:I
    goto :goto_1

    .line 1530
    .end local v19           #levelEcio:I
    :cond_a
    move/from16 v0, v16

    if-lt v0, v13, :cond_b

    const/16 v19, 0x2

    .restart local v19       #levelEcio:I
    goto :goto_1

    .line 1531
    .end local v19           #levelEcio:I
    :cond_b
    move/from16 v0, v16

    if-lt v0, v14, :cond_c

    const/16 v19, 0x1

    .restart local v19       #levelEcio:I
    goto :goto_1

    .line 1532
    .end local v19           #levelEcio:I
    :cond_c
    const/16 v19, 0x0

    .restart local v19       #levelEcio:I
    goto :goto_1

    :cond_d
    move/from16 v17, v19

    .line 1534
    goto :goto_2
.end method

.method public getDCMGsmUmtsLevel()I
    .locals 5

    .prologue
    const/16 v4, 0x63

    .line 1362
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1369
    .local v0, asu:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1388
    if-lez v0, :cond_0

    if-ne v0, v4, :cond_6

    :cond_0
    const/4 v1, 0x0

    .line 1395
    .local v1, level:I
    :goto_0
    return v1

    .line 1374
    .end local v1           #level:I
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[jongdae123] GSM asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mang] GSM asu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1376
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 1377
    .end local v1           #level:I
    :cond_2
    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 1378
    .end local v1           #level:I
    :cond_3
    const/4 v2, 0x7

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 1379
    .end local v1           #level:I
    :cond_4
    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 1380
    .end local v1           #level:I
    :cond_5
    const/4 v1, 0x1

    .line 1381
    .restart local v1       #level:I
    goto :goto_0

    .line 1389
    .end local v1           #level:I
    :cond_6
    const/16 v2, 0xc

    if-lt v0, v2, :cond_7

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 1390
    .end local v1           #level:I
    :cond_7
    const/16 v2, 0x8

    if-lt v0, v2, :cond_8

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 1391
    .end local v1           #level:I
    :cond_8
    const/4 v2, 0x4

    if-lt v0, v2, :cond_9

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 1392
    .end local v1           #level:I
    :cond_9
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0

    .line 1369
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 852
    const v1, 0x7fffffff

    .line 854
    .local v1, dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 857
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 858
    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelKR()I

    move-result v3

    if-nez v3, :cond_2

    .line 859
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 863
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm_KR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 922
    :cond_1
    :goto_1
    return v0

    .line 861
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_0

    .line 865
    :cond_3
    const-string v3, "KR"

    const-string v4, "LGU"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 866
    iget v3, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_4

    .line 867
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 872
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm_KR_LGU="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 873
    goto :goto_1

    .line 870
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_2

    .line 879
    :cond_5
    const-string v3, "VDF"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "SHB"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "STL"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "MON"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "HK"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "TW"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "EU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AU"

    const-string v4, "TEL"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "ESA"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "SAU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "AME"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 892
    :cond_6
    const-string v3, "SignalStrength"

    const-string v4, "SignalStrength:getDbm()-check LTE_EU if 0 go for GSM for ESA and AME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLteLevelEU()I

    move-result v3

    if-nez v3, :cond_7

    .line 894
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 899
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm_EU="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 900
    goto/16 :goto_1

    .line 896
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_3

    .line 905
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_a

    .line 906
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_9

    .line 907
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 921
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 922
    goto/16 :goto_1

    .line 909
    :cond_9
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_4

    .line 912
    :cond_a
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_4

    .line 915
    :cond_b
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 916
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 918
    .local v2, evdoDbm:I
    if-eq v2, v4, :cond_1

    if-ne v0, v4, :cond_c

    move v0, v2

    goto/16 :goto_1

    :cond_c
    if-lt v0, v2, :cond_1

    move v0, v2

    goto/16 :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 1645
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1646
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1650
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1657
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1664
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1665
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1666
    return v2

    .line 1651
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1652
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1653
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1654
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1655
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1658
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1659
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1660
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1661
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1662
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1664
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 1578
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1579
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1583
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 1589
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 1595
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1596
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1597
    return v2

    .line 1584
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1585
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1586
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1587
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1590
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1591
    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1592
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1593
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 1595
    goto :goto_2
.end method

.method public getEvdoLevel_SPCS()I
    .locals 17

    .prologue
    .line 1606
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v12

    .line 1607
    .local v12, evdoDbm:I
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v13

    .line 1614
    .local v13, evdoSnr:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[EVDO] getEvdoLevel_SPCS Dbm ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1615
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[EVDO] getEvdoLevel_SPCS SNR ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1617
    const/16 v0, -0x4e

    .local v0, EvdoDbmThrs1:I
    const/16 v6, -0x5a

    .line 1618
    .local v6, EvdoEcioThrs1:I
    const/16 v1, -0x55

    .local v1, EvdoDbmThrs2:I
    const/16 v7, -0x6e

    .line 1619
    .local v7, EvdoEcioThrs2:I
    const/16 v2, -0x5a

    .local v2, EvdoDbmThrs3:I
    const/16 v8, -0x78

    .line 1620
    .local v8, EvdoEcioThrs3:I
    const/16 v3, -0x5f

    .local v3, EvdoDbmThrs4:I
    const/16 v9, -0x82

    .line 1621
    .local v9, EvdoEcioThrs4:I
    const/16 v4, -0x64

    .local v4, EvdoDbmThrs5:I
    const/16 v10, -0x8c

    .line 1622
    .local v10, EvdoEcioThrs5:I
    const/16 v5, -0x67

    .local v5, EvdoDbmThrs6:I
    const/16 v11, -0x96

    .line 1624
    .local v11, EvdoEcioThrs6:I
    if-lt v12, v0, :cond_0

    const/4 v14, 0x6

    .line 1632
    .local v14, levelEvdoDbm:I
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getEvdoLevel_SPCS="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1634
    return v14

    .line 1625
    .end local v14           #levelEvdoDbm:I
    :cond_0
    if-lt v12, v1, :cond_1

    const/4 v14, 0x5

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0

    .line 1626
    .end local v14           #levelEvdoDbm:I
    :cond_1
    if-lt v12, v2, :cond_2

    const/4 v14, 0x4

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0

    .line 1627
    .end local v14           #levelEvdoDbm:I
    :cond_2
    if-lt v12, v3, :cond_3

    const/4 v14, 0x3

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0

    .line 1628
    .end local v14           #levelEvdoDbm:I
    :cond_3
    if-lt v12, v4, :cond_4

    const/4 v14, 0x2

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0

    .line 1629
    .end local v14           #levelEvdoDbm:I
    :cond_4
    if-lt v12, v5, :cond_5

    const/4 v14, 0x1

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0

    .line 1630
    .end local v14           #levelEvdoDbm:I
    :cond_5
    const/4 v14, 0x0

    .restart local v14       #levelEvdoDbm:I
    goto :goto_0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 1409
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1410
    .local v0, level:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1411
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 933
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 934
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 935
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 936
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 940
    .local v1, dBm:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 941
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 934
    goto :goto_0

    .line 938
    .restart local v0       #asu:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 8

    .prologue
    .line 1034
    const/4 v3, 0x0

    .line 1036
    .local v3, level:I
    const-string v6, "VZW"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1037
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getVZWGsmUmtsLevel()I

    move-result v3

    :goto_0
    move v4, v3

    .line 1117
    .end local v3           #level:I
    .local v4, level:I
    :goto_1
    return v4

    .line 1044
    .end local v4           #level:I
    .restart local v3       #level:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1047
    .local v0, asu:I
    iget-object v6, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v7, "ATT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v7, "RGS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v7, "BELL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v7, "TLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1048
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 1049
    .local v2, asu_dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1056
    .local v1, asu_Ecio:I
    iget v6, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    packed-switch v6, :pswitch_data_0

    .line 1072
    :pswitch_0
    iget v5, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    .line 1073
    .local v5, mDataNetType_CSonly:I
    const v6, 0x37849

    if-ne v1, v6, :cond_2

    const/4 v5, 0x1

    .line 1076
    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1078
    invoke-direct {p0, v2}, Landroid/telephony/SignalStrength;->getRSSIindexGSM(I)I

    move-result v3

    .line 1096
    .end local v5           #mDataNetType_CSonly:I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BRIGHTHY] asu_Ecio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  , getGsmLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/telephony/SignalStrength;->getRSSIindexGSM(I)I

    move-result v3

    .line 1060
    goto :goto_2

    .line 1067
    :pswitch_2
    invoke-direct {p0, v2, v1}, Landroid/telephony/SignalStrength;->getRSSIindexUMTS(II)I

    move-result v3

    .line 1068
    goto :goto_2

    .line 1086
    .restart local v5       #mDataNetType_CSonly:I
    :cond_3
    invoke-direct {p0, v2, v1}, Landroid/telephony/SignalStrength;->getRSSIindexUMTS(II)I

    move-result v3

    .line 1089
    goto :goto_2

    .line 1107
    .end local v1           #asu_Ecio:I
    .end local v2           #asu_dBm:I
    .end local v5           #mDataNetType_CSonly:I
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1108
    const/4 v6, 0x2

    if-le v0, v6, :cond_5

    const/16 v6, 0x63

    if-ne v0, v6, :cond_6

    :cond_5
    const/4 v3, 0x0

    .line 1113
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGsmLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v4, v3

    .line 1114
    .end local v3           #level:I
    .restart local v4       #level:I
    goto/16 :goto_1

    .line 1109
    .end local v4           #level:I
    .restart local v3       #level:I
    :cond_6
    const/16 v6, 0xc

    if-lt v0, v6, :cond_7

    const/4 v3, 0x4

    goto :goto_3

    .line 1110
    :cond_7
    const/16 v6, 0x8

    if-lt v0, v6, :cond_8

    const/4 v3, 0x3

    goto :goto_3

    .line 1111
    :cond_8
    const/4 v6, 0x5

    if-lt v0, v6, :cond_9

    const/4 v3, 0x2

    goto :goto_3

    .line 1112
    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 562
    const/4 v2, 0x0

    .line 565
    .local v2, level:I
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKR()I

    move-result v3

    .line 640
    :goto_0
    return v3

    .line 571
    :cond_0
    const-string v3, "VDF"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SHB"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "STL"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "MON"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HK"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TW"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "EU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AU"

    const-string v4, "TEL"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ESA"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SAU"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AME"

    const-string v4, "OPEN"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 584
    :cond_1
    const-string v3, "SignalStrength"

    const-string v4, "SignalStrength:getLevel()-->getLevelEU() for ESA and AME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelEU()I

    move-result v3

    goto :goto_0

    .line 590
    :cond_2
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_6

    .line 592
    const-string v3, "DCM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 593
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_dcm()I

    move-result v2

    .line 598
    :goto_1
    if-nez v2, :cond_3

    .line 599
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 600
    if-nez v2, :cond_3

    .line 602
    const-string v3, "DCM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 603
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getDCMGsmUmtsLevel()I

    move-result v2

    .line 639
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v3, v2

    .line 640
    goto/16 :goto_0

    .line 595
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    goto :goto_1

    .line 605
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_2

    .line 616
    :cond_6
    const-string v3, "BM"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "SPR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 618
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel_SPCS()I

    move-result v0

    .line 619
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel_SPCS()I

    move-result v1

    .line 628
    .local v1, evdoLevel:I
    :goto_3
    if-nez v1, :cond_9

    .line 630
    move v2, v0

    goto :goto_2

    .line 623
    .end local v0           #cdmaLevel:I
    .end local v1           #evdoLevel:I
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 624
    .restart local v0       #cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .restart local v1       #evdoLevel:I
    goto :goto_3

    .line 631
    :cond_9
    if-nez v0, :cond_a

    .line 633
    move v2, v1

    goto :goto_2

    .line 636
    :cond_a
    if-ge v0, v1, :cond_b

    move v2, v0

    :goto_4
    goto :goto_2

    :cond_b
    move v2, v1

    goto :goto_4
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 2513
    const/16 v0, 0x63

    .line 2514
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 2528
    .local v1, lteDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 2530
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2531
    return v0

    .line 2529
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 1723
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1675
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 12

    .prologue
    const/16 v11, -0x5f

    const/16 v10, -0x69

    const/16 v9, -0xc8

    const/16 v8, -0x73

    const/4 v7, -0x1

    .line 1733
    const/4 v0, 0x0

    .line 1741
    .local v0, level:I
    const/4 v3, 0x0

    .local v3, rssiIconLevel:I
    const/4 v2, -0x1

    .local v2, rsrpIconLevel:I
    const/4 v4, -0x1

    .line 1745
    .local v4, snrIconLevel:I
    const-string v5, "VZW"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1746
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1747
    .local v1, networkType:I
    const/16 v5, 0xd

    if-ne v1, v5, :cond_2

    .line 1748
    const-string/jumbo v5, "networkType = LTE network"

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1754
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_3

    const/4 v2, 0x0

    .line 1761
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRP :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rsrpIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRQ :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RSSI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1766
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_8

    const/4 v4, 0x5

    .line 1772
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLTELevel - rsrp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " snr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rsrpIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " snrIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1779
    if-ge v2, v4, :cond_c

    move v5, v2

    .line 1836
    .end local v1           #networkType:I
    :goto_2
    return v5

    .line 1750
    .restart local v1       #networkType:I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1751
    const/4 v5, 0x0

    goto :goto_2

    .line 1755
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x55

    if-lt v5, v6, :cond_4

    const/4 v2, 0x5

    goto/16 :goto_0

    .line 1756
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v11, :cond_5

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1757
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v10, :cond_6

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 1758
    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_7

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1759
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v8, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1767
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_9

    const/4 v4, 0x4

    goto/16 :goto_1

    .line 1768
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_a

    const/4 v4, 0x3

    goto/16 :goto_1

    .line 1769
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_b

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1770
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    move v5, v4

    .line 1779
    goto :goto_2

    .line 1781
    .end local v1           #networkType:I
    :cond_d
    const-string v5, "SPR"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1782
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel_SPCS()I

    move-result v5

    goto :goto_2

    .line 1785
    :cond_e
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1786
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_att()I

    move-result v5

    goto :goto_2

    .line 1789
    :cond_f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x2c

    if-le v5, v6, :cond_12

    const/4 v2, -0x1

    .line 1802
    :cond_10
    :goto_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_17

    const/4 v4, -0x1

    .line 1810
    :cond_11
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLTELevel - rsrp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " snr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rsrpIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " snrIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1815
    if-eq v4, v7, :cond_1d

    if-eq v2, v7, :cond_1d

    .line 1821
    if-ge v2, v4, :cond_1c

    move v5, v2

    goto/16 :goto_2

    .line 1790
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x55

    if-lt v5, v6, :cond_13

    const/4 v2, 0x4

    goto :goto_3

    .line 1791
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v11, :cond_14

    const/4 v2, 0x3

    goto :goto_3

    .line 1792
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v10, :cond_15

    const/4 v2, 0x2

    goto :goto_3

    .line 1793
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_16

    const/4 v2, 0x1

    goto :goto_3

    .line 1794
    :cond_16
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x8c

    if-lt v5, v6, :cond_10

    const/4 v2, 0x0

    goto :goto_3

    .line 1803
    :cond_17
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_18

    const/4 v4, 0x4

    goto :goto_4

    .line 1804
    :cond_18
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_19

    const/4 v4, 0x3

    goto :goto_4

    .line 1805
    :cond_19
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_1a

    const/4 v4, 0x2

    goto :goto_4

    .line 1806
    :cond_1a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_1b

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1807
    :cond_1b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_11

    .line 1808
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_1c
    move v5, v4

    .line 1821
    goto/16 :goto_2

    .line 1824
    :cond_1d
    if-eq v4, v7, :cond_1e

    move v5, v4

    goto/16 :goto_2

    .line 1826
    :cond_1e
    if-eq v2, v7, :cond_1f

    move v5, v2

    goto/16 :goto_2

    .line 1829
    :cond_1f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v5, v6, :cond_21

    const/4 v3, 0x0

    .line 1834
    :cond_20
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLTELevel - rssi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rssiIconLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v5, v3

    .line 1836
    goto/16 :goto_2

    .line 1830
    :cond_21
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_22

    const/4 v3, 0x4

    goto :goto_5

    .line 1831
    :cond_22
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_23

    const/4 v3, 0x3

    goto :goto_5

    .line 1832
    :cond_23
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_24

    const/4 v3, 0x2

    goto :goto_5

    .line 1833
    :cond_24
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v5, :cond_20

    const/4 v3, 0x1

    goto :goto_5
.end method

.method public getLteLevel_att()I
    .locals 10

    .prologue
    const/16 v9, -0x55

    const/16 v8, -0x5f

    const/16 v7, -0x69

    const/16 v6, -0x73

    const/4 v5, -0x1

    .line 1915
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 1928
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    .line 1956
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATT: getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1960
    if-eq v2, v5, :cond_8

    if-eq v0, v5, :cond_8

    .line 1966
    if-ge v0, v2, :cond_7

    .line 1991
    .end local v0           #rsrpIconLevel:I
    :cond_0
    :goto_1
    return v0

    .line 1929
    .restart local v0       #rsrpIconLevel:I
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v9, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 1930
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v3, v9, :cond_3

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v8, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1931
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v3, v8, :cond_4

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v7, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 1932
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v3, v7, :cond_5

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v6, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 1933
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-gt v3, v6, :cond_6

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x7d

    if-le v3, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 1934
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1966
    goto :goto_1

    .line 1969
    :cond_8
    if-eq v2, v5, :cond_9

    move v0, v2

    goto :goto_1

    .line 1971
    :cond_9
    if-ne v0, v5, :cond_0

    .line 1988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1991
    goto :goto_1
.end method

.method public getLteLevel_dcm()I
    .locals 8

    .prologue
    const v7, 0x7fffffff

    const/4 v6, -0x1

    .line 2243
    const/4 v2, 0x0

    .local v2, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v3, -0x1

    .line 2246
    .local v3, snrIconLevel:I
    const/4 v1, -0x1

    .line 2250
    .local v1, rsrqIconLevel:I
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v7, :cond_1

    const/4 v0, 0x0

    .line 2264
    :goto_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v7, :cond_7

    const/4 v1, 0x0

    .line 2271
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rsrp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsrq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsrpIconLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsrqIconLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2275
    if-eq v1, v6, :cond_d

    if-eq v0, v6, :cond_d

    .line 2281
    if-ge v0, v1, :cond_c

    .line 2296
    .end local v0           #rsrpIconLevel:I
    :cond_0
    :goto_2
    return v0

    .line 2251
    .restart local v0       #rsrpIconLevel:I
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x2c

    if-le v4, v5, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 2252
    :cond_2
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x5e

    if-lt v4, v5, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 2253
    :cond_3
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x6f

    if-lt v4, v5, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 2254
    :cond_4
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x77

    if-lt v4, v5, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 2255
    :cond_5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v5, -0x7e

    if-lt v4, v5, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 2256
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 2265
    :cond_7
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0xc

    if-le v4, v5, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    .line 2266
    :cond_8
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0xf

    if-lt v4, v5, :cond_9

    const/4 v1, 0x3

    goto :goto_1

    .line 2267
    :cond_9
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0x11

    if-lt v4, v5, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    .line 2268
    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v5, -0x13

    if-lt v4, v5, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2269
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 2281
    goto :goto_2

    .line 2284
    :cond_d
    if-eq v1, v6, :cond_e

    move v0, v1

    goto :goto_2

    .line 2286
    :cond_e
    if-ne v0, v6, :cond_0

    .line 2289
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_10

    const/4 v2, 0x0

    .line 2294
    :cond_f
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rssi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssiIconLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v2

    .line 2296
    goto/16 :goto_2

    .line 2290
    :cond_10
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_11

    const/4 v2, 0x4

    goto :goto_3

    .line 2291
    :cond_11
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_12

    const/4 v2, 0x3

    goto :goto_3

    .line 2292
    :cond_12
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_13

    const/4 v2, 0x2

    goto :goto_3

    .line 2293
    :cond_13
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_3
.end method

.method public getLteLevel_kt()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2183
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 2185
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 2198
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 2206
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2210
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 2216
    if-ge v0, v2, :cond_d

    .line 2231
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 2186
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2187
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2188
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2189
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 2190
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2199
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2200
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2201
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2202
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2203
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 2204
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 2216
    goto :goto_2

    .line 2219
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 2221
    :cond_f
    if-ne v0, v5, :cond_2

    .line 2224
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 2229
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2231
    goto/16 :goto_2

    .line 2225
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 2226
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 2227
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 2228
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteLevel_lgu()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1850
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 1852
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 1865
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 1873
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1877
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 1883
    if-ge v0, v2, :cond_d

    .line 1898
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 1853
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 1854
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 1855
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 1856
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 1857
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1866
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 1867
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 1868
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 1869
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1870
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 1871
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 1883
    goto :goto_2

    .line 1886
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 1888
    :cond_f
    if-ne v0, v5, :cond_2

    .line 1891
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 1896
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1898
    goto/16 :goto_2

    .line 1892
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 1893
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 1894
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 1895
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteLevel_mpcs()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2066
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 2068
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 2081
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 2089
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2093
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 2099
    if-ge v0, v2, :cond_d

    .line 2114
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 2069
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2070
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2071
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2072
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 2073
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2082
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2083
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2084
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2085
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2086
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 2087
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 2099
    goto :goto_2

    .line 2102
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 2104
    :cond_f
    if-ne v0, v5, :cond_2

    .line 2107
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 2112
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2114
    goto/16 :goto_2

    .line 2108
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 2109
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 2110
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 2111
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteLevel_skt()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2124
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 2126
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 2139
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 2147
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2151
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 2157
    if-ge v0, v2, :cond_d

    .line 2172
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 2127
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2128
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2129
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2130
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 2131
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2140
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2141
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2142
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2143
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2144
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 2145
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 2157
    goto :goto_2

    .line 2160
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 2162
    :cond_f
    if-ne v0, v5, :cond_2

    .line 2165
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 2170
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2172
    goto/16 :goto_2

    .line 2166
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 2167
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 2168
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 2169
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteLevel_spcs()I
    .locals 6

    .prologue
    .line 2309
    const/4 v1, 0x0

    .local v1, rsrpIconLevel:I
    const/4 v3, 0x0

    .line 2311
    .local v3, rsrqIconLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    .line 2312
    .local v0, rsrp:I
    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2321
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v2

    .line 2324
    .local v2, rsrq:I
    const/4 v3, 0x0

    .line 2326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLteLevel_spcs = getLTELevel - rsrp :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsrq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLteLevel_spcs = getLTELevel - rsrpIconLevel :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsrqIconLevel :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2329
    return v1

    .line 2313
    .end local v2           #rsrq:I
    :cond_1
    const/16 v4, -0x56

    if-lt v0, v4, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    .line 2314
    :cond_2
    const/16 v4, -0x59

    if-lt v0, v4, :cond_3

    const/4 v1, 0x5

    goto :goto_0

    .line 2315
    :cond_3
    const/16 v4, -0x5b

    if-lt v0, v4, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    .line 2316
    :cond_4
    const/16 v4, -0x5d

    if-lt v0, v4, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    .line 2317
    :cond_5
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    .line 2318
    :cond_6
    const/16 v4, -0x61

    if-lt v0, v4, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    .line 2319
    :cond_7
    const/16 v4, -0x63

    if-lt v0, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLteLevel_vzw()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2005
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 2007
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 2020
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 2028
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2032
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 2038
    if-ge v0, v2, :cond_d

    .line 2053
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 2008
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2009
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2010
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2011
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 2012
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2021
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2022
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2023
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2024
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2025
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 2026
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 2038
    goto :goto_2

    .line 2041
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 2043
    :cond_f
    if-ne v0, v5, :cond_2

    .line 2046
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    .line 2051
    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rssiIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2053
    goto/16 :goto_2

    .line 2047
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 2048
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 2049
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 2050
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 1696
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 1705
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssi()I
    .locals 1

    .prologue
    .line 1687
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x72

    return v0
.end method

.method public getLteSnr()I
    .locals 1

    .prologue
    .line 1714
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 1

    .prologue
    .line 2738
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .prologue
    .line 2580
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 2583
    .local v1, tdScdmaDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 2585
    .local v0, tdScdmaAsuLevel:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2586
    return v0

    .line 2584
    .end local v0           #tdScdmaAsuLevel:I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0       #tdScdmaAsuLevel:I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 2547
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 4

    .prologue
    .line 2559
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 2562
    .local v1, tdScdmaDbm:I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 2563
    :cond_0
    const/4 v0, 0x0

    .line 2570
    .local v0, level:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 2571
    return v0

    .line 2564
    .end local v0           #level:I
    :cond_1
    const/16 v2, -0x31

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 2565
    .end local v0           #level:I
    :cond_2
    const/16 v2, -0x49

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 2566
    .end local v0           #level:I
    :cond_3
    const/16 v2, -0x61

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 2567
    .end local v0           #level:I
    :cond_4
    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0

    .line 2568
    .end local v0           #level:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public getVZWGsmUmtsLevel()I
    .locals 4

    .prologue
    const/16 v3, 0x63

    .line 1313
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1315
    .local v0, asu:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getRadioTechnology()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1333
    if-ne v0, v3, :cond_5

    const/4 v1, 0x0

    .line 1348
    .local v1, level:I
    :goto_0
    return v1

    .line 1318
    .end local v1           #level:I
    :pswitch_0
    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 1319
    .end local v1           #level:I
    :cond_0
    const/16 v2, 0xf

    if-lt v0, v2, :cond_1

    const/4 v1, 0x5

    .restart local v1       #level:I
    goto :goto_0

    .line 1320
    .end local v1           #level:I
    :cond_1
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 1321
    .end local v1           #level:I
    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 1322
    .end local v1           #level:I
    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 1323
    .end local v1           #level:I
    :cond_4
    const/4 v1, 0x1

    .line 1325
    .restart local v1       #level:I
    goto :goto_0

    .line 1334
    .end local v1           #level:I
    :cond_5
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_6

    const/4 v1, 0x5

    .restart local v1       #level:I
    goto :goto_0

    .line 1335
    .end local v1           #level:I
    :cond_6
    const/16 v2, 0x16

    if-lt v0, v2, :cond_7

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 1336
    .end local v1           #level:I
    :cond_7
    const/16 v2, 0xe

    if-lt v0, v2, :cond_8

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 1337
    .end local v1           #level:I
    :cond_8
    const/4 v2, 0x7

    if-lt v0, v2, :cond_9

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 1338
    .end local v1           #level:I
    :cond_9
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getoperLteLevel()I
    .locals 2

    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getoperLteLevel - datafeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 724
    iget v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    packed-switch v0, :pswitch_data_0

    .line 745
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    :goto_0
    return v0

    .line 727
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    goto :goto_0

    .line 729
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_vzw()I

    move-result v0

    goto :goto_0

    .line 731
    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_lgu()I

    move-result v0

    goto :goto_0

    .line 735
    :pswitch_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_att()I

    move-result v0

    goto :goto_0

    .line 737
    :pswitch_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_kt()I

    move-result v0

    goto :goto_0

    .line 739
    :pswitch_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_skt()I

    move-result v0

    goto :goto_0

    .line 741
    :pswitch_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_mpcs()I

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel_spcs()I

    move-result v0

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2594
    const/16 v0, 0x1f

    .line 2595
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 2538
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setDataNetType(I)V
    .locals 2
    .parameter "DataType"

    .prologue
    .line 948
    iput p1, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Helen] setDataNetType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 495
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 496
    return-void
.end method

.method public setRadioTechnology(I)V
    .locals 0
    .parameter "radioTechnology"

    .prologue
    .line 2729
    iput p1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 2730
    return-void
.end method

.method public setfeature(I)V
    .locals 0
    .parameter "feature"

    .prologue
    .line 503
    iput p1, p0, Landroid/telephony/SignalStrength;->datafeature:I

    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 7

    .prologue
    const/16 v1, 0x63

    const/4 v4, -0x1

    const/16 v3, -0xa0

    const/16 v2, -0x78

    const v5, 0x7fffffff

    .line 435
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 438
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 441
    iget-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "ATT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "RGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "BELL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const v6, 0x37849

    if-ne v0, v6, :cond_7

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Helen] Enter CS only cdmaEcio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 464
    :goto_2
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 470
    :goto_3
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_2
    iput v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 475
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 476
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 477
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 478
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_10

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_10

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 480
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v5, v0

    :cond_4
    iput v5, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Helen] Enter RSSI - mGsmSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Dbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 484
    return-void

    :cond_5
    move v0, v1

    .line 435
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 438
    goto/16 :goto_1

    .line 448
    :cond_7
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Helen] Enter CS&PS cdmaEcio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move v0, v3

    .line 448
    goto :goto_8

    .line 453
    :cond_9
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v3, v0

    :cond_a
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 454
    const-string v0, "[Helen] Not AT&T"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 467
    :cond_b
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_c
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    goto/16 :goto_3

    :cond_d
    move v0, v4

    .line 470
    goto/16 :goto_4

    :cond_e
    move v0, v5

    .line 476
    goto/16 :goto_5

    :cond_f
    move v0, v5

    .line 477
    goto/16 :goto_6

    :cond_10
    move v0, v5

    .line 478
    goto/16 :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->datafeature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
