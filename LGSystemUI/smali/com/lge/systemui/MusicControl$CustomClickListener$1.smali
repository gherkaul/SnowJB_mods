.class Lcom/lge/systemui/MusicControl$CustomClickListener$1;
.super Ljava/lang/Thread;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/MusicControl$CustomClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl$CustomClickListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iput-object p2, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, watingCount:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v3, v3, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v3

    if-nez v3, :cond_0

    if-ge v2, v5, :cond_0

    .line 788
    const-string v3, "MusicControl"

    const-string v4, "mMediaPlayBackService OnBindService Wating .... "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_0
    if-lt v2, v5, :cond_1

    .line 869
    :goto_1
    return-void

    .line 793
    :cond_1
    new-instance v1, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;-><init>(Lcom/lge/systemui/MusicControl$CustomClickListener$1;)V

    .line 865
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 866
    .end local v1           #runnable:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MusicControl"

    const-string v4, "== Thread Run Exception =="

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
