.class Lcom/lge/systemui/MediaStorageNotiController$1$1;
.super Ljava/lang/Object;
.source "MediaStorageNotiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/MediaStorageNotiController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/systemui/MediaStorageNotiController$1;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MediaStorageNotiController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/systemui/MediaStorageNotiController$1$1;->this$1:Lcom/lge/systemui/MediaStorageNotiController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/lge/systemui/MediaStorageNotiController$1$1;->this$1:Lcom/lge/systemui/MediaStorageNotiController$1;

    iget-object v0, v0, Lcom/lge/systemui/MediaStorageNotiController$1;->this$0:Lcom/lge/systemui/MediaStorageNotiController;

    move-object v2, v1

    move v4, v3

    move v5, v3

    #calls: Lcom/lge/systemui/MediaStorageNotiController;->setMediaStorageNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V
    invoke-static/range {v0 .. v5}, Lcom/lge/systemui/MediaStorageNotiController;->access$200(Lcom/lge/systemui/MediaStorageNotiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZ)V

    .line 166
    return-void
.end method
