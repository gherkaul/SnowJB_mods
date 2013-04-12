.class Lcom/lge/systemui/MediaStorageNotiController$2;
.super Landroid/os/Handler;
.source "MediaStorageNotiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MediaStorageNotiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MediaStorageNotiController;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MediaStorageNotiController;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lge/systemui/MediaStorageNotiController$2;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$2;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    move-object v2, v1

    move v4, v3

    move v5, v3

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    invoke-static/range {v0 .. v5}, Lcom/lge/systemui/MediaStorageNotiController;->access$200(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    .line 276
    :cond_0
    return-void
.end method
