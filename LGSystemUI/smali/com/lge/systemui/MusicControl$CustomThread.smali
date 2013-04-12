.class Lcom/lge/systemui/MusicControl$CustomThread;
.super Ljava/lang/Thread;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomThread"
.end annotation


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/MusicControl;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "runnable"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$CustomThread;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemui/MusicControl$CustomThread;->runnable:Ljava/lang/Runnable;

    .line 515
    iput-object p2, p0, Lcom/lge/systemui/MusicControl$CustomThread;->runnable:Ljava/lang/Runnable;

    .line 516
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$CustomThread;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMusicHandler:Lcom/lge/systemui/MusicControl$MusicHandler;
    invoke-static {v0}, Lcom/lge/systemui/MusicControl;->access$400(Lcom/lge/systemui/MusicControl;)Lcom/lge/systemui/MusicControl$MusicHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/MusicControl$CustomThread;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/systemui/MusicControl$MusicHandler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method
