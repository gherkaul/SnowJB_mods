.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 72
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 73
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 74
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 76
    array-length v1, p4

    .line 77
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 81
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 82
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 86
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 87
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 205
    :goto_1
    return-object v2

    .line 97
    .end local v1           #type:I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 98
    const/4 v1, 0x6

    .line 99
    .restart local v1       #type:I
    goto :goto_0

    .line 101
    .end local v1           #type:I
    :sswitch_1
    const-string v0, "format"

    .line 102
    const/4 v1, 0x4

    .line 103
    .restart local v1       #type:I
    goto :goto_0

    .line 106
    .end local v1           #type:I
    :sswitch_2
    const/4 v1, 0x4

    .line 107
    .restart local v1       #type:I
    goto :goto_0

    .line 109
    .end local v1           #type:I
    :sswitch_3
    const-string v0, "_size"

    .line 110
    const/16 v1, 0x8

    .line 111
    .restart local v1       #type:I
    goto :goto_0

    .line 113
    .end local v1           #type:I
    :sswitch_4
    const-string v0, "_data"

    .line 114
    const v1, 0xffff

    .line 115
    .restart local v1       #type:I
    goto :goto_0

    .line 117
    .end local v1           #type:I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 118
    const v1, 0xffff

    .line 119
    .restart local v1       #type:I
    goto :goto_0

    .line 121
    .end local v1           #type:I
    :sswitch_6
    const-string v0, "date_modified"

    .line 122
    const v1, 0xffff

    .line 123
    .restart local v1       #type:I
    goto :goto_0

    .line 131
    .end local v1           #type:I
    :sswitch_7
    const-string/jumbo v0, "year"

    .line 132
    const v1, 0xffff

    .line 133
    .restart local v1       #type:I
    goto :goto_0

    .line 135
    .end local v1           #type:I
    :sswitch_8
    const-string/jumbo v0, "parent"

    .line 136
    const/4 v1, 0x6

    .line 137
    .restart local v1       #type:I
    goto :goto_0

    .line 140
    .end local v1           #type:I
    :sswitch_9
    const-string/jumbo v0, "storage_id"

    .line 141
    const/16 v1, 0xa

    .line 142
    .restart local v1       #type:I
    goto :goto_0

    .line 144
    .end local v1           #type:I
    :sswitch_a
    const-string v0, "duration"

    .line 145
    const/4 v1, 0x6

    .line 146
    .restart local v1       #type:I
    goto :goto_0

    .line 148
    .end local v1           #type:I
    :sswitch_b
    const-string/jumbo v0, "track"

    .line 149
    const/4 v1, 0x4

    .line 150
    .restart local v1       #type:I
    goto :goto_0

    .line 152
    .end local v1           #type:I
    :sswitch_c
    const-string v0, "_display_name"

    .line 153
    const v1, 0xffff

    .line 154
    .restart local v1       #type:I
    goto :goto_0

    .line 156
    .end local v1           #type:I
    :sswitch_d
    const v1, 0xffff

    .line 157
    .restart local v1       #type:I
    goto :goto_0

    .line 159
    .end local v1           #type:I
    :sswitch_e
    const v1, 0xffff

    .line 160
    .restart local v1       #type:I
    goto :goto_0

    .line 162
    .end local v1           #type:I
    :sswitch_f
    const-string v0, "album_artist"

    .line 163
    const v1, 0xffff

    .line 164
    .restart local v1       #type:I
    goto :goto_0

    .line 167
    .end local v1           #type:I
    :sswitch_10
    const v1, 0xffff

    .line 168
    .restart local v1       #type:I
    goto :goto_0

    .line 170
    .end local v1           #type:I
    :sswitch_11
    const-string v0, "composer"

    .line 171
    const v1, 0xffff

    .line 172
    .restart local v1       #type:I
    goto :goto_0

    .line 174
    .end local v1           #type:I
    :sswitch_12
    const-string v0, "description"

    .line 175
    const v1, 0xffff

    .line 176
    .restart local v1       #type:I
    goto :goto_0

    .line 179
    .end local v1           #type:I
    :sswitch_13
    const-string/jumbo v0, "width"

    .line 180
    const/4 v1, 0x6

    .line 181
    .restart local v1       #type:I
    goto :goto_0

    .line 183
    .end local v1           #type:I
    :sswitch_14
    const-string v0, "height"

    .line 184
    const/4 v1, 0x6

    .line 185
    .restart local v1       #type:I
    goto :goto_0

    .line 187
    .end local v1           #type:I
    :sswitch_15
    const-string v0, "datetaken"

    .line 188
    const v1, 0xffff

    .line 189
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 191
    .end local v1           #type:I
    :sswitch_16
    const-string v0, "date_added"

    .line 192
    const v1, 0xffff

    .line 193
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 205
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc08 -> :sswitch_16
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_8
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_d
        0xdc47 -> :sswitch_15
        0xdc48 -> :sswitch_12
        0xdc87 -> :sswitch_13
        0xdc88 -> :sswitch_14
        0xdc89 -> :sswitch_a
        0xdc8b -> :sswitch_b
        0xdc8c -> :sswitch_10
        0xdc96 -> :sswitch_11
        0xdc99 -> :sswitch_7
        0xdc9a -> :sswitch_e
        0xdc9b -> :sswitch_f
        0xdce0 -> :sswitch_c
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 295
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 296
    add-int/lit8 v2, v1, 0x1

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 299
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 300
    add-int/lit16 v0, v2, 0xff

    .line 302
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 231
    const/4 v7, 0x0

    .line 233
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    if-eqz v7, :cond_0

    .line 245
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_0
    :goto_1
    return-object v0

    .line 239
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    if-eqz v7, :cond_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v8

    .line 244
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    .line 245
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 242
    goto :goto_1

    .line 244
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 245
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 251
    const/4 v7, 0x0

    .line 253
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 254
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 257
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    if-eqz v7, :cond_0

    .line 267
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 264
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-object v0

    .line 260
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    if-eqz v7, :cond_0

    goto :goto_0

    .line 262
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 263
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    if-eqz v7, :cond_2

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 264
    goto :goto_1

    .line 266
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 273
    const/4 v7, 0x0

    .line 276
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 279
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    if-eqz v7, :cond_0

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1
    throw v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    if-eqz v7, :cond_2

    .line 285
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 288
    goto :goto_0

    .line 284
    :cond_3
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 210
    const/4 v7, 0x0

    .line 213
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 216
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    if-eqz v7, :cond_0

    .line 225
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    :goto_1
    return-object v0

    .line 219
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    if-eqz v7, :cond_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v8

    .line 224
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 222
    goto :goto_1

    .line 224
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 39
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 307
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 310
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 488
    :cond_0
    :goto_0
    return-object v7

    .line 315
    :cond_1
    if-nez p2, :cond_5

    .line 316
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 343
    .local v6, whereArgs:[Ljava/lang/String;
    :goto_1
    const/16 v25, 0x0

    .line 346
    .local v25, c:Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 347
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v25

    .line 348
    if-nez v25, :cond_8

    .line 349
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    if-eqz v25, :cond_0

    .line 491
    :goto_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v25           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 322
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 323
    const-string/jumbo v5, "parent=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_1

    .line 325
    .end local v5           #where:Ljava/lang/String;
    :cond_4
    const-string v5, "_id=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 331
    const-string v5, "format=?"

    .line 332
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto :goto_1

    .line 334
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 335
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 336
    const-string/jumbo v5, "parent=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_1

    .line 338
    .end local v5           #where:Ljava/lang/String;
    :cond_7
    const-string v5, "_id=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_1

    .line 353
    .restart local v25       #c:Landroid/database/Cursor;
    :cond_8
    if-nez v25, :cond_a

    const/16 v27, 0x1

    .line 354
    .local v27, count:I
    :goto_3
    :try_start_1
    new-instance v7, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v27

    const/16 v3, 0x2001

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 358
    .local v7, result:Landroid/mtp/MtpPropertyList;
    const/16 v32, 0x0

    .local v32, objectIndex:I
    :goto_4
    move/from16 v0, v32

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 359
    if-eqz v25, :cond_9

    .line 360
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 365
    :cond_9
    const/16 v36, 0x0

    .local v36, propertyIndex:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v36

    if-ge v0, v2, :cond_19

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v35, v2, v36

    .line 367
    .local v35, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v35

    iget v9, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 368
    .local v9, propertyCode:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v26, v0

    .line 371
    .local v26, column:I
    sparse-switch v9, :sswitch_data_0

    .line 473
    move-object/from16 v0, v35

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_17

    .line 474
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 365
    :goto_6
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .line 353
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v26           #column:I
    .end local v27           #count:I
    .end local v32           #objectIndex:I
    .end local v35           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v36           #propertyIndex:I
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v27

    goto :goto_3

    .line 374
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v26       #column:I
    .restart local v27       #count:I
    .restart local v32       #objectIndex:I
    .restart local v35       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v36       #propertyIndex:I
    :sswitch_0
    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 487
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v26           #column:I
    .end local v27           #count:I
    .end local v32           #objectIndex:I
    .end local v35           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v36           #propertyIndex:I
    :catch_0
    move-exception v29

    .line 488
    .local v29, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    if-eqz v25, :cond_0

    goto/16 :goto_2

    .line 378
    .end local v29           #e:Landroid/os/RemoteException;
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v26       #column:I
    .restart local v27       #count:I
    .restart local v32       #objectIndex:I
    .restart local v35       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v36       #propertyIndex:I
    :sswitch_1
    :try_start_3
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 379
    .local v37, value:Ljava/lang/String;
    if-eqz v37, :cond_c

    .line 380
    invoke-static/range {v37 .. v37}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 490
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v26           #column:I
    .end local v27           #count:I
    .end local v32           #objectIndex:I
    .end local v35           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v36           #propertyIndex:I
    .end local v37           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v25, :cond_b

    .line 491
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_b
    throw v2

    .line 382
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v26       #column:I
    .restart local v27       #count:I
    .restart local v32       #objectIndex:I
    .restart local v35       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v36       #propertyIndex:I
    .restart local v37       #value:Ljava/lang/String;
    :cond_c
    const/16 v2, 0x2009

    :try_start_4
    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    .line 387
    .end local v37           #value:Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 389
    .local v31, name:Ljava/lang/String;
    if-nez v31, :cond_d

    .line 390
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 393
    :cond_d
    if-nez v31, :cond_e

    .line 394
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 395
    if-eqz v31, :cond_e

    .line 396
    invoke-static/range {v31 .. v31}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 399
    :cond_e
    if-eqz v31, :cond_f

    .line 400
    move/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    .line 402
    :cond_f
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    .line 408
    .end local v31           #name:Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    .line 412
    :sswitch_4
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 413
    .local v38, year:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 414
    .local v28, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 418
    .end local v28           #dateTime:Ljava/lang/String;
    .end local v38           #year:I
    :sswitch_5
    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 419
    .local v11, puid:J
    const/16 v2, 0x20

    shl-long/2addr v11, v2

    .line 420
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v11, v2

    .line 421
    const/16 v10, 0xa

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 424
    .end local v11           #puid:J
    :sswitch_6
    const/16 v16, 0x4

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 428
    :sswitch_7
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 432
    :sswitch_8
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 436
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v30

    .line 437
    .local v30, genre:Ljava/lang/String;
    if-eqz v30, :cond_10

    .line 438
    move/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 440
    :cond_10
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_6

    .line 445
    .end local v30           #genre:Ljava/lang/String;
    :sswitch_a
    const/16 v16, 0x6

    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_7
    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_7

    .line 448
    :sswitch_b
    const/16 v16, 0x6

    if-eqz v25, :cond_12

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_8
    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 451
    :sswitch_c
    if-eqz v25, :cond_13

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v13, 0x3e8

    div-long/2addr v2, v13

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const-wide/16 v2, 0x0

    goto :goto_9

    .line 454
    :sswitch_d
    if-eqz v25, :cond_14

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_a

    .line 459
    :sswitch_e
    if-eqz v25, :cond_16

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 460
    .local v17, filesize:J
    :goto_b
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-nez v2, :cond_15

    .line 461
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 462
    .local v34, path:Ljava/lang/String;
    new-instance v33, Ljava/io/File;

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v33, outFile:Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 464
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 465
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no file size on mediaDB. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v33           #outFile:Ljava/io/File;
    .end local v34           #path:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v35

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 459
    .end local v17           #filesize:J
    :cond_16
    const-wide/16 v17, 0x0

    goto :goto_b

    .line 475
    :cond_17
    move-object/from16 v0, v35

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_18

    .line 476
    move-object/from16 v0, v35

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v22, v0

    const-wide/16 v23, 0x0

    move-object/from16 v19, v7

    move/from16 v20, p1

    move/from16 v21, v9

    invoke-virtual/range {v19 .. v24}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 478
    :cond_18
    move-object/from16 v0, v35

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v22, v0

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v19, v7

    move/from16 v20, p1

    move/from16 v21, v9

    invoke-virtual/range {v19 .. v24}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .line 358
    .end local v9           #propertyCode:I
    .end local v26           #column:I
    .end local v35           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_19
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_4

    .line 490
    .end local v36           #propertyIndex:I
    :cond_1a
    if-eqz v25, :cond_0

    goto/16 :goto_2

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc04 -> :sswitch_e
        0xdc07 -> :sswitch_1
        0xdc08 -> :sswitch_d
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc47 -> :sswitch_c
        0xdc87 -> :sswitch_a
        0xdc88 -> :sswitch_b
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
    .end sparse-switch
.end method
