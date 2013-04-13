.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    move-object v0, v1

    .line 185
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 186
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 187
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 188
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 189
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 191
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 197
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "ni"

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 181
    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 182
    return-void
.end method

.method public static addNewFont(I)I
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 292
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeAddNewFont(I)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 4
    .parameter "family"
    .parameter "style"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, ni:I
    if-eqz p0, :cond_2

    .line 108
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_1

    move-object v2, p0

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 112
    :cond_1
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 116
    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 118
    .local v1, styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 120
    .local v2, typeface:Landroid/graphics/Typeface;
    if-nez v2, :cond_0

    .line 125
    .end local v2           #typeface:Landroid/graphics/Typeface;
    :cond_3
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    .line 126
    .restart local v2       #typeface:Landroid/graphics/Typeface;
    if-nez v1, :cond_4

    .line 127
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 128
    .restart local v1       #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    :cond_4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 151
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 161
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"

    .prologue
    .line 141
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getCheckNewFont(I)I
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 291
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetCheckNewFont(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultTypefaceIndex()I
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDefaultTypefaceIndex()I

    move-result v0

    return v0
.end method

.method public static getDownloadFontDstPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDownloadFontDstPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFontName(I)Ljava/lang/String;
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 282
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetDownloadFontName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadFontSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetDownloadFontSrcPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackFullPath(I)Ljava/lang/String;
    .locals 1
    .parameter "fallbackIndex"

    .prologue
    .line 303
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetFallbackFullPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFallbackIndex()I
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetFallbackIndex()I

    move-result v0

    return v0
.end method

.method public static getFontFullPath(I)Ljava/lang/String;
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 283
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetFontFullPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontWebFaceName(I)Ljava/lang/String;
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 287
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetFontWebFaceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewFontAppName(I)Ljava/lang/String;
    .locals 1
    .parameter "fontIndex"

    .prologue
    .line 290
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeGetNewFontAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumAllFallbacks()I
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumAllFallbacks()I

    move-result v0

    return v0
.end method

.method public static getNumAllFonts()I
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumAllFonts()I

    move-result v0

    return v0
.end method

.method public static getNumEmbeddedFonts()I
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumEmbeddedFonts()I

    move-result v0

    return v0
.end method

.method public static getNumNewFonts()I
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetNumNewFonts()I

    move-result v0

    return v0
.end method

.method public static getSystemDefaultTypefaceIndex()I
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Landroid/graphics/Typeface;->nativeGetSystemDefaultTypefaceIndex()I

    move-result v0

    return v0
.end method

.method private static native nativeAddNewFont(I)I
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetCheckNewFont(I)I
.end method

.method private static native nativeGetDefaultTypefaceIndex()I
.end method

.method private static native nativeGetDownloadFontDstPath()Ljava/lang/String;
.end method

.method private static native nativeGetDownloadFontName(I)Ljava/lang/String;
.end method

.method private static native nativeGetDownloadFontSrcPath()Ljava/lang/String;
.end method

.method private static native nativeGetFallbackFullPath(I)Ljava/lang/String;
.end method

.method private static native nativeGetFallbackIndex()I
.end method

.method private static native nativeGetFontFullPath(I)Ljava/lang/String;
.end method

.method private static native nativeGetFontWebFaceName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNewFontAppName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumAllFallbacks()I
.end method

.method private static native nativeGetNumAllFonts()I
.end method

.method private static native nativeGetNumEmbeddedFonts()I
.end method

.method private static native nativeGetNumNewFonts()I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeGetSystemDefaultTypefaceIndex()I
.end method

.method private static native nativeSaveNewFont()V
.end method

.method private static native nativeSelectDefaultTypeface(I)V
.end method

.method private static native nativeSelectFallback(I)V
.end method

.method private static native nativeUnref(I)V
.end method

.method private static native nativeUpdateFallbackConfiguration()V
.end method

.method private static native nativeUpdateFontConfiguration()V
.end method

.method private static native nativeUpdateFontManager()I
.end method

.method public static saveNewFont()V
    .locals 0

    .prologue
    .line 293
    invoke-static {}, Landroid/graphics/Typeface;->nativeSaveNewFont()V

    return-void
.end method

.method public static selectDefaultTypeface(I)V
    .locals 0
    .parameter "fontIndex"

    .prologue
    .line 278
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeSelectDefaultTypeface(I)V

    return-void
.end method

.method public static selectFallback(I)V
    .locals 0
    .parameter "fallbackIndex"

    .prologue
    .line 300
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeSelectFallback(I)V

    return-void
.end method

.method public static native setGammaForText(FF)V
.end method

.method public static updateFallbackConfiguration()V
    .locals 0

    .prologue
    .line 298
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFallbackConfiguration()V

    .line 299
    return-void
.end method

.method public static updateFontConfiguration()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 245
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFontConfiguration()V

    .line 247
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 250
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Typeface;->native_instance:I

    .line 251
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v2, v2, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 253
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 256
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Typeface;->native_instance:I

    .line 258
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v2, v2, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 260
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eqz v0, :cond_2

    .line 261
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget v0, v0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 263
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Typeface;->native_instance:I

    .line 265
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget v2, v2, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 267
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 274
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, v3

    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 275
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, v4

    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 276
    return-void
.end method

.method public static updateFontManager()I
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Landroid/graphics/Typeface;->nativeUpdateFontManager()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-ne p0, p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 212
    check-cast v0, Landroid/graphics/Typeface;

    .line 214
    .local v0, typeface:Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 220
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 221
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 294
    iput p1, p0, Landroid/graphics/Typeface;->mStyle:I

    return-void
.end method
