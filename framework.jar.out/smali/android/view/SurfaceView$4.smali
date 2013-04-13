.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/S3DSurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field private s3d_curr_brightness_val:F

.field private s3d_curr_conv_val:F

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceView$4;->s3d_curr_conv_val:F

    .line 1006
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/SurfaceView$4;->s3d_curr_brightness_val:F

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 10
    .parameter "dirty"

    .prologue
    const/4 v9, 0x0

    .line 928
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v6, :cond_0

    .line 929
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    and-int/lit16 v7, v7, -0x100

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 930
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    iget-object v8, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v8, v8, Landroid/view/SurfaceView;->mRequestedS3DType:I

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 932
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mIsDirty:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x88

    if-ne v6, v7, :cond_0

    .line 934
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-boolean v9, v6, Landroid/view/SurfaceView;->mIsDirty:Z

    .line 935
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/view/SurfaceView;->mIsUsingCanvas:Z

    .line 936
    invoke-virtual {p0, v9}, Landroid/view/SurfaceView$4;->setS3DType(I)V

    .line 940
    :cond_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_3

    .line 947
    if-nez p1, :cond_2

    .line 948
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 949
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 951
    :cond_1
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 952
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object p1, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 956
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 963
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 964
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 983
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 957
    .restart local v0       #c:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 958
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 971
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 972
    .local v4, now:J
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 973
    .local v2, nextTime:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 975
    sub-long v6, v2, v4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 980
    :cond_5
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 981
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 983
    const/4 v0, 0x0

    goto :goto_1

    .line 976
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 863
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 866
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    monitor-exit v1

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public compensateS3DBrightness(F)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1127
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1130
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1134
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->compensateS3DBrightness(Landroid/view/IWindow;F)V

    .line 1135
    iput p1, p0, Landroid/view/SurfaceView$4;->s3d_curr_brightness_val:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getS3DConvergenceDisparity()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1076
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v3, :cond_0

    move v0, v2

    .line 1090
    :goto_0
    return v0

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 1080
    .local v0, disparity:F
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_2

    .line 1081
    :cond_1
    const-string v3, "Real3D"

    const-string/jumbo v4, "session is not made"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1082
    goto :goto_0

    .line 1086
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->getS3DConvDisparity(Landroid/view/IWindow;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1087
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    move v0, v2

    .line 1090
    goto :goto_0
.end method

.method public getS3DInfo()Landroid/view/S3DInfo;
    .locals 3

    .prologue
    .line 1046
    invoke-virtual {p0}, Landroid/view/SurfaceView$4;->getS3DType()I

    move-result v1

    .line 1048
    .local v1, type:I
    new-instance v0, Landroid/view/S3DInfo;

    invoke-direct {v0}, Landroid/view/S3DInfo;-><init>()V

    .line 1049
    .local v0, info:Landroid/view/S3DInfo;
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_0

    .line 1056
    :goto_0
    return-object v0

    .line 1051
    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 1052
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/S3DInfo;->disableAutoDetection:Z

    .line 1053
    :cond_1
    and-int/lit8 v2, v1, 0xf

    iput v2, v0, Landroid/view/S3DInfo;->type:I

    .line 1054
    and-int/lit8 v2, v1, 0x70

    iput v2, v0, Landroid/view/S3DInfo;->order:I

    goto :goto_0
.end method

.method public getS3DType()I
    .locals 4

    .prologue
    .line 1024
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_1

    .line 1025
    :cond_0
    const/4 v1, 0x0

    .line 1032
    :goto_0
    return v1

    .line 1026
    :cond_1
    const/4 v1, 0x0

    .line 1028
    .local v1, type:I
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getS3DType(Landroid/view/IWindow;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getS3DViewMode()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1110
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_0

    .line 1122
    :goto_0
    return v1

    .line 1112
    :cond_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v2, :cond_2

    .line 1113
    :cond_1
    const-string v2, "Real3D"

    const-string/jumbo v3, "session is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getS3DViewMode(Landroid/view/IWindow;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1119
    .local v1, viewMode:I
    goto :goto_0

    .line 1120
    .end local v1           #viewMode:I
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 873
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 875
    monitor-exit v1

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 879
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 880
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 881
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 882
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 884
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 897
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 898
    const/4 p1, 0x4

    .line 900
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 901
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 904
    :cond_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    const/4 v1, 0x1

    .line 913
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 915
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 916
    return-void

    .line 914
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumPositive(F)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1142
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1145
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setMaximumPositive(Landroid/view/IWindow;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMinimumNegative(F)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1156
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1159
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1163
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setMinimumNegative(Landroid/view/IWindow;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setS3DConvergenceDisparity(F)V
    .locals 2
    .parameter "disparity"

    .prologue
    .line 1060
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1063
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setS3DConvDisparity(Landroid/view/IWindow;F)V

    .line 1069
    iput p1, p0, Landroid/view/SurfaceView$4;->s3d_curr_conv_val:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setS3DInfo(Landroid/view/S3DInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1036
    if-nez p1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v1, :cond_0

    .line 1041
    iget-boolean v1, p1, Landroid/view/S3DInfo;->disableAutoDetection:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    :goto_1
    iget v2, p1, Landroid/view/S3DInfo;->type:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/view/S3DInfo;->order:I

    or-int v0, v1, v2

    .line 1042
    .local v0, type:I
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView$4;->setS3DType(I)V

    goto :goto_0

    .line 1041
    .end local v0           #type:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setS3DType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1009
    and-int/lit8 v0, p1, 0xf

    .line 1010
    .local v0, t:I
    if-gez v0, :cond_1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 1011
    const-string v1, "SurfaceView"

    const-string v2, "Invalid surface type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v1, Landroid/view/SurfaceView;->mRequestedS3DType:I

    .line 1018
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v1, v2, v2}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    goto :goto_0
.end method

.method public setS3DViewMode(I)V
    .locals 2
    .parameter "viewMode"

    .prologue
    .line 1095
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1098
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1103
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setS3DViewMode(Landroid/view/IWindow;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSizeFromLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 887
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 889
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 891
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 910
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 989
    if-eqz p1, :cond_0

    .line 990
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 991
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 994
    :cond_0
    return-void
.end method
