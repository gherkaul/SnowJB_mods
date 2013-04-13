.class Landroid/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static DBG:Z

.field private static DDD_3_Number:[S

.field private static DDD_5_Number:[S

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    .line 24
    const-string v0, "LGKoreanPhoneNumberFormatter"

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    .line 33
    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    return-void

    .line 26
    :array_0
    .array-data 0x2
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x46t 0x0t
        0x50t 0x0t
    .end array-data

    .line 33
    nop

    :array_1
    .array-data 0x2
        0x2ct 0x1t
        0x41t 0x1t
        0x55t 0x1t
        0x58t 0x1t
        0x59t 0x1t
        0x6dt 0x1t
        0xbct 0x2t
        0xd7t 0x2t
        0xf3t 0x2t
        0xct 0x3t
        0xfet 0x2t
        0x13t 0x3t
        0x84t 0x1t
        0x2t 0x3t
        0x9t 0x3t
        0xf1t 0x2t
        0xc3t 0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 11
    .parameter "text"

    .prologue
    .line 40
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_0

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "format input = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    const/4 v5, 0x0

    .line 44
    .local v5, tmp1stHyphen:I
    const/4 v6, 0x0

    .line 46
    .local v6, tmp2ndHyphen:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 48
    .local v3, length:I
    const/4 v4, 0x0

    .line 49
    .local v4, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 50
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1

    .line 51
    add-int/lit8 v8, v4, 0x1

    invoke-interface {p0, v4, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_6

    .line 61
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_3

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x39

    if-le v8, v9, :cond_5

    :cond_3
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_5

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-eq v8, v9, :cond_5

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x57

    if-eq v8, v9, :cond_5

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x50

    if-eq v8, v9, :cond_5

    .line 210
    :cond_4
    :goto_2
    return-void

    .line 60
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_6
    const/4 v8, 0x2

    if-lt v3, v8, :cond_4

    .line 78
    const-string v8, "*"

    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "#"

    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 81
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_7

    .line 82
    const/4 v5, 0x2

    .line 85
    :cond_7
    const/4 v8, 0x3

    if-lt v3, v8, :cond_8

    .line 86
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x32

    if-ne v8, v9, :cond_8

    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_8

    .line 87
    const/4 v5, 0x3

    .line 92
    :cond_8
    const/4 v8, 0x4

    if-lt v3, v8, :cond_9

    .line 94
    const-string v8, "KR"

    const-string v9, "KT"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 95
    const/4 v8, 0x4

    if-ne v3, v8, :cond_11

    .line 96
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 98
    .local v7, tmpDDDNumber:I
    const/16 v8, 0x7d4

    if-ne v7, v8, :cond_9

    .line 99
    const/4 v5, 0x0

    .line 120
    .end local v7           #tmpDDDNumber:I
    :cond_9
    const/4 v8, 0x4

    if-ne v3, v8, :cond_c

    .line 121
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 122
    .restart local v7       #tmpDDDNumber:I
    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_a

    const/16 v8, 0x1fd

    if-le v7, v8, :cond_b

    :cond_a
    const/16 v8, 0x82

    if-ne v7, v8, :cond_c

    .line 123
    :cond_b
    const/4 v5, 0x0

    .line 126
    .end local v7           #tmpDDDNumber:I
    :cond_c
    const/4 v8, 0x4

    if-le v3, v8, :cond_f

    .line 127
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 128
    .restart local v7       #tmpDDDNumber:I
    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_d

    const/16 v8, 0x1fd

    if-le v7, v8, :cond_e

    :cond_d
    const/16 v8, 0x82

    if-ne v7, v8, :cond_f

    .line 129
    :cond_e
    const/4 v5, 0x4

    .line 132
    .end local v7           #tmpDDDNumber:I
    :cond_f
    const/4 v8, 0x6

    if-lt v3, v8, :cond_15

    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_15

    .line 133
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit16 v8, v8, 0x2710

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x4

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 134
    .restart local v7       #tmpDDDNumber:I
    const/4 v0, 0x0

    :goto_3
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    array-length v8, v8

    if-ge v0, v8, :cond_15

    .line 135
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    aget-short v8, v8, v0

    if-ne v7, v8, :cond_10

    .line 136
    const/4 v5, 0x5

    .line 134
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 103
    .end local v7           #tmpDDDNumber:I
    :cond_11
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v8, v8, 0x64

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 104
    .restart local v7       #tmpDDDNumber:I
    const/4 v0, 0x0

    :goto_4
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v8, v8

    if-ge v0, v8, :cond_9

    .line 105
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v8, v8, v0

    if-ne v7, v8, :cond_12

    .line 106
    const/4 v5, 0x3

    .line 104
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 111
    .end local v7           #tmpDDDNumber:I
    :cond_13
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v8, v8, 0x64

    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    const/4 v9, 0x2

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int v7, v8, v9

    .line 112
    .restart local v7       #tmpDDDNumber:I
    const/4 v0, 0x0

    :goto_5
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    array-length v8, v8

    if-ge v0, v8, :cond_9

    .line 113
    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    aget-short v8, v8, v0

    if-ne v7, v8, :cond_14

    .line 114
    const/4 v5, 0x3

    .line 112
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 140
    .end local v7           #tmpDDDNumber:I
    :cond_15
    const/4 v1, 0x0

    .line 142
    .local v1, j:I
    if-lez v5, :cond_21

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v0, v3, :cond_17

    .line 144
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x50

    if-eq v8, v9, :cond_16

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x57

    if-ne v8, v9, :cond_1b

    .line 145
    :cond_16
    move v1, v0

    .line 149
    :cond_17
    if-eqz v1, :cond_1c

    .line 150
    move v6, v1

    .line 191
    :cond_18
    :goto_7
    const/4 v2, 0x0

    .local v2, k:I
    :goto_8
    if-ge v2, v3, :cond_27

    .line 192
    if-ne v2, v5, :cond_19

    if-eqz v2, :cond_19

    .line 193
    const-string v8, "-"

    invoke-interface {p0, v2, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 195
    :cond_19
    const/4 v8, 0x4

    if-le v6, v8, :cond_26

    .line 196
    add-int/lit8 v8, v2, 0x1

    if-ne v8, v6, :cond_1a

    if-eqz v2, :cond_1a

    .line 197
    add-int/lit8 v8, v2, 0x1

    const-string v9, "-"

    invoke-interface {p0, v8, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 191
    :cond_1a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 143
    .end local v2           #k:I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 153
    :cond_1c
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_1d

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tmp1stHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1d
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x1

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x2

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_1e

    .line 157
    add-int/lit8 v6, v5, 0x5

    .line 158
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_18

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case 1 tmp2ndHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 160
    :cond_1e
    add-int/lit8 v8, v5, 0x8

    if-lt v3, v8, :cond_1f

    add-int/lit8 v8, v3, -0x1

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_1f

    .line 161
    add-int/lit8 v6, v5, 0x4

    .line 162
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_18

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case 2 tmp2ndHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 164
    :cond_1f
    add-int/lit8 v8, v5, 0x8

    if-lt v3, v8, :cond_20

    .line 165
    add-int/lit8 v6, v5, 0x5

    .line 166
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_18

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case 3 tmp2ndHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 168
    :cond_20
    add-int/lit8 v6, v5, 0x4

    .line 169
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_18

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case 43 tmp2ndHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 175
    :cond_21
    const/4 v5, 0x0

    .line 176
    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_22

    const/4 v8, 0x0

    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_23

    .line 177
    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 179
    :cond_23
    const/16 v8, 0x8

    if-lt v3, v8, :cond_25

    .line 180
    const/4 v6, 0x4

    .line 184
    :goto_a
    const/4 v8, 0x4

    if-ne v3, v8, :cond_18

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-interface {p0, v8, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "050"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-interface {p0, v8, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0130"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 185
    :cond_24
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 182
    :cond_25
    const/4 v6, 0x3

    goto :goto_a

    .line 200
    .restart local v2       #k:I
    :cond_26
    if-ne v2, v6, :cond_1a

    if-eqz v2, :cond_1a

    .line 201
    const-string v8, "-"

    invoke-interface {p0, v2, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_9

    .line 206
    :cond_27
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_28

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result tmp1stHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_28
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_29

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "result tmp2ndHyphen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_29
    sget-boolean v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DBG:Z

    if-eqz v8, :cond_4

    sget-object v8, Landroid/telephony/LGKoreanPhoneNumberFormatter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "format output = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
