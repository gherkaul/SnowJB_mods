.class Landroid/media/SmartRingtone$2;
.super Ljava/lang/Object;
.source "SmartRingtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SmartRingtone;->setMediaPlayer(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SmartRingtone;


# direct methods
.method constructor <init>(Landroid/media/SmartRingtone;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 129
    invoke-static {}, Landroid/media/SmartRingtone;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Landroid/media/SmartRingtone$2;->this$0:Landroid/media/SmartRingtone;

    invoke-virtual {v0}, Landroid/media/SmartRingtone;->restoreVolumeAfterStop()V

    .line 131
    return-void
.end method
