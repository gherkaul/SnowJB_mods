.class Lcom/lge/systemui/MusicControl$2;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/MusicControl;->initMusicControl()V
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
    .line 384
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$2;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "mAnimation"

    .prologue
    .line 392
    const-string v0, "MusicControl"

    const-string v1, "onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$2;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/MusicControl$2;->this$0:Lcom/lge/systemui/MusicControl;

    iget v1, v1, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "mAnimation"

    .prologue
    .line 397
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "mAnimation"

    .prologue
    .line 387
    const-string v0, "MusicControl"

    const-string v1, "onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/lge/systemui/MusicControl$2;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mAlbumAnimationImg:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lge/systemui/MusicControl;->access$100(Lcom/lge/systemui/MusicControl;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/MusicControl$2;->this$0:Lcom/lge/systemui/MusicControl;

    iget v1, v1, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    return-void
.end method
