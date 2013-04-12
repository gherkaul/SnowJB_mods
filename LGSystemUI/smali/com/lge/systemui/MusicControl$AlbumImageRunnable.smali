.class Lcom/lge/systemui/MusicControl$AlbumImageRunnable;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumImageRunnable"
.end annotation


# instance fields
.field private final albumIdUri:Landroid/net/Uri;

.field private mNoAlbumImage:Z

.field private mbAnimation:Z

.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/MusicControl;ZZ)V
    .locals 1
    .parameter
    .parameter "noAlbumImage"
    .parameter "animation"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->albumIdUri:Landroid/net/Uri;

    .line 615
    iput-boolean p2, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mNoAlbumImage:Z

    .line 616
    iput-boolean p3, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    .line 617
    return-void
.end method

.method private getArtworkFromFile(Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "uri"
    .parameter "albumid"

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 734
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v4, v4, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 735
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getArtworkFromFile ParcelFileDescriptor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v3, :cond_0

    .line 737
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 738
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 746
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :cond_0
    if-eqz v3, :cond_1

    .line 747
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    :cond_1
    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 741
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    if-eqz v3, :cond_1

    .line 747
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 749
    :catch_2
    move-exception v1

    .line 750
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 743
    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    if-eqz v3, :cond_1

    .line 747
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 749
    :catch_4
    move-exception v1

    .line 750
    const-string v4, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 745
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 746
    if-eqz v3, :cond_2

    .line 747
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 751
    :cond_2
    :goto_1
    throw v4

    .line 749
    :catch_5
    move-exception v1

    .line 750
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v5, "MusicControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 620
    const-string v11, "MusicControl"

    const-string v12, "AlbumImageRunnable"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v13, v13, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v12, v12, v13

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    :try_start_0
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    .line 625
    .local v2, audioId:J
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mNoAlbumImage:Z

    if-eqz v11, :cond_1

    .line 626
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_0

    .line 628
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 728
    .end local v2           #audioId:J
    :cond_0
    :goto_0
    return-void

    .line 630
    .restart local v2       #audioId:J
    :cond_1
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-ltz v11, :cond_5

    .line 631
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://media/external/audio/media/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/albumart"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 632
    .local v10, uri:Landroid/net/Uri;
    const-string v11, "MusicControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "URI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v11, v11, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "r"

    invoke-virtual {v11, v10, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 634
    .local v9, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_4

    .line 635
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 638
    .local v7, fd:Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 639
    .local v4, bm:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 640
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 648
    .end local v4           #bm:Landroid/graphics/Bitmap;
    :goto_1
    :try_start_2
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_2

    .line 649
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 653
    :cond_2
    :try_start_3
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 654
    const/4 v9, 0x0

    .line 655
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 642
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_4
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 644
    .end local v4           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 645
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v11, "MusicControl"

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 721
    .end local v2           #audioId:J
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 722
    .local v5, e:Landroid/os/RemoteException;
    const-string v11, "MusicControl"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 656
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v2       #audioId:J
    .restart local v7       #fd:Ljava/io/FileDescriptor;
    .restart local v9       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 657
    .local v6, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v11, "MusicControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 723
    .end local v2           #audioId:J
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    .line 724
    .local v5, e:Ljava/io/FileNotFoundException;
    const-string v11, "MusicControl"

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #audioId:J
    .restart local v9       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_4
    :try_start_7
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_0

    .line 662
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 725
    .end local v2           #audioId:J
    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v5

    .line 726
    .local v5, e:Ljava/lang/Exception;
    const-string v11, "MusicControl"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #audioId:J
    :cond_5
    :try_start_8
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/music/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    .line 667
    .local v0, albumId:J
    const/4 v10, 0x0

    .line 668
    .restart local v10       #uri:Landroid/net/Uri;
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-ltz v11, :cond_6

    .line 669
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->albumIdUri:Landroid/net/Uri;

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v10

    .line 672
    :cond_6
    if-eqz v10, :cond_d

    .line 673
    const/4 v8, 0x0

    .line 675
    .local v8, in:Ljava/io/InputStream;
    :try_start_9
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v11, v11, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 676
    const-string v11, "MusicControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openInputStream URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v8, v11, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 678
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_8

    .line 679
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 683
    :goto_2
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_7

    .line 684
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    .line 706
    :cond_7
    if-eqz v8, :cond_0

    .line 707
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    .line 708
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 681
    :cond_8
    :try_start_b
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    .line 686
    .end local v4           #bm:Landroid/graphics/Bitmap;
    :catch_5
    move-exception v6

    .line 687
    .local v6, ex:Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-direct {p0, v10, v0, v1}, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->getArtworkFromFile(Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 688
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    if-nez v11, :cond_c

    .line 689
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 690
    if-nez v4, :cond_a

    .line 691
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    :goto_3
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_9

    .line 696
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 706
    :cond_9
    :goto_4
    if-eqz v8, :cond_0

    .line 707
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3

    .line 708
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 710
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    .line 711
    .local v6, ex:Ljava/lang/Exception;
    :try_start_e
    const-string v11, "MusicControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 693
    .local v6, ex:Ljava/io/FileNotFoundException;
    :cond_a
    :try_start_f
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    invoke-virtual {v11, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 705
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v6           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    .line 706
    if-eqz v8, :cond_b

    .line 707
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3

    .line 708
    const/4 v8, 0x0

    .line 712
    :cond_b
    :goto_5
    :try_start_11
    throw v11
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 699
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #ex:Ljava/io/FileNotFoundException;
    :cond_c
    :try_start_12
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_9

    .line 701
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_4

    .line 710
    :catch_7
    move-exception v6

    .line 711
    .local v6, ex:Ljava/lang/Exception;
    :try_start_13
    const-string v11, "MusicControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v6           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 711
    .restart local v6       #ex:Ljava/lang/Exception;
    const-string v12, "MusicControl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 715
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v8           #in:Ljava/io/InputStream;
    :cond_d
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$1300(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v12, v12, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02012a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    iget-boolean v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->mbAnimation:Z

    if-eqz v11, :cond_0

    .line 717
    iget-object v11, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    iget v12, v12, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/lge/systemui/MusicControl$AlbumImageRunnable;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v12}, Lcom/lge/systemui/MusicControl;->access$1400(Lcom/lge/systemui/MusicControl;)Landroid/view/animation/Animation;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0
.end method
