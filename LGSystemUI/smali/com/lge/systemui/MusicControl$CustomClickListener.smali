.class Lcom/lge/systemui/MusicControl$CustomClickListener;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomClickListener"
.end annotation


# instance fields
.field private mControlFlag:I

.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/MusicControl;I)V
    .locals 1
    .parameter
    .parameter "flag"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    .line 773
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->mControlFlag:I

    .line 774
    iput p2, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->mControlFlag:I

    .line 775
    return-void
.end method

.method static synthetic access$1500(Lcom/lge/systemui/MusicControl$CustomClickListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 757
    iget v0, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->mControlFlag:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 778
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 779
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v1}, Lcom/lge/systemui/MusicControl;->onBindService()V

    .line 783
    :cond_0
    new-instance v1, Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/systemui/MusicControl$CustomClickListener$1;-><init>(Lcom/lge/systemui/MusicControl$CustomClickListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->start()V

    .line 872
    return-void
.end method
