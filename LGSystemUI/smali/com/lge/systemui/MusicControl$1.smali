.class Lcom/lge/systemui/MusicControl$1;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 144
    const-string v0, "MusicControl"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-static {p2}, Lcom/lge/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/lge/systemui/MusicControl;->access$002(Lcom/lge/systemui/MusicControl;Lcom/lge/music/IMediaPlaybackService;)Lcom/lge/music/IMediaPlaybackService;

    .line 146
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v0}, Lcom/lge/systemui/MusicControl;->performUpdate()V

    .line 147
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 150
    const-string v0, "MusicControl"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    iget-boolean v0, v0, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/systemui/Component;->mVisible:Z

    .line 154
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v0, v0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v0}, Lcom/lge/systemui/MusicControl;->removeComponent()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$1;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v0}, Lcom/lge/systemui/MusicControl;->unBindService()V

    .line 160
    :cond_1
    return-void
.end method
