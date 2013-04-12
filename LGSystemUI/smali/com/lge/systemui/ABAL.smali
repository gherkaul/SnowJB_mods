.class public abstract Lcom/lge/systemui/ABAL;
.super Ljava/lang/Object;
.source "ABAL.java"


# static fields
.field public static mIPhone:Lcom/android/internal/telephony/ITelephony;

.field public static mOperator:Ljava/lang/String;

.field public static mOperatorIndex:I

.field public static mPhone:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    sput v0, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init()V
    .locals 16

    .prologue
    const/16 v15, 0xc

    const/16 v14, 0xa

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 114
    .local v5, fos:Ljava/io/FileOutputStream;
    new-array v0, v14, [B

    .line 116
    .local v0, buffer:[B
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "data/com.android.systemui/files/operator.txt"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v8, operatorFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v13, :cond_5

    .line 118
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 119
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 120
    .local v7, n:I
    if-gtz v7, :cond_2

    .line 121
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v3, v4

    .line 135
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #n:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 143
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    :cond_1
    :goto_3
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 150
    sput v12, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    .line 230
    :goto_4
    return-void

    .line 123
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v7       #n:I
    :cond_2
    :try_start_4
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v0, v10, v11, v7}, Ljava/lang/String;-><init>([BIII)V

    sput-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 132
    .end local v7           #n:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 133
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v8           #operatorFile:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_5
    :try_start_5
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v3, :cond_3

    .line 137
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 141
    :cond_3
    :goto_7
    if-eqz v5, :cond_4

    .line 143
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    :cond_4
    :goto_8
    throw v9

    .line 126
    .restart local v8       #operatorFile:Ljava/io/File;
    :cond_5
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "data/com.android.systemui/files/"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v2, fDirName:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 129
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_9
    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    .line 130
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v9, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 151
    .end local v2           #fDirName:Ljava/io/File;
    :cond_6
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "ATT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 152
    sput v13, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto :goto_4

    .line 153
    :cond_7
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "SKT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 154
    const/4 v9, 0x2

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto :goto_4

    .line 155
    :cond_8
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "KT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 156
    const/4 v9, 0x3

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto :goto_4

    .line 157
    :cond_9
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "LGU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 158
    const/4 v9, 0x4

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 159
    :cond_a
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "DCM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 160
    const/4 v9, 0x5

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 161
    :cond_b
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TMUS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 162
    const/4 v9, 0x6

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 163
    :cond_c
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "KDDI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 164
    const/4 v9, 0x7

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 165
    :cond_d
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "OPEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 166
    const/16 v9, 0x8

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 167
    :cond_e
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "MPCS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 168
    const/16 v9, 0x9

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 169
    :cond_f
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "USC"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 170
    sput v14, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 171
    :cond_10
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "ORG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 172
    const/16 v9, 0xb

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 173
    :cond_11
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "BM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 174
    sput v15, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 175
    :cond_12
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TRF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 176
    const/16 v9, 0xd

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 177
    :cond_13
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "SPR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 178
    sput v15, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 179
    :cond_14
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "ACG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 180
    const/16 v9, 0xe

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 181
    :cond_15
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "RGS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 182
    const/16 v9, 0xf

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 183
    :cond_16
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "BELL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 184
    const/16 v9, 0x10

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 185
    :cond_17
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TLS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 186
    const/16 v9, 0x11

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 187
    :cond_18
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "VDF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 188
    const/16 v9, 0x12

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 189
    :cond_19
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "VIV"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 190
    const/16 v9, 0x13

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 191
    :cond_1a
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "SHB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 192
    const/16 v9, 0x14

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 193
    :cond_1b
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "MON"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 194
    const/16 v9, 0x15

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 195
    :cond_1c
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "STL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 196
    const/16 v9, 0x16

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 197
    :cond_1d
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TEL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 198
    const/16 v9, 0x17

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 199
    :cond_1e
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TLF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 200
    const/16 v9, 0x18

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 201
    :cond_1f
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 202
    const/16 v9, 0x19

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 203
    :cond_20
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "FREE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 204
    const/16 v9, 0x1a

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 205
    :cond_21
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "H3G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 206
    const/16 v9, 0x1b

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 207
    :cond_22
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "BYT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 208
    const/16 v9, 0x1c

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 209
    :cond_23
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 210
    const/16 v9, 0x1d

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 211
    :cond_24
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "PLY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 212
    const/16 v9, 0x1e

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 213
    :cond_25
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "PLS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 214
    const/16 v9, 0x1f

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 215
    :cond_26
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "NRJ"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 216
    const/16 v9, 0x20

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 217
    :cond_27
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TMN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 218
    const/16 v9, 0x21

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 219
    :cond_28
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "TLN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 220
    const/16 v9, 0x22

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 221
    :cond_29
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "NCM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 222
    const/16 v9, 0x23

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 223
    :cond_2a
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "SFR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 224
    const/16 v9, 0x24

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 225
    :cond_2b
    sget-object v9, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    const-string v10, "EVE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 226
    const/16 v9, 0x25

    sput v9, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    goto/16 :goto_4

    .line 228
    :cond_2c
    const-string v9, "ABAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR==================== no operator value operator="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/lge/systemui/ABAL;->mOperator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 138
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .line 144
    :catch_2
    move-exception v9

    goto/16 :goto_3

    .line 138
    .end local v8           #operatorFile:Ljava/io/File;
    :catch_3
    move-exception v10

    goto/16 :goto_7

    .line 144
    :catch_4
    move-exception v10

    goto/16 :goto_8

    .line 135
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v8       #operatorFile:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fDirName:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 132
    .end local v2           #fDirName:Ljava/io/File;
    .end local v8           #operatorFile:Ljava/io/File;
    :catch_5
    move-exception v1

    goto/16 :goto_5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fDirName:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #operatorFile:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method

.method public static carrierLable_dualsim(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V
    .locals 2
    .parameter "mStatusBarWindow"
    .parameter "context"

    .prologue
    .line 310
    const-string v0, "ABAL"

    const-string v1, "ABAL.carrierLable_dualsim() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public static changeCPUgovernor(Landroid/os/PowerManager;ZI)V
    .locals 2
    .parameter "pm"
    .parameter "mode"
    .parameter "delay"

    .prologue
    .line 367
    const-string v0, "ABAL"

    const-string v1, "ABAL.changeCPUgovernor() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public static dataRadio(Landroid/telephony/ServiceState;)I
    .locals 3
    .parameter "serviceState"

    .prologue
    const/4 v0, 0x5

    .line 249
    if-nez p0, :cond_0

    .line 250
    const-string v1, "ABAL"

    const-string v2, "Service state not updated"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 256
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 265
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCallState(Landroid/telephony/TelephonyManager;I)I
    .locals 2
    .parameter "phone"
    .parameter "slotID"

    .prologue
    .line 344
    const-string v0, "ABAL"

    const-string v1, "ABAL.getCallState() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultSim()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public static getLteLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public static getLteRsrp(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public static getNetworkType(Landroid/telephony/TelephonyManager;I)I
    .locals 2
    .parameter "phone"
    .parameter "nSim"

    .prologue
    .line 339
    const-string v0, "ABAL"

    const-string v1, "ABAL.getNetworkType() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public static getOperator()I
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/lge/systemui/ABAL;->mOperatorIndex:I

    return v0
.end method

.method public static getSimCount()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public static getSystemService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 363
    const-string v0, "ABAL"

    const-string v1, "ABAL.getSystemService() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public static isDualSimSupport()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkRoaming(Landroid/telephony/TelephonyManager;I)Z
    .locals 2
    .parameter "phone"
    .parameter "slotID"

    .prologue
    .line 349
    const-string v0, "ABAL"

    const-string v1, "ABAL.isNetworkRoaming() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimInsert(Lcom/android/internal/telephony/ITelephony;I)Z
    .locals 2
    .parameter "phone"
    .parameter "slotId"

    .prologue
    .line 358
    const-string v0, "ABAL"

    const-string v1, "ABAL.isSimInsert() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceInService(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .parameter "tm"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public static setDataNetType(Landroid/telephony/SignalStrength;I)V
    .locals 0
    .parameter "signalStrength"
    .parameter "dataNetType"

    .prologue
    .line 303
    return-void
.end method

.method public static setListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;II)V
    .locals 2
    .parameter "phone"
    .parameter "listener"
    .parameter "events"
    .parameter "simId"

    .prologue
    .line 354
    const-string v0, "ABAL"

    const-string v1, "ABAL.setListener() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public static setShared(Landroid/os/storage/StorageManager;Z)V
    .locals 0
    .parameter "storageManager"
    .parameter "enable"

    .prologue
    .line 242
    return-void
.end method

.method public static updateCarrierSimState(ILandroid/content/Context;)V
    .locals 2
    .parameter "subscription"
    .parameter "context"

    .prologue
    .line 322
    const-string v0, "ABAL"

    const-string v1, "ABAL.updateCarrierSimState() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public static updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 2
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"
    .parameter "subscription"

    .prologue
    .line 314
    const-string v0, "ABAL"

    const-string v1, "ABAL.updateNetworkName() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public static updateSimState(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 318
    const-string v0, "ABAL"

    const-string v1, "ABAL.updateSimState() called, but nothing defined."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method
