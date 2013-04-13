.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;,
        Landroid/media/MediaFile$AVTypeList;
    }
.end annotation


# static fields
.field private static AVTypeCount:I = 0x0

.field public static final FILE_TYPE_3GPA:I = 0xb

.field public static final FILE_TYPE_3GPP:I = 0x1a

.field public static final FILE_TYPE_3GPP2:I = 0x1b

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xc

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1d

.field public static final FILE_TYPE_AVI:I = 0x20

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x157

.field public static final FILE_TYPE_DCF:I = 0x36

.field public static final FILE_TYPE_DCI:I = 0x15a

.field public static final FILE_TYPE_DIVX:I = 0x24

.field public static final FILE_TYPE_DM:I = 0x35

.field public static final FILE_TYPE_DMB:I = 0xce

.field public static final FILE_TYPE_DTS:I = 0x12c

.field public static final FILE_TYPE_EC3:I = 0x12

.field public static final FILE_TYPE_FL:I = 0x34

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xca

.field public static final FILE_TYPE_GIF:I = 0x155

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x33

.field public static final FILE_TYPE_IMY:I = 0x20a

.field public static final FILE_TYPE_ISMA:I = 0x11

.field public static final FILE_TYPE_ISMV:I = 0x23

.field public static final FILE_TYPE_JPEG:I = 0x154

.field public static final FILE_TYPE_JPS:I = 0x15b

.field public static final FILE_TYPE_JTS:I = 0x20c

.field public static final FILE_TYPE_K3G:I = 0xcc

.field public static final FILE_TYPE_M3U:I = 0x30

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x19

.field public static final FILE_TYPE_MFI:I = 0x20d

.field public static final FILE_TYPE_MID:I = 0x208

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1e

.field public static final FILE_TYPE_MOV:I = 0xc9

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1f

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x18

.field public static final FILE_TYPE_MPO:I = 0x15c

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_O4A:I = 0x39

.field public static final FILE_TYPE_O4I:I = 0x3a

.field public static final FILE_TYPE_O4V:I = 0x38

.field public static final FILE_TYPE_ODF:I = 0x37

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OGM:I = 0xcb

.field public static final FILE_TYPE_PCM:I = 0xf

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x31

.field public static final FILE_TYPE_PNG:I = 0x156

.field public static final FILE_TYPE_PYA:I = 0x10

.field public static final FILE_TYPE_PYV:I = 0x22

.field public static final FILE_TYPE_QCP:I = 0xd

.field public static final FILE_TYPE_RMI:I = 0x20b

.field public static final FILE_TYPE_SKM:I = 0xcd

.field public static final FILE_TYPE_SMF:I = 0x209

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x158

.field public static final FILE_TYPE_WEBM:I = 0x21

.field public static final FILE_TYPE_WEBMA:I = 0xe

.field public static final FILE_TYPE_WEBP:I = 0x159

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x1c

.field public static final FILE_TYPE_WPL:I = 0x32

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE2:I = 0x12c

.field private static final FIRST_DRM_FILE_TYPE:I = 0x34

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x154

.field private static final FIRST_MIDI_FILE_TYPE:I = 0x208

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x30

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x18

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final FIRST_VIDEO_FILE_TYPE_LGE_TDMB:I = 0xce

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x12

.field private static final LAST_AUDIO_FILE_TYPE2:I = 0x12c

.field private static final LAST_DRM_FILE_TYPE:I = 0x3a

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x15c

#the value of this static final field might be set in the static constructor
.field private static final LAST_MIDI_FILE_TYPE:I = 0x0

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x33

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x24

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xce

.field private static TMP_LAST_MIDI_FILE_TYPE:I

.field private static midiSupportOperator:Z

.field private static final sAVTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaFile$AVTypeList;",
            ">;"
        }
    .end annotation
.end field

