.class public Lcom/lge/systemui/SystemUIProvider;
.super Landroid/content/ContentProvider;
.source "SystemUIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;
    }
.end annotation


# static fields
.field private static mDB:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, strTable:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemui/SystemUIProvider;->mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    invoke-virtual {v2}, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    sget-object v2, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, rowID:I
    invoke-virtual {p0}, Lcom/lge/systemui/SystemUIProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 40
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, strTable:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/systemui/SystemUIProvider;->mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    invoke-virtual {v4}, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sput-object v4, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    sget-object v4, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 54
    .local v0, rowID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move-object p1, v3

    .line 59
    .end local p1
    :goto_0
    return-object p1

    .line 58
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/SystemUIProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    invoke-virtual {p0}, Lcom/lge/systemui/SystemUIProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;-><init>(Lcom/lge/systemui/SystemUIProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/systemui/SystemUIProvider;->mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    .local v1, strTable:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/systemui/SystemUIProvider;->mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    invoke-virtual {v0}, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    sget-object v0, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 27
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/systemui/SystemUIProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 28
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, strTable:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/systemui/SystemUIProvider;->mOpenHelper:Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;

    invoke-virtual {v2}, Lcom/lge/systemui/SystemUIProvider$SystemUIProviderOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    sget-object v2, Lcom/lge/systemui/SystemUIProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, rowID:I
    invoke-virtual {p0}, Lcom/lge/systemui/SystemUIProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 73
    return v0
.end method
