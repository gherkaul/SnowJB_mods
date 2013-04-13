.class Landroid/view/SurfaceView$MyWindow;
.super Lcom/android/internal/view/BaseIWindow;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWindow"
.end annotation


# instance fields
.field mCurHeight:I

.field mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "surfaceView"

    .prologue
    const/4 v0, -0x1

    .line 785
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 847
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 848
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    .line 786
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    .line 787
    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 830
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 4

    .prologue
    .line 833
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 834
    .local v1, surfaceView:Landroid/view/SurfaceView;
    if-eqz v1, :cond_0

    .line 835
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, msg:Landroid/os/Message;
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 845
    return-void
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 791
    iget-object v5, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 792
    .local v2, surfaceView:Landroid/view/SurfaceView;
    if-eqz v2, :cond_1

    .line 795
    invoke-virtual {v2}, Landroid/view/SurfaceView;->isLockScreen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 799
    iget-object v3, v2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 801
    if-eqz p5, :cond_2

    .line 802
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v2, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 803
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 804
    iget-object v3, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 826
    :cond_1
    :goto_1
    return-void

    .line 805
    :cond_2
    :try_start_1
    iget-object v3, v2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 807
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 808
    iget-object v3, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v3

    iget-object v4, v2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 815
    :cond_4
    if-nez p5, :cond_5

    iget-object v5, v2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, p1, :cond_5

    iget-object v5, v2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v5, p2, :cond_6

    :cond_5
    move v1, v4

    .line 816
    .local v1, needToUpdate:Z
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 817
    .local v0, msg:Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v0, Landroid/os/Message;->what:I

    .line 818
    if-eqz p5, :cond_7

    move v5, v4

    :goto_3
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 819
    if-eqz v1, :cond_8

    :goto_4
    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 820
    if-eqz v1, :cond_1

    .line 821
    iget-object v3, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #needToUpdate:Z
    :cond_6
    move v1, v3

    .line 815
    goto :goto_2

    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #needToUpdate:Z
    :cond_7
    move v5, v3

    .line 818
    goto :goto_3

    :cond_8
    move v4, v3

    .line 819
    goto :goto_4
.end method

.method public windowFocusChanged(ZZ)V
    .locals 3
    .parameter "hasFocus"
    .parameter "touchEnabled"

    .prologue
    .line 841
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected focus in surface: focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", touchEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method
