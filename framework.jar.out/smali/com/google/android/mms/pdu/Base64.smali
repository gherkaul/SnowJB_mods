.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 61
    const/16 v2, 0x40

    new-array v2, v2, [B

    sput-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    .line 64
    new-array v2, v8, [B

    sput-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 69
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 72
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 71
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 74
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 75
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 77
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 78
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 81
    :cond_3
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 82
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 85
    sget-object v2, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v3, "KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 87
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 90
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 91
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 94
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 95
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 98
    :cond_6
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aput-byte v4, v2, v6

    .line 99
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aput-byte v5, v2, v7

    .line 102
    .end local v1           #j:I
    :cond_7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .parameter "base64Data"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 115
    array-length v12, p0

    if-nez v12, :cond_1

    .line 116
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 169
    :cond_0
    :goto_0
    return-object v5

    .line 119
    :cond_1
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 120
    .local v11, numberQuadruple:I
    const/4 v5, 0x0

    .line 121
    .local v5, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v9, 0x0

    .local v9, marker0:B
    const/4 v10, 0x0

    .line 125
    .local v10, marker1:B
    const/4 v6, 0x0

    .line 126
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 129
    .local v4, dataIndex:I
    array-length v8, p0

    .line 131
    .local v8, lastData:I
    :cond_2
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_3

    .line 132
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_2

    .line 133
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_0

    .line 136
    :cond_3
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 139
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 140
    mul-int/lit8 v4, v7, 0x4

    .line 141
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 142
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 144
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 145
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 147
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_5

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_5

    .line 149
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 150
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v3, v12, v10

    .line 152
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 153
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 155
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 167
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 156
    :cond_5
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_6

    .line 158
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_2

    .line 159
    :cond_6
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_4

    .line 161
    sget-object v12, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v2, v12, v9

    .line 163
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 164
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_2
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 198
    array-length v5, p0

    new-array v2, v5, [B

    .line 199
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 201
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 202
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 201
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_1
    new-array v4, v0, [B

    .line 209
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return-object v4
.end method

.method public static encodeBase64([B)[B
    .locals 21
    .parameter "binaryData"

    .prologue
    .line 224
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    mul-int/lit8 v12, v18, 0x8

    .line 225
    .local v12, lengthDataBits:I
    rem-int/lit8 v8, v12, 0x18

    .line 226
    .local v8, fewerThan24bits:I
    div-int/lit8 v14, v12, 0x18

    .line 227
    .local v14, numberTriplets:I
    const/4 v5, 0x0

    .line 228
    .local v5, encodedData:[B
    const/4 v6, 0x0

    .line 229
    .local v6, encodedDataLength:I
    const/4 v13, 0x0

    .line 231
    .local v13, nbrChunks:I
    if-eqz v8, :cond_0

    .line 233
    add-int/lit8 v18, v14, 0x1

    mul-int/lit8 v6, v18, 0x4

    .line 239
    :goto_0
    new-array v5, v6, [B

    .line 241
    const/4 v10, 0x0

    .local v10, k:B
    const/4 v11, 0x0

    .local v11, l:B
    const/4 v1, 0x0

    .local v1, b1:B
    const/4 v2, 0x0

    .local v2, b2:B
    const/4 v3, 0x0

    .line 243
    .local v3, b3:B
    const/4 v7, 0x0

    .line 244
    .local v7, encodedIndex:I
    const/4 v4, 0x0

    .line 245
    .local v4, dataIndex:I
    const/4 v9, 0x0

    .line 248
    .local v9, i:I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_4

    .line 249
    mul-int/lit8 v4, v9, 0x3

    .line 250
    aget-byte v1, p0, v4

    .line 251
    add-int/lit8 v18, v4, 0x1

    aget-byte v2, p0, v18

    .line 252
    add-int/lit8 v18, v4, 0x2

    aget-byte v3, p0, v18

    .line 256
    and-int/lit8 v18, v2, 0xf

    move/from16 v0, v18

    int-to-byte v11, v0

    .line 257
    and-int/lit8 v18, v1, 0x3

    move/from16 v0, v18

    int-to-byte v10, v0

    .line 259
    and-int/lit8 v18, v1, -0x80

    if-nez v18, :cond_1

    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    int-to-byte v15, v0

    .line 261
    .local v15, val1:B
    :goto_2
    and-int/lit8 v18, v2, -0x80

    if-nez v18, :cond_2

    shr-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 263
    .local v16, val2:B
    :goto_3
    and-int/lit8 v18, v3, -0x80

    if-nez v18, :cond_3

    shr-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v17, v0

    .line 266
    .local v17, val3:B
    :goto_4
    sget-object v18, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aget-byte v18, v18, v15

    aput-byte v18, v5, v7

    .line 270
    add-int/lit8 v18, v7, 0x1

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v20, v10, 0x4

    or-int v20, v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 272
    add-int/lit8 v18, v7, 0x2

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v20, v11, 0x2

    or-int v20, v20, v17

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 274
    add-int/lit8 v18, v7, 0x3

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    and-int/lit8 v20, v3, 0x3f

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 276
    add-int/lit8 v7, v7, 0x4

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 236
    .end local v1           #b1:B
    .end local v2           #b2:B
    .end local v3           #b3:B
    .end local v4           #dataIndex:I
    .end local v7           #encodedIndex:I
    .end local v9           #i:I
    .end local v10           #k:B
    .end local v11           #l:B
    .end local v15           #val1:B
    .end local v16           #val2:B
    .end local v17           #val3:B
    :cond_0
    mul-int/lit8 v6, v14, 0x4

    goto :goto_0

    .line 259
    .restart local v1       #b1:B
    .restart local v2       #b2:B
    .restart local v3       #b3:B
    .restart local v4       #dataIndex:I
    .restart local v7       #encodedIndex:I
    .restart local v9       #i:I
    .restart local v10       #k:B
    .restart local v11       #l:B
    :cond_1
    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v15, v0

    goto :goto_2

    .line 261
    .restart local v15       #val1:B
    :cond_2
    shr-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_3

    .line 263
    .restart local v16       #val2:B
    :cond_3
    shr-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v17, v0

    goto :goto_4

    .line 280
    .end local v15           #val1:B
    .end local v16           #val2:B
    :cond_4
    mul-int/lit8 v4, v9, 0x3

    .line 282
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v8, v0, :cond_7

    .line 283
    aget-byte v1, p0, v4

    .line 284
    and-int/lit8 v18, v1, 0x3

    move/from16 v0, v18

    int-to-byte v10, v0

    .line 287
    and-int/lit8 v18, v1, -0x80

    if-nez v18, :cond_6

    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    int-to-byte v15, v0

    .line 289
    .restart local v15       #val1:B
    :goto_5
    sget-object v18, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aget-byte v18, v18, v15

    aput-byte v18, v5, v7

    .line 290
    add-int/lit8 v18, v7, 0x1

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v20, v10, 0x4

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 291
    add-int/lit8 v18, v7, 0x2

    const/16 v19, 0x3d

    aput-byte v19, v5, v18

    .line 292
    add-int/lit8 v18, v7, 0x3

    const/16 v19, 0x3d

    aput-byte v19, v5, v18

    .line 312
    .end local v15           #val1:B
    :cond_5
    :goto_6
    return-object v5

    .line 287
    :cond_6
    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v15, v0

    goto :goto_5

    .line 293
    :cond_7
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 295
    aget-byte v1, p0, v4

    .line 296
    add-int/lit8 v18, v4, 0x1

    aget-byte v2, p0, v18

    .line 297
    and-int/lit8 v18, v2, 0xf

    move/from16 v0, v18

    int-to-byte v11, v0

    .line 298
    and-int/lit8 v18, v1, 0x3

    move/from16 v0, v18

    int-to-byte v10, v0

    .line 300
    and-int/lit8 v18, v1, -0x80

    if-nez v18, :cond_8

    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    int-to-byte v15, v0

    .line 302
    .restart local v15       #val1:B
    :goto_7
    and-int/lit8 v18, v2, -0x80

    if-nez v18, :cond_9

    shr-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 305
    .restart local v16       #val2:B
    :goto_8
    sget-object v18, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    aget-byte v18, v18, v15

    aput-byte v18, v5, v7

    .line 306
    add-int/lit8 v18, v7, 0x1

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v20, v10, 0x4

    or-int v20, v20, v16

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 308
    add-int/lit8 v18, v7, 0x2

    sget-object v19, Lcom/google/android/mms/pdu/Base64;->lookUpBase64Alphabet:[B

    shl-int/lit8 v20, v11, 0x2

    aget-byte v19, v19, v20

    aput-byte v19, v5, v18

    .line 309
    add-int/lit8 v18, v7, 0x3

    const/16 v19, 0x3d

    aput-byte v19, v5, v18

    goto :goto_6

    .line 300
    .end local v15           #val1:B
    .end local v16           #val2:B
    :cond_8
    shr-int/lit8 v18, v1, 0x2

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v15, v0

    goto :goto_7

    .line 302
    .restart local v15       #val1:B
    :cond_9
    shr-int/lit8 v18, v2, 0x4

    move/from16 v0, v18

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v16, v0

    goto :goto_8
.end method

.method private static isBase64(B)Z
    .locals 3
    .parameter "octect"

    .prologue
    const/4 v0, 0x1

    .line 179
    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v1, v1, p0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method
