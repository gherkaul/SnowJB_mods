.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lge.browser.intent.action.HTML5VIDEO_BROWSER_PLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const-string/jumbo v1, "position"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 300
    .local v0, position:I
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen()V

    .line 301
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdateManually(I)V

    .line 302
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 303
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->pause()V

    .line 304
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 307
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V
    invoke-static {v3}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$500(Z)V

    .line 310
    .end local v0           #position:I
    :cond_1
    return-void
.end method
