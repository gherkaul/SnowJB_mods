.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_ASPECT_WVGA:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEEDS_SECONDARY_DPI:I = 0x20

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field private static ctsChecked:Z

.field private static ctsDetected:Z


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 345
    sput-boolean v1, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 347
    sput-boolean v1, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z

    .line 715
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 339
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 342
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 333
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 334
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 335
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 113
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZZ)V
    .locals 12
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"
    .parameter "forceWVGA"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v5, 0x0

    .line 121
    .local v5, compatFlags:I
    const/4 v7, 0x0

    .line 122
    .local v7, needsSecondaryDpi:Z
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v10, v11, :cond_1

    .line 124
    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.lge.launcher2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 126
    const/4 v7, 0x1

    .line 130
    :cond_0
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/content/res/CompatibilityInfo;->checkIfCtsInstalled(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 131
    const/4 v7, 0x0

    .line 136
    :cond_1
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v10, :cond_2

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v10, :cond_2

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v10, :cond_d

    .line 139
    :cond_2
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v10, :cond_6

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 142
    .local v8, required:I
    :goto_0
    if-nez v8, :cond_3

    .line 143
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 145
    :cond_3
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v10, :cond_7

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 147
    .local v4, compat:I
    :goto_1
    if-ge v4, v8, :cond_4

    .line 148
    move v4, v8

    .line 150
    :cond_4
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 152
    .local v6, largest:I
    const/16 v10, 0x140

    if-le v8, v10, :cond_8

    .line 159
    or-int/lit8 v5, v5, 0x4

    .line 178
    :cond_5
    :goto_2
    if-eqz p4, :cond_b

    if-eqz p5, :cond_b

    .line 179
    const/16 v10, 0xf0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 180
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4370

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 182
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 183
    or-int/lit8 v10, v5, 0x1

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 328
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :goto_3
    return-void

    .line 139
    :cond_6
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_0

    .restart local v8       #required:I
    :cond_7
    move v4, v8

    .line 145
    goto :goto_1

    .line 160
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_8
    if-eqz v6, :cond_9

    if-le p3, v6, :cond_9

    .line 164
    or-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 165
    :cond_9
    if-lt v4, p3, :cond_a

    .line 168
    or-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 169
    :cond_a
    if-eqz p4, :cond_5

    .line 172
    or-int/lit8 v5, v5, 0x8

    goto :goto_2

    .line 190
    :cond_b
    if-eqz v7, :cond_c

    .line 191
    or-int/lit8 v5, v5, 0x20

    .line 192
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 198
    :goto_4
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 199
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 327
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :goto_5
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_3

    .line 194
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    .restart local v8       #required:I
    :cond_c
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    goto :goto_4

    .line 206
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :cond_d
    const/4 v0, 0x2

    .line 212
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 218
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 220
    .local v2, XLARGE_SCREENS:I
    const/4 v9, 0x0

    .line 224
    .local v9, sizeInfo:I
    const/4 v3, 0x0

    .line 226
    .local v3, anyResizeable:Z
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_e

    .line 227
    or-int/lit8 v9, v9, 0x8

    .line 228
    const/4 v3, 0x1

    .line 229
    if-nez p4, :cond_e

    .line 233
    or-int/lit8 v9, v9, 0x22

    .line 236
    :cond_e
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_f

    .line 237
    const/4 v3, 0x1

    .line 238
    if-nez p4, :cond_f

    .line 239
    or-int/lit8 v9, v9, 0x22

    .line 242
    :cond_f
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_10

    .line 243
    const/4 v3, 0x1

    .line 244
    or-int/lit8 v9, v9, 0x2

    .line 247
    :cond_10
    if-eqz p4, :cond_11

    .line 252
    and-int/lit8 v9, v9, -0x3

    .line 255
    :cond_11
    or-int/lit8 v5, v5, 0x8

    .line 256
    and-int/lit8 v10, p2, 0xf

    packed-switch v10, :pswitch_data_0

    .line 275
    :cond_12
    :goto_6
    const/high16 v10, 0x1000

    and-int/2addr v10, p2

    if-eqz v10, :cond_17

    .line 276
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_16

    .line 277
    and-int/lit8 v5, v5, -0x9

    .line 286
    :cond_13
    :goto_7
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_1a

    .line 290
    if-eqz p4, :cond_18

    if-eqz p5, :cond_18

    .line 291
    const/16 v10, 0xf0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 292
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4370

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 294
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 295
    or-int/lit8 v10, v5, 0x1

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto/16 :goto_3

    .line 258
    :pswitch_0
    and-int/lit8 v10, v9, 0x20

    if-eqz v10, :cond_14

    .line 259
    and-int/lit8 v5, v5, -0x9

    .line 261
    :cond_14
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_12

    .line 262
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 266
    :pswitch_1
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_15

    .line 267
    and-int/lit8 v5, v5, -0x9

    .line 269
    :cond_15
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_12

    .line 270
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 278
    :cond_16
    if-nez v3, :cond_13

    .line 279
    or-int/lit8 v5, v5, 0x2

    goto :goto_7

    .line 282
    :cond_17
    and-int/lit8 v5, v5, -0x9

    .line 283
    or-int/lit8 v5, v5, 0x4

    goto :goto_7

    .line 301
    :cond_18
    if-eqz v7, :cond_19

    .line 302
    or-int/lit8 v5, v5, 0x20

    .line 303
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 308
    :goto_8
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 309
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_5

    .line 305
    :cond_19
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    goto :goto_8

    .line 314
    :cond_1a
    if-eqz p4, :cond_1b

    if-eqz p5, :cond_1b

    .line 315
    or-int/lit8 v5, v5, 0x10

    .line 319
    :cond_1b
    const/16 v10, 0xa0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 320
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4320

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 322
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 323
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 726
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 731
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkIfCtsInstalled(I)Z
    .locals 5
    .parameter "userId"

    .prologue
    const/4 v2, 0x1

    .line 350
    sget-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z

    if-eqz v3, :cond_0

    .line 351
    sget-boolean v2, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 364
    :goto_0
    return v2

    .line 354
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 355
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    const-string v3, "android.tests.devicesetup"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 356
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 357
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 1
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 597
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F

    move-result v0

    return v0
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"
    .parameter "isWvga"

    .prologue
    .line 609
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 610
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 612
    .local v1, height:I
    if-ge v11, v1, :cond_4

    .line 613
    move v9, v11

    .line 614
    .local v9, shortSize:I
    move v2, v1

    .line 619
    .local v2, longSize:I
    :goto_0
    const/high16 v12, 0x43a0

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 620
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 621
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 622
    const v0, 0x3fe3bbbc

    .line 625
    :cond_0
    if-eqz p2, :cond_1

    .line 626
    const v0, 0x3fd55555

    .line 629
    :cond_1
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 631
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_5

    .line 632
    move v6, v5

    .line 633
    .local v6, newWidth:I
    move v3, v4

    .line 639
    .local v3, newHeight:I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 640
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 641
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_6

    move v7, v10

    .line 642
    .local v7, scale:F
    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_2

    if-nez p2, :cond_2

    .line 643
    const/high16 v7, 0x3f80

    .line 646
    :cond_2
    if-eqz p1, :cond_3

    .line 647
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 648
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 651
    :cond_3
    return v7

    .line 616
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_4
    move v9, v1

    .line 617
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_0

    .line 635
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_5
    move v6, v4

    .line 636
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_1

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_6
    move v7, v8

    .line 641
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "inoutConfig"

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 589
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 590
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 591
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 593
    :cond_0
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x4320

    const/high16 v2, 0x3f00

    .line 550
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 553
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->requiresWvgaAspect()Z

    move-result v1

    invoke-static {p1, p1, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F

    .line 560
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 562
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 563
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 564
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 565
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 566
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 567
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 568
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 572
    .end local v0           #invertedRatio:F
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->needsSecondaryDpi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 574
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 575
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 579
    :cond_1
    return-void

    .line 556
    :cond_2
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 557
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 657
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 658
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 664
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 659
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 660
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 661
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 662
    const/4 v3, 0x1

    goto :goto_0

    .line 663
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 694
    const/16 v0, 0x11

    .line 695
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 696
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 697
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 698
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 699
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsSecondaryDpi()Z
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresWvgaAspect()Z
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 671
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 677
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 686
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 709
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 712
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 713
    return-void
.end method