.field public static final sFileExtensions:Ljava/lang/String;

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const v14, 0xb902

    const/4 v13, 0x7

    const/16 v12, 0x300b

    const v11, 0xb984

    const/16 v10, 0x208

    .line 103
    const-string v6, "OPERATOR"

    const-string/jumbo v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 104
    const/16 v6, 0x20a

    sput v6, Landroid/media/MediaFile;->TMP_LAST_MIDI_FILE_TYPE:I

    .line 110
    :goto_0
    sget v6, Landroid/media/MediaFile;->TMP_LAST_MIDI_FILE_TYPE:I

    sput v6, Landroid/media/MediaFile;->LAST_MIDI_FILE_TYPE:I

    .line 186
    const/4 v6, 0x0

    sput v6, Landroid/media/MediaFile;->AVTypeCount:I

    .line 188
    const/4 v6, 0x0

    sput-boolean v6, Landroid/media/MediaFile;->midiSupportOperator:Z

    .line 202
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    .line 226
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 228
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 231
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 234
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 237
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 317
    const-string v6, "MP3"

    const/4 v7, 0x1

    const-string v8, "audio/mpeg"

    const/16 v9, 0x3009

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 318
    const-string v6, "M4A"

    const/4 v7, 0x2

    const-string v8, "audio/mp4"

    invoke-static {v6, v7, v8, v12}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 319
    const-string v6, "WAV"

    const/4 v7, 0x3

    const-string v8, "audio/x-wav"

    const/16 v9, 0x3008

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 323
    const-string v6, "WAV"

    const/16 v7, 0xf

    const-string v8, "audio/wav"

    const/16 v9, 0x3008

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 326
    const-string v6, "AMR"

    const/4 v7, 0x4

    const-string v8, "audio/amr"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    const-string v6, "AWB"

    const/4 v7, 0x5

    const-string v8, "audio/amr-wb"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    const-string v6, "DIVX"

    const/16 v7, 0x24

    const-string/jumbo v8, "video/divx"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Landroid/media/MediaFile;->isMPQTarget()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 330
    :cond_0
    const-string v6, "WMA"

    const/4 v7, 0x6

    const-string v8, "audio/x-ms-wma"

    const v9, 0xb901

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 332
    :cond_1
    const-string v6, "QCP"

    const/16 v7, 0xd

    const-string v8, "audio/qcelp"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v6, "OGG"

    const-string v7, "audio/ogg"

    invoke-static {v6, v13, v7, v14}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 334
    const-string v6, "OGG"

    const-string v7, "application/ogg"

    invoke-static {v6, v13, v7, v14}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 335
    const-string v6, "OGA"

    const-string v7, "audio/ogg"

    invoke-static {v6, v13, v7, v14}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 336
    const-string v6, "OGA"

    const-string v7, "application/ogg"

    invoke-static {v6, v13, v7, v14}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 337
    const-string v6, "WEBM"

    const/16 v7, 0xe

    const-string v8, "audio/webm"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    const-string v6, "AAC"

    const/16 v7, 0x8

    const-string v8, "audio/aac"

    const v9, 0xb903

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 339
    const-string v6, "AAC"

    const/16 v7, 0x8

    const-string v8, "audio/aac-adts"

    const v9, 0xb903

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 340
    const-string v6, "MKA"

    const/16 v7, 0x9

    const-string v8, "audio/x-matroska"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    const-string v6, "3GPP"

    const/16 v7, 0xb

    const-string v8, "audio/3gpp"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 343
    const-string v6, "3GA"

    const/16 v7, 0xb

    const-string v8, "audio/3gpp"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 346
    const-string v6, "ISMA"

    const/16 v7, 0x11

    const-string v8, "audio/mp4"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    const-string v6, "PYA"

    const/16 v7, 0x10

    const-string v8, "audio/vnd.ms-playready.media.pya"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    const-string v6, "MID"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    const-string v6, "MIDI"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    const-string v6, "XMF"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    const-string v6, "RTTTL"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    const-string v6, "SMF"

    const/16 v7, 0x209

    const-string v8, "audio/sp-midi"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    const-string v6, "IMY"

    const/16 v7, 0x20a

    const-string v8, "audio/imelody"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    const-string v6, "RTX"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    const-string v6, "OTA"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    const-string v6, "MXMF"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    const-string v6, "OPERATOR"

    const-string/jumbo v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 376
    :goto_1
    const-string v6, "SKM"

    const/16 v7, 0xcd

    const-string/jumbo v8, "video/skm"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    const-string v6, "K3G"

    const/16 v7, 0xcc

    const-string/jumbo v8, "video/k3g"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    const-string v6, "FLV"

    const/16 v7, 0xca

    const-string/jumbo v8, "video/flv"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    const-string v6, "F4V"

    const/16 v7, 0xca

    const-string/jumbo v8, "video/flv"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    const-string v6, "MOV"

    const/16 v7, 0xc9

    const-string/jumbo v8, "video/mov"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    const-string v6, "OGM"

    const/16 v7, 0xcb

    const-string/jumbo v8, "video/ogm"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    const-string v6, "MPEG"

    const/16 v7, 0x18

    const-string/jumbo v8, "video/mpeg"

    invoke-static {v6, v7, v8, v12}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 385
    const-string v6, "MPG"

    const/16 v7, 0x18

    const-string/jumbo v8, "video/mpeg"

    invoke-static {v6, v7, v8, v12}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 386
    const-string v6, "MP4"

    const/16 v7, 0x18

    const-string/jumbo v8, "video/mp4"

    invoke-static {v6, v7, v8, v12}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 387
    const-string v6, "M4V"

    const/16 v7, 0x19

    const-string/jumbo v8, "video/mp4"

    invoke-static {v6, v7, v8, v12}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 388
    const-string v6, "3GP"

    const/16 v7, 0x1a

    const-string/jumbo v8, "video/3gpp"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 389
    const-string v6, "3GPP"

    const/16 v7, 0x1a

    const-string/jumbo v8, "video/3gpp"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 390
    const-string v6, "3G2"

    const/16 v7, 0x1b

    const-string/jumbo v8, "video/3gpp2"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 391
    const-string v6, "3GPP2"

    const/16 v7, 0x1b

    const-string/jumbo v8, "video/3gpp2"

    invoke-static {v6, v7, v8, v11}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 392
    const-string v6, "MKV"

    const/16 v7, 0x1e

    const-string/jumbo v8, "video/x-matroska"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    const-string v6, "WEBM"

    const/16 v7, 0x21

    const-string/jumbo v8, "video/webm"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    const-string v6, "TS"

    const/16 v7, 0x1f

    const-string/jumbo v8, "video/mp2ts"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    const-string v6, "MPG"

    const/16 v7, 0x1f

    const-string/jumbo v8, "video/mp2ts"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    const-string v6, "AVI"

    const/16 v7, 0x20

    const-string/jumbo v8, "video/avi"

    const/16 v9, 0x300a

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 402
    const-string v6, "ISMV"

    const/16 v7, 0x23

    const-string/jumbo v8, "video/mp4"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    const-string v6, "PYV"

    const/16 v7, 0x22

    const-string/jumbo v8, "video/vnd.ms-playready.media.pyv"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    const-string v6, "MOV"

    const/16 v7, 0xc9

    const-string/jumbo v8, "video/quicktime"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    const-string v6, "QT"

    const/16 v7, 0xc9

    const-string/jumbo v8, "video/quicktime"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 411
    const-string v6, "WMV"

    const/16 v7, 0x1c

    const-string/jumbo v8, "video/x-ms-wmv"

    const v9, 0xb981

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 415
    const-string v6, "ASF"

    const/16 v7, 0x1d

    const-string/jumbo v8, "video/x-ms-asf"

    const/16 v9, 0x300c

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 418
    :cond_2
    const-string v6, "DMB"

    const/16 v7, 0xce

    const-string/jumbo v8, "video/dmb"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    const-string v6, "JPG"

    const/16 v7, 0x154

    const-string v8, "image/jpeg"

    const/16 v9, 0x3801

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 421
    const-string v6, "JPEG"

    const/16 v7, 0x154

    const-string v8, "image/jpeg"

    const/16 v9, 0x3801

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 422
    const-string v6, "GIF"

    const/16 v7, 0x155

    const-string v8, "image/gif"

    const/16 v9, 0x3807

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 423
    const-string v6, "PNG"

    const/16 v7, 0x156

    const-string v8, "image/png"

    const/16 v9, 0x380b

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 424
    const-string v6, "BMP"

    const/16 v7, 0x157

    const-string v8, "image/x-ms-bmp"

    const/16 v9, 0x3804

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 425
    const-string v6, "WBMP"

    const/16 v7, 0x158

    const-string v8, "image/vnd.wap.wbmp"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    const-string v6, "WEBP"

    const/16 v7, 0x159

    const-string v8, "image/webp"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    const-string v6, "DCI"

    const/16 v7, 0x15a

    const-string v8, "image/dci"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    const-string v6, "JPS"

    const/16 v7, 0x15b

    const-string v8, "image/jps"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    const-string v6, "MPO"

    const/16 v7, 0x15c

    const-string v8, "image/mpo"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    const-string v6, "M3U"

    const/16 v7, 0x30

    const-string v8, "audio/x-mpegurl"

    const v9, 0xba11

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 433
    const-string v6, "M3U"

    const/16 v7, 0x30

    const-string v8, "application/x-mpegurl"

    const v9, 0xba11

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 434
    const-string v6, "PLS"

    const/16 v7, 0x31

    const-string v8, "audio/x-scpls"

    const v9, 0xba14

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 435
    const-string v6, "WPL"

    const/16 v7, 0x32

    const-string v8, "application/vnd.ms-wpl"

    const v9, 0xba10

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 436
    const-string v6, "M3U8"

    const/16 v7, 0x33

    const-string v8, "application/vnd.apple.mpegurl"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    const-string v6, "M3U8"

    const/16 v7, 0x33

    const-string v8, "audio/mpegurl"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    const-string v6, "M3U8"

    const/16 v7, 0x33

    const-string v8, "audio/x-mpegurl"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    const-string v6, "FL"

    const/16 v7, 0x34

    const-string v8, "application/x-android-drm-fl"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v6, :cond_3

    .line 443
    const-string v6, "DM"

    const/16 v7, 0x35

    const-string v8, "application/vnd.oma.drm.message"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    const-string v6, "DCF"

    const/16 v7, 0x36

    const-string v8, "application/vnd.oma.drm.content"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    const-string v6, "ODF"

    const/16 v7, 0x37

    const-string v8, "application/vnd.oma.drm.dcf"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    const-string v6, "O4A"

    const/16 v7, 0x39

    const-string v8, "application/vnd.oma.drm.dcf"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 448
    const-string v6, "O4V"

    const/16 v7, 0x38

    const-string v8, "application/vnd.oma.drm.dcf"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 449
    const-string v6, "O4I"

    const/16 v7, 0x3a

    const-string v8, "application/vnd.oma.drm.dcf"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    :cond_3
    const-string v6, "TXT"

    const/16 v7, 0x64

    const-string/jumbo v8, "text/plain"

    const/16 v9, 0x3004

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 454
    const-string v6, "HTM"

    const/16 v7, 0x65

    const-string/jumbo v8, "text/html"

    const/16 v9, 0x3005

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 455
    const-string v6, "HTML"

    const/16 v7, 0x65

    const-string/jumbo v8, "text/html"

    const/16 v9, 0x3005

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 456
    const-string v6, "PDF"

    const/16 v7, 0x66

    const-string v8, "application/pdf"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    const-string v6, "DOC"

    const/16 v7, 0x68

    const-string v8, "application/msword"

    const v9, 0xba83

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 458
    const-string v6, "XLS"

    const/16 v7, 0x69

    const-string v8, "application/vnd.ms-excel"

    const v9, 0xba85

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 459
    const-string v6, "PPT"

    const/16 v7, 0x6a

    const-string v8, "application/mspowerpoint"

    const v9, 0xba86

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 460
    const-string v6, "FLAC"

    const/16 v7, 0xa

    const-string v8, "audio/flac"

    const v9, 0xb906

    invoke-static {v6, v7, v8, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 461
    const-string v6, "ZIP"

    const/16 v7, 0x6b

    const-string v8, "application/zip"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    const-string v6, "MPG"

    const/16 v7, 0xc8

    const-string/jumbo v8, "video/mp2p"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    const-string v6, "MPEG"

    const/16 v7, 0xc8

    const-string/jumbo v8, "video/mp2p"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    const-string/jumbo v6, "true"

    const-string v7, "ac3.decode"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Landroid/media/MediaFile;->isMPQTarget()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 465
    :cond_4
    const-string v6, "AC3"

    const/16 v7, 0xc

    const-string v8, "audio/ac3"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 466
    const-string v6, "EC3"

    const/16 v7, 0x12

    const-string v8, "audio/eac3"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 468
    :cond_5
    invoke-static {}, Landroid/media/MediaFile;->isMPQTarget()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 469
    const-string v6, "DTS"

    const/16 v7, 0x12c

    const-string v8, "audio/dts"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    const-string v6, "DTSHD"

    const/16 v7, 0x12c

    const-string v8, "audio/dts"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    const-string v6, "CPT"

    const/16 v7, 0x12c

    const-string v8, "audio/dts"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 475
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v1, builder:Ljava/lang/StringBuilder;
    sget-object v6, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 478
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 479
    .local v5, tmpFileType:I
    const/4 v0, 0x0

    .line 481
    .local v0, bSkip:Z
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 483
    if-nez v0, :cond_7

    .line 484
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, tmpExtension:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 491
    sget-object v6, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFile$MediaFileType;

    .line 492
    .local v3, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_8

    .line 494
    iget v5, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 500
    .end local v3           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_8
    const/16 v6, 0x64

    if-lt v5, v6, :cond_9

    const/16 v6, 0x6b

    if-le v5, v6, :cond_c

    .line 501
    :cond_9
    const/4 v0, 0x0

    .line 503
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 107
    .end local v0           #bSkip:Z
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #tmpExtension:Ljava/lang/String;
    .end local v5           #tmpFileType:I
    :cond_a
    const/16 v6, 0x20d

    sput v6, Landroid/media/MediaFile;->TMP_LAST_MIDI_FILE_TYPE:I

    goto/16 :goto_0

    .line 364
    :cond_b
    const-string v6, "IME"

    const/16 v7, 0x20a

    const-string v8, "audio/imelody"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    const-string v6, "JTS"

    const/16 v7, 0x20c

    const-string v8, "audio/x-tone-seq"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    const-string v6, "KAR"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    const-string v6, "MLD"

    const/16 v7, 0x20d

    const-string v8, "application/x-mfi"

    invoke-static {v6, v7, v8}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    const-string v6, "MXMF"

    const-string v7, "audio/mobile-xmf"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    const-string v6, "OTT"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    const-string v6, "RMI"

    const-string v7, "audio/midi"

    invoke-static {v6, v10, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 506
    .restart local v0       #bSkip:Z
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4       #tmpExtension:Ljava/lang/String;
    .restart local v5       #tmpFileType:I
    :cond_c
    const/4 v0, 0x1

    goto :goto_2

    .line 510
    .end local v4           #tmpExtension:Ljava/lang/String;
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 241
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    sget-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Landroid/media/MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Landroid/media/MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "mtpFormatCode"

    .prologue
    .line 251
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    sget-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    sget-object v0, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    sget v1, Landroid/media/MediaFile;->AVTypeCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/media/MediaFile;->AVTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFile$AVTypeList;

    invoke-direct {v2, p1, p2, p0}, Landroid/media/MediaFile$AVTypeList;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 645
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 646
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 647
    add-int/lit8 v1, v1, 0x1

    .line 648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 653
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 654
    .local v0, lastDot:I
    if-lez v0, :cond_1

    .line 655
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 657
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 552
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 554
    const/4 v1, 0x0

    .line 555
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 661
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 662
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getFileTypeFromDrm(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 560
    sget-boolean v8, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-nez v8, :cond_1

    move-object v6, v7

    .line 632
    :cond_0
    :goto_0
    return-object v6

    .line 563
    :cond_1
    invoke-static {v10, p0, v7}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v6, v7

    .line 564
    goto :goto_0

    .line 567
    :cond_2
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 568
    .local v4, lastDot:I
    if-gez v4, :cond_3

    move-object v6, v7

    .line 569
    goto :goto_0

    .line 571
    :cond_3
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFile$MediaFileType;

    .line 572
    .local v5, mediaType:Landroid/media/MediaFile$MediaFileType;
    if-nez v5, :cond_4

    move-object v6, v7

    .line 573
    goto :goto_0

    .line 575
    :cond_4
    iget v8, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x35

    if-lt v8, v9, :cond_5

    iget v8, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v9, 0x3a

    if-le v8, v9, :cond_6

    :cond_5
    move-object v6, v7

    .line 576
    goto :goto_0

    .line 578
    :cond_6
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    move-object v6, v7

    .line 579
    goto :goto_0

    .line 584
    :cond_7
    :try_start_0
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    .line 586
    .local v1, contentType:I
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, extension:Ljava/lang/String;
    if-eqz v2, :cond_8

    if-eq v1, v12, :cond_9

    if-eq v1, v10, :cond_9

    if-eq v1, v11, :cond_9

    :cond_8
    move-object v6, v7

    .line 594
    goto :goto_0

    .line 596
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 598
    sget-object v8, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaFile$MediaFileType;

    .line 599
    .local v6, orgMediaType:Landroid/media/MediaFile$MediaFileType;
    if-nez v6, :cond_a

    move-object v6, v7

    .line 600
    goto :goto_0

    .line 604
    :cond_a
    if-eq v1, v12, :cond_0

    .line 607
    if-ne v1, v10, :cond_b

    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_b
    if-ne v1, v11, :cond_c

    iget v8, v6, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 614
    :cond_c
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 615
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 617
    .local v0, avType:Landroid/media/MediaFile$AVTypeList;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 618
    sget-object v8, Landroid/media/MediaFile;->sAVTypeMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #avType:Landroid/media/MediaFile$AVTypeList;
    check-cast v0, Landroid/media/MediaFile$AVTypeList;

    .line 619
    .restart local v0       #avType:Landroid/media/MediaFile$AVTypeList;
    iget-object v8, v0, Landroid/media/MediaFile$AVTypeList;->extension:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 620
    if-ne v1, v10, :cond_f

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 621
    new-instance v6, Landroid/media/MediaFile$MediaFileType;

    .end local v6           #orgMediaType:Landroid/media/MediaFile$MediaFileType;
    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v9, v0, Landroid/media/MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 628
    .end local v0           #avType:Landroid/media/MediaFile$AVTypeList;
    .end local v1           #contentType:I
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v8

    :cond_e
    move-object v6, v7

    .line 632
    goto/16 :goto_0

    .line 622
    .restart local v0       #avType:Landroid/media/MediaFile$AVTypeList;
    .restart local v1       #contentType:I
    .restart local v2       #extension:Ljava/lang/String;
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v6       #orgMediaType:Landroid/media/MediaFile$MediaFileType;
    :cond_f
    if-ne v1, v11, :cond_d

    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 623
    new-instance v6, Landroid/media/MediaFile$MediaFileType;

    .end local v6           #orgMediaType:Landroid/media/MediaFile$MediaFileType;
    iget v8, v0, Landroid/media/MediaFile$AVTypeList;->fileType:I

    iget-object v9, v0, Landroid/media/MediaFile$AVTypeList;->mimeType:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public static getFileTypeMediaHash()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 671
    if-eqz p1, :cond_0

    .line 672
    sget-object v3, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 673
    .local v2, value:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 685
    .end local v2           #value:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 677
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 678
    .local v1, lastDot:I
    if-lez v1, :cond_1

    .line 679
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, extension:Ljava/lang/String;
    sget-object v3, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 681
    .restart local v2       #value:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 682
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 685
    .end local v0           #extension:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Integer;
    :cond_1
    const/16 v3, 0x3000

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 666
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    .line 667
    .local v0, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2
    .parameter "formatCode"

    .prologue
    .line 689
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 3
    .parameter "fileType"

    .prologue
    const/16 v2, 0x12c

    const/4 v0, 0x1

    .line 515
    if-lt p0, v0, :cond_0

    const/16 v1, 0x12

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x208

    if-lt p0, v1, :cond_1

    sget v1, Landroid/media/MediaFile;->LAST_MIDI_FILE_TYPE:I

    if-le p0, v1, :cond_2

    :cond_1
    if-lt p0, v2, :cond_3

    if-gt p0, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 541
    const/16 v0, 0x34

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 531
    const/16 v0, 0x154

    if-lt p0, v0, :cond_0

    const/16 v0, 0x15c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMPQTarget()Z
    .locals 9

    .prologue
    .line 287
    const/4 v5, 0x0

    .line 290
    .local v5, soc_id:I
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/devices/system/soc/soc0/id"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, socFile:Ljava/io/File;
    if-eqz v4, :cond_1

    .line 292
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 293
    .local v2, inputSocFile:Ljava/io/FileReader;
    if-eqz v2, :cond_1

    .line 294
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 295
    .local v3, socBufferReader:Ljava/io/BufferedReader;
    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, file_info_id:Ljava/lang/String;
    const-string v6, "MediaFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 299
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 301
    .end local v1           #file_info_id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v2           #inputSocFile:Ljava/io/FileReader;
    .end local v3           #socBufferReader:Ljava/io/BufferedReader;
    .end local v4           #socFile:Ljava/io/File;
    :cond_1
    :goto_0
    const-string v6, "MediaFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "integer id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v6, 0x82

    if-ne v5, v6, :cond_2

    .line 309
    const-string v6, "MediaFile"

    const-string v7, "MPQ Audio Decode true"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v6, 0x1

    .line 313
    :goto_1
    return v6

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "MediaFile"

    const-string v7, "Exception in FileReader"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "MediaFile"

    const-string v7, "MPQ Audio Decode false"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 637
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 638
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 536
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x33

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTDMBFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0xce

    .line 546
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 524
    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    const/16 v0, 0xce

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWMAEnabled()Z
    .locals 5

    .prologue
    .line 263
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 266
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 267
    .local v1, decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v1, v4, :cond_0

    .line 268
    const/4 v4, 0x1

    .line 271
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :goto_1
    return v4

    .line 265
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$AudioDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isWMVEnabled()Z
    .locals 5

    .prologue
    .line 275
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, decoders:Ljava/util/List;,"Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 277
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 278
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 279
    .local v1, decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    sget-object v4, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v1, v4, :cond_0

    .line 280
    const/4 v4, 0x1

    .line 283
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :goto_1
    return v4

    .line 277
    .restart local v1       #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v1           #decoder:Landroid/media/DecoderCapabilities$VideoDecoder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
