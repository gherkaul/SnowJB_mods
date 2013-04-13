.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 32
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 36
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 41
    :pswitch_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 45
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 46
    :goto_1
    return v0

    .line 37
    .end local v0           #result:I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 39
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 40
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 45
    .restart local v0       #result:I
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 24
    .parameter "dir"
    .parameter "levels"
    .parameter "lstart"
    .parameter "chars"
    .parameter "cstart"
    .parameter "len"

    .prologue
    .line 64
    const/16 v22, 0x1

    move/from16 v0, p0

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 65
    .local v2, baseLevel:I
    :goto_0
    aget-byte v4, p1, p2

    .line 66
    .local v4, curLevel:I
    move v14, v4

    .line 67
    .local v14, minLevel:I
    const/16 v18, 0x1

    .line 71
    .local v18, runCount:I
    add-int/lit8 v8, p2, 0x1

    .local v8, i:I
    add-int v5, p2, p5

    .local v5, e:I
    :goto_1
    if-ge v8, v5, :cond_2

    .line 72
    :try_start_0
    aget-byte v10, p1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v10, level:I
    if-eq v10, v4, :cond_0

    .line 74
    move v4, v10

    .line 75
    add-int/lit8 v18, v18, 0x1

    .line 71
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 64
    .end local v2           #baseLevel:I
    .end local v4           #curLevel:I
    .end local v5           #e:I
    .end local v8           #i:I
    .end local v10           #level:I
    .end local v14           #minLevel:I
    .end local v18           #runCount:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    .restart local v2       #baseLevel:I
    .restart local v4       #curLevel:I
    .restart local v5       #e:I
    .restart local v8       #i:I
    .restart local v14       #minLevel:I
    .restart local v18       #runCount:I
    :catch_0
    move-exception v6

    .line 79
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_2
    move/from16 v20, p5

    .line 85
    .local v20, visLen:I
    and-int/lit8 v22, v4, 0x1

    and-int/lit8 v23, v2, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 87
    :cond_3
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_4

    .line 88
    add-int v22, p4, v20

    aget-char v3, p3, v22

    .line 90
    .local v3, ch:C
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v3, v0, :cond_6

    .line 91
    add-int/lit8 v20, v20, -0x1

    .line 99
    .end local v3           #ch:C
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    .line 100
    move/from16 v0, v20

    move/from16 v1, p5

    if-eq v0, v1, :cond_5

    .line 101
    add-int/lit8 v18, v18, 0x1

    .line 105
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    if-ne v14, v2, :cond_8

    .line 107
    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_7

    .line 108
    sget-object v22, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 180
    :goto_3
    return-object v22

    .line 95
    .restart local v3       #ch:C
    :cond_6
    const/16 v22, 0x20

    move/from16 v0, v22

    if-eq v3, v0, :cond_3

    const/16 v22, 0x9

    move/from16 v0, v22

    if-eq v3, v0, :cond_3

    goto :goto_2

    .line 110
    .end local v3           #ch:C
    :cond_7
    sget-object v22, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_3

    .line 113
    :cond_8
    mul-int/lit8 v22, v18, 0x2

    move/from16 v0, v22

    new-array v9, v0, [I

    .line 114
    .local v9, ld:[I
    move v13, v14

    .line 115
    .local v13, maxLevel:I
    shl-int/lit8 v11, v14, 0x1a

    .line 120
    .local v11, levelBits:I
    const/4 v15, 0x1

    .line 121
    .local v15, n:I
    move/from16 v17, p2

    .line 122
    .local v17, prev:I
    move v4, v14

    .line 123
    move/from16 v8, p2

    add-int v5, p2, v20

    move/from16 v16, v15

    .end local v15           #n:I
    .local v16, n:I
    :goto_4
    if-ge v8, v5, :cond_b

    .line 124
    aget-byte v10, p1, v8

    .line 125
    .restart local v10       #level:I
    if-eq v10, v4, :cond_15

    .line 126
    move v4, v10

    .line 127
    if-le v10, v13, :cond_a

    .line 128
    move v13, v10

    .line 133
    :cond_9
    :goto_5
    add-int/lit8 v15, v16, 0x1

    .end local v16           #n:I
    .restart local v15       #n:I
    sub-int v22, v8, v17

    or-int v22, v22, v11

    aput v22, v9, v16

    .line 134
    add-int/lit8 v16, v15, 0x1

    .end local v15           #n:I
    .restart local v16       #n:I
    sub-int v22, v8, p2

    aput v22, v9, v15

    .line 135
    shl-int/lit8 v11, v4, 0x1a

    .line 136
    move/from16 v17, v8

    move/from16 v15, v16

    .line 123
    .end local v16           #n:I
    .restart local v15       #n:I
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v15

    .end local v15           #n:I
    .restart local v16       #n:I
    goto :goto_4

    .line 129
    :cond_a
    if-ge v10, v14, :cond_9

    .line 130
    move v14, v10

    goto :goto_5

    .line 139
    .end local v10           #level:I
    :cond_b
    add-int v22, p2, v20

    sub-int v22, v22, v17

    or-int v22, v22, v11

    aput v22, v9, v16

    .line 140
    move/from16 v0, v20

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 141
    add-int/lit8 v15, v16, 0x1

    .end local v16           #n:I
    .restart local v15       #n:I
    aput v20, v9, v15

    .line 142
    add-int/lit8 v15, v15, 0x1

    sub-int v22, p5, v20

    shl-int/lit8 v23, v2, 0x1a

    or-int v22, v22, v23

    aput v22, v9, v15

    .line 157
    :goto_7
    and-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_d

    .line 158
    add-int/lit8 v14, v14, 0x1

    .line 159
    if-le v13, v14, :cond_c

    const/16 v19, 0x1

    .line 163
    .local v19, swap:Z
    :goto_8
    if-eqz v19, :cond_13

    .line 164
    add-int/lit8 v10, v13, -0x1

    .restart local v10       #level:I
    :goto_9
    if-lt v10, v14, :cond_13

    .line 165
    const/4 v8, 0x0

    :goto_a
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_12

    .line 166
    aget v22, v9, v8

    aget-byte v22, p1, v22

    move/from16 v0, v22

    if-lt v0, v10, :cond_11

    .line 167
    add-int/lit8 v5, v8, 0x2

    .line 168
    :goto_b
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v5, v0, :cond_f

    aget v22, v9, v5

    aget-byte v22, p1, v22

    move/from16 v0, v22

    if-lt v0, v10, :cond_f

    .line 169
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 159
    .end local v10           #level:I
    .end local v19           #swap:Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    .line 161
    :cond_d
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    const/16 v19, 0x1

    .restart local v19       #swap:Z
    :goto_c
    goto :goto_8

    .end local v19           #swap:Z
    :cond_e
    const/16 v19, 0x0

    goto :goto_c

    .line 171
    .restart local v10       #level:I
    .restart local v19       #swap:Z
    :cond_f
    move v12, v8

    .local v12, low:I
    add-int/lit8 v7, v5, -0x2

    .local v7, hi:I
    :goto_d
    if-ge v12, v7, :cond_10

    .line 172
    aget v21, v9, v12

    .local v21, x:I
    aget v22, v9, v7

    aput v22, v9, v12

    aput v21, v9, v7

    .line 173
    add-int/lit8 v22, v12, 0x1

    aget v21, v9, v22

    add-int/lit8 v22, v12, 0x1

    add-int/lit8 v23, v7, 0x1

    aget v23, v9, v23

    aput v23, v9, v22

    add-int/lit8 v22, v7, 0x1

    aput v21, v9, v22

    .line 171
    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v7, v7, -0x2

    goto :goto_d

    .line 175
    .end local v21           #x:I
    :cond_10
    add-int/lit8 v8, v5, 0x2

    .line 165
    .end local v7           #hi:I
    .end local v12           #low:I
    :cond_11
    add-int/lit8 v8, v8, 0x2

    goto :goto_a

    .line 164
    :cond_12
    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 180
    .end local v10           #level:I
    :cond_13
    new-instance v22, Landroid/text/Layout$Directions;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_3

    .end local v15           #n:I
    .end local v19           #swap:Z
    .restart local v16       #n:I
    :cond_14
    move/from16 v15, v16

    .end local v16           #n:I
    .restart local v15       #n:I
    goto :goto_7

    .end local v15           #n:I
    .restart local v10       #level:I
    .restart local v16       #n:I
    :cond_15
    move/from16 v15, v16

    .end local v16           #n:I
    .restart local v15       #n:I
    goto/16 :goto_6
.end method

.method public static directionsJP(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 25
    .parameter "dir"
    .parameter "levels"
    .parameter "lstart"
    .parameter "chars"
    .parameter "cstart"
    .parameter "len"

    .prologue
    .line 187
    const/16 v23, 0x1

    move/from16 v0, p0

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 188
    .local v2, baseLevel:I
    :goto_0
    aget-byte v4, p1, p2

    .line 189
    .local v4, curLevel:I
    move v15, v4

    .line 190
    .local v15, minLevel:I
    const/16 v19, 0x1

    .line 194
    .local v19, runCount:I
    add-int/lit8 v9, p2, 0x1

    .local v9, i:I
    add-int v6, p2, p5

    .local v6, e:I
    move v5, v4

    .end local v4           #curLevel:I
    .local v5, curLevel:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 196
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_17

    :try_start_0
    aget-char v23, p3, v9

    const v24, 0xd800

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_17

    aget-char v23, p3, v9

    const v24, 0xdfff

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    .line 197
    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_16

    .line 198
    int-to-byte v4, v2

    aput-byte v4, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #curLevel:I
    .restart local v4       #curLevel:I
    move v15, v4

    .line 200
    :goto_2
    int-to-byte v0, v2

    move/from16 v23, v0

    :try_start_1
    aput-byte v23, p1, v9

    .line 203
    :goto_3
    aget-byte v11, p1, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .local v11, level:I
    if-eq v11, v4, :cond_0

    .line 205
    move v4, v11

    .line 206
    add-int/lit8 v19, v19, 0x1

    .line 194
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4           #curLevel:I
    .restart local v5       #curLevel:I
    goto :goto_1

    .line 187
    .end local v2           #baseLevel:I
    .end local v5           #curLevel:I
    .end local v6           #e:I
    .end local v9           #i:I
    .end local v11           #level:I
    .end local v15           #minLevel:I
    .end local v19           #runCount:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .restart local v2       #baseLevel:I
    .restart local v5       #curLevel:I
    .restart local v6       #e:I
    .restart local v9       #i:I
    .restart local v15       #minLevel:I
    .restart local v19       #runCount:I
    :cond_2
    move v4, v5

    .line 215
    .end local v5           #curLevel:I
    .restart local v4       #curLevel:I
    :goto_4
    move/from16 v21, p5

    .line 216
    .local v21, visLen:I
    and-int/lit8 v23, v4, 0x1

    and-int/lit8 v24, v2, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 218
    :cond_3
    add-int/lit8 v21, v21, -0x1

    if-ltz v21, :cond_4

    .line 219
    add-int v23, p4, v21

    aget-char v3, p3, v23

    .line 221
    .local v3, ch:C
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    .line 222
    add-int/lit8 v21, v21, -0x1

    .line 230
    .end local v3           #ch:C
    :cond_4
    :goto_5
    add-int/lit8 v21, v21, 0x1

    .line 231
    move/from16 v0, v21

    move/from16 v1, p5

    if-eq v0, v1, :cond_5

    .line 232
    add-int/lit8 v19, v19, 0x1

    .line 236
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    if-ne v15, v2, :cond_8

    .line 238
    and-int/lit8 v23, v15, 0x1

    if-eqz v23, :cond_7

    .line 239
    sget-object v23, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 311
    :goto_6
    return-object v23

    .line 209
    .end local v4           #curLevel:I
    .end local v21           #visLen:I
    .restart local v5       #curLevel:I
    :catch_0
    move-exception v7

    move v4, v5

    .line 210
    .end local v5           #curLevel:I
    .restart local v4       #curLevel:I
    .local v7, ex:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 226
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v3       #ch:C
    .restart local v21       #visLen:I
    :cond_6
    const/16 v23, 0x20

    move/from16 v0, v23

    if-eq v3, v0, :cond_3

    const/16 v23, 0x9

    move/from16 v0, v23

    if-eq v3, v0, :cond_3

    goto :goto_5

    .line 241
    .end local v3           #ch:C
    :cond_7
    sget-object v23, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    goto :goto_6

    .line 244
    :cond_8
    mul-int/lit8 v23, v19, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .line 245
    .local v10, ld:[I
    move v14, v15

    .line 246
    .local v14, maxLevel:I
    shl-int/lit8 v12, v15, 0x1a

    .line 251
    .local v12, levelBits:I
    const/16 v16, 0x1

    .line 252
    .local v16, n:I
    move/from16 v18, p2

    .line 253
    .local v18, prev:I
    move v4, v15

    .line 254
    move/from16 v9, p2

    add-int v6, p2, v21

    move/from16 v17, v16

    .end local v16           #n:I
    .local v17, n:I
    :goto_8
    if-ge v9, v6, :cond_b

    .line 255
    aget-byte v11, p1, v9

    .line 256
    .restart local v11       #level:I
    if-eq v11, v4, :cond_15

    .line 257
    move v4, v11

    .line 258
    if-le v11, v14, :cond_a

    .line 259
    move v14, v11

    .line 264
    :cond_9
    :goto_9
    add-int/lit8 v16, v17, 0x1

    .end local v17           #n:I
    .restart local v16       #n:I
    sub-int v23, v9, v18

    or-int v23, v23, v12

    aput v23, v10, v17

    .line 265
    add-int/lit8 v17, v16, 0x1

    .end local v16           #n:I
    .restart local v17       #n:I
    sub-int v23, v9, p2

    aput v23, v10, v16

    .line 266
    shl-int/lit8 v12, v4, 0x1a

    .line 267
    move/from16 v18, v9

    move/from16 v16, v17

    .line 254
    .end local v17           #n:I
    .restart local v16       #n:I
    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v16

    .end local v16           #n:I
    .restart local v17       #n:I
    goto :goto_8

    .line 260
    :cond_a
    if-ge v11, v15, :cond_9

    .line 261
    move v15, v11

    goto :goto_9

    .line 270
    .end local v11           #level:I
    :cond_b
    add-int v23, p2, v21

    sub-int v23, v23, v18

    or-int v23, v23, v12

    aput v23, v10, v17

    .line 271
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_14

    .line 272
    add-int/lit8 v16, v17, 0x1

    .end local v17           #n:I
    .restart local v16       #n:I
    aput v21, v10, v16

    .line 273
    add-int/lit8 v16, v16, 0x1

    sub-int v23, p5, v21

    shl-int/lit8 v24, v2, 0x1a

    or-int v23, v23, v24

    aput v23, v10, v16

    .line 288
    :goto_b
    and-int/lit8 v23, v15, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_d

    .line 289
    add-int/lit8 v15, v15, 0x1

    .line 290
    if-le v14, v15, :cond_c

    const/16 v20, 0x1

    .line 294
    .local v20, swap:Z
    :goto_c
    if-eqz v20, :cond_13

    .line 295
    add-int/lit8 v11, v14, -0x1

    .restart local v11       #level:I
    :goto_d
    if-lt v11, v15, :cond_13

    .line 296
    const/4 v9, 0x0

    :goto_e
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_12

    .line 297
    aget v23, v10, v9

    aget-byte v23, p1, v23

    move/from16 v0, v23

    if-lt v0, v11, :cond_11

    .line 298
    add-int/lit8 v6, v9, 0x2

    .line 299
    :goto_f
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_f

    aget v23, v10, v6

    aget-byte v23, p1, v23

    move/from16 v0, v23

    if-lt v0, v11, :cond_f

    .line 300
    add-int/lit8 v6, v6, 0x2

    goto :goto_f

    .line 290
    .end local v11           #level:I
    .end local v20           #swap:Z
    :cond_c
    const/16 v20, 0x0

    goto :goto_c

    .line 292
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_e

    const/16 v20, 0x1

    .restart local v20       #swap:Z
    :goto_10
    goto :goto_c

    .end local v20           #swap:Z
    :cond_e
    const/16 v20, 0x0

    goto :goto_10

    .line 302
    .restart local v11       #level:I
    .restart local v20       #swap:Z
    :cond_f
    move v13, v9

    .local v13, low:I
    add-int/lit8 v8, v6, -0x2

    .local v8, hi:I
    :goto_11
    if-ge v13, v8, :cond_10

    .line 303
    aget v22, v10, v13

    .local v22, x:I
    aget v23, v10, v8

    aput v23, v10, v13

    aput v22, v10, v8

    .line 304
    add-int/lit8 v23, v13, 0x1

    aget v22, v10, v23

    add-int/lit8 v23, v13, 0x1

    add-int/lit8 v24, v8, 0x1

    aget v24, v10, v24

    aput v24, v10, v23

    add-int/lit8 v23, v8, 0x1

    aput v22, v10, v23

    .line 302
    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v8, v8, -0x2

    goto :goto_11

    .line 306
    .end local v22           #x:I
    :cond_10
    add-int/lit8 v9, v6, 0x2

    .line 296
    .end local v8           #hi:I
    .end local v13           #low:I
    :cond_11
    add-int/lit8 v9, v9, 0x2

    goto :goto_e

    .line 295
    :cond_12
    add-int/lit8 v11, v11, -0x1

    goto :goto_d

    .line 311
    .end local v11           #level:I
    :cond_13
    new-instance v23, Landroid/text/Layout$Directions;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Landroid/text/Layout$Directions;-><init>([I)V

    goto/16 :goto_6

    .line 209
    .end local v10           #ld:[I
    .end local v12           #levelBits:I
    .end local v14           #maxLevel:I
    .end local v16           #n:I
    .end local v18           #prev:I
    .end local v20           #swap:Z
    .end local v21           #visLen:I
    :catch_1
    move-exception v7

    goto/16 :goto_7

    .restart local v10       #ld:[I
    .restart local v12       #levelBits:I
    .restart local v14       #maxLevel:I
    .restart local v17       #n:I
    .restart local v18       #prev:I
    .restart local v21       #visLen:I
    :cond_14
    move/from16 v16, v17

    .end local v17           #n:I
    .restart local v16       #n:I
    goto :goto_b

    .end local v16           #n:I
    .restart local v11       #level:I
    .restart local v17       #n:I
    :cond_15
    move/from16 v16, v17

    .end local v17           #n:I
    .restart local v16       #n:I
    goto/16 :goto_a

    .end local v4           #curLevel:I
    .end local v10           #ld:[I
    .end local v11           #level:I
    .end local v12           #levelBits:I
    .end local v14           #maxLevel:I
    .end local v16           #n:I
    .end local v18           #prev:I
    .end local v21           #visLen:I
    .restart local v5       #curLevel:I
    :cond_16
    move v4, v5

    .end local v5           #curLevel:I
    .restart local v4       #curLevel:I
    goto/16 :goto_2

    .end local v4           #curLevel:I
    .restart local v5       #curLevel:I
    :cond_17
    move v4, v5

    .end local v5           #curLevel:I
    .restart local v4       #curLevel:I
    goto/16 :goto_3
.end method

.method private static native runBidi(I[C[BIZ)I
.end method
