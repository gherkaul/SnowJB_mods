.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 222
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 223
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 224
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 292
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v6, params:Landroid/os/Bundle;
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9, p0, v6}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 294
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 296
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v9, :cond_0

    .line 297
    const-string v9, "drmKey"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 298
    .local v1, decInfo:[B
    if-eqz v1, :cond_0

    .line 299
    invoke-direct {p0, v6, v1}, Landroid/app/WallpaperManager$Globals;->getDrmWallpaper(Landroid/os/Bundle;[B)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 301
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 329
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #decInfo:[B
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #params:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 308
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #params:Landroid/os/Bundle;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "width"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 309
    .local v7, width:I
    const-string v9, "height"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 312
    .local v4, height:I
    :try_start_3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 313
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v7, v4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 320
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 321
    :catch_0
    move-exception v8

    goto :goto_0

    .line 316
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Can\'t decode file"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 320
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #params:Landroid/os/Bundle;
    .end local v7           #width:I
    :cond_1
    :goto_1
    move-object v0, v8

    .line 329
    goto :goto_0

    .line 319
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v4       #height:I
    .restart local v6       #params:Landroid/os/Bundle;
    .restart local v7       #width:I
    :catchall_0
    move-exception v9

    .line 320
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 319
    :goto_2
    :try_start_8
    throw v9
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 326
    .end local v3           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #height:I
    .end local v6           #params:Landroid/os/Bundle;
    .end local v7           #width:I
    :catch_2
    move-exception v9

    goto :goto_1

    .line 302
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #decInfo:[B
    .restart local v3       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #params:Landroid/os/Bundle;
    :catch_3
    move-exception v8

    goto :goto_0

    .line 321
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #decInfo:[B
    .restart local v4       #height:I
    .restart local v7       #width:I
    :catch_4
    move-exception v10

    goto :goto_2

    .restart local v2       #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v9

    goto :goto_1
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const v8, 0x108021e

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 335
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 340
    .local v5, width:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 344
    .local v2, height:I
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 351
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :cond_0
    :goto_0
    return-object v6

    .line 347
    .restart local v2       #height:I
    .restart local v5       #width:I
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Can\'t decode stream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 352
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v6

    .line 351
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 350
    :goto_1
    throw v6

    .line 352
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method private getDefaultWallpaperLockedSprint(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 425
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v9, "/carrier/media/default_wallpaper.jpg"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 426
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 428
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    if-eqz v1, :cond_1

    .line 429
    :try_start_2
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v8

    .line 430
    .local v8, width:I
    iget-object v9, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v9}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    move-result v6

    .line 433
    .local v6, height:I
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    invoke-static {v1, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 435
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v2, v9, v11}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 440
    if-eqz v5, :cond_0

    .line 441
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_9

    .line 461
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 462
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 465
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #height:I
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #width:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-object v9

    .line 436
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v8       #width:I
    :catch_0
    move-exception v3

    .line 437
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Can\'t decode stream"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 440
    if-eqz v5, :cond_1

    .line 441
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_9

    .line 461
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v6           #height:I
    .end local v8           #width:I
    :cond_1
    :goto_2
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 462
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_3
    move-object v9, v10

    .line 465
    goto :goto_1

    .line 439
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v8       #width:I
    :catchall_0
    move-exception v9

    .line 440
    if-eqz v5, :cond_2

    .line 441
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9

    .line 439
    :cond_2
    :goto_4
    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_9

    .line 448
    .end local v6           #height:I
    .end local v8           #width:I
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 449
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_5
    :try_start_9
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v11, "FileNotFoundException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 461
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 462
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_6
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_3

    .line 451
    :catch_2
    move-exception v3

    .line 452
    .local v3, e:Ljava/lang/SecurityException;
    :goto_7
    :try_start_a
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v11, "SecurityException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 461
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_6

    .line 454
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 455
    .local v3, e:Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v11, "IOException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 461
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_6

    .line 457
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 458
    .local v3, e:Landroid/os/RemoteException;
    :goto_9
    :try_start_c
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v9

    const-string v11, "RemoteException"

    invoke-static {v9, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 461
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    goto :goto_6

    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    :goto_a
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 462
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->quiteinputStream(Ljava/io/InputStream;)V

    .line 461
    throw v9

    .line 443
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #height:I
    .restart local v8       #width:I
    :catch_5
    move-exception v11

    goto :goto_4

    .local v3, e:Ljava/lang/OutOfMemoryError;
    :catch_6
    move-exception v9

    goto :goto_2

    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v10

    goto :goto_0

    .line 461
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v6           #height:I
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #width:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_a

    .line 457
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_9

    .line 454
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_8

    .line 451
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_d
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 448
    :catch_e
    move-exception v3

    goto :goto_5

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_f
    move-exception v3

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private getDrmWallpaper(Landroid/os/Bundle;[B)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "params"
    .parameter "decInfo"

    .prologue
    const v12, 0x4b000

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 362
    const-string/jumbo v10, "width"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 363
    .local v8, width:I
    const-string v10, "height"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 364
    .local v1, height:I
    const-string/jumbo v10, "userId"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 367
    .local v7, userId:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/system/users/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;

    move-result-object v3

    .line 368
    .local v3, is:Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 406
    :goto_0
    return-object v9

    .line 373
    :cond_0
    const/4 v5, 0x0

    .line 374
    .local v5, sampleSize:I
    :try_start_0
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->available()I

    move-result v6

    .line 379
    .local v6, size:I
    if-lt v6, v12, :cond_2

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, i:I
    const/4 v2, 0x2

    :goto_1
    div-int v10, v6, v2

    if-le v10, v12, :cond_1

    .line 383
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 385
    :cond_1
    move v5, v2

    .line 388
    .end local v2           #i:I
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v5, :cond_3

    .line 390
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 393
    :cond_3
    const/4 v10, 0x0

    invoke-static {v3, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 396
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v8, v1}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 401
    :try_start_1
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #size:I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v9

    .line 401
    :try_start_2
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 400
    :goto_2
    throw v9

    .line 397
    :catch_1
    move-exception v10

    .line 401
    :try_start_3
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V

    goto :goto_0

    .line 398
    :catch_2
    move-exception v10

    .line 401
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 402
    :catch_3
    move-exception v10

    goto :goto_2
.end method

.method private static quiteinputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 412
    if-eqz p0, :cond_0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 287
    monitor-exit p0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 279
    :goto_0
    return-object v2

    .line 253
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 256
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    :goto_1
    if-eqz p2, :cond_6

    .line 263
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 266
    const-string/jumbo v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, operator:Ljava/lang/String;
    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLockedSprint(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 269
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 270
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 274
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 259
    .end local v1           #operator:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 273
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #operator:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 276
    .end local v1           #operator:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 279
    :cond_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
