.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mBaseLayer:I

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkit/HTML5VideoView;

.field private static mIsShowingStreaming:Z

.field private static mOverlayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 134
    sput v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 137
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Landroid/webkit/HTML5VideoViewProxy;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$500(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$700(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 445
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->showControllerInFullScreen()V

    .line 446
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 447
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1

    .line 448
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 452
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 453
    return-void

    .line 450
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 17
    .parameter "layerId"
    .parameter "url"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 210
    const/4 v12, 0x0

    .line 211
    .local v12, savePosition:I
    const/4 v3, 0x0

    .line 212
    .local v3, canSkipPrepare:Z
    const/4 v5, 0x0

    .line 215
    .local v5, forceStart:Z
    const/4 v9, 0x0

    .line 217
    .local v9, isPlaying:Z
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 220
    .local v10, mContext:Landroid/content/Context;
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v14, :cond_4

    .line 223
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v14

    if-nez v14, :cond_0

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 224
    const-string v14, "HTML5VideoViewProxy"

    const-string v15, "Try to reenter the full screen mode"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v11

    .line 230
    .local v11, playerState:I
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v14

    move/from16 v0, p0

    if-ne v0, v14, :cond_3

    .line 231
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v12

    .line 232
    const/4 v14, 0x1

    if-eq v11, v14, :cond_1

    const/4 v14, 0x2

    if-eq v11, v14, :cond_1

    const/4 v14, 0x3

    if-ne v11, v14, :cond_7

    :cond_1
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v3, 0x1

    .line 237
    :goto_1
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 238
    const/4 v3, 0x0

    .line 239
    const/4 v14, 0x1

    if-eq v11, v14, :cond_2

    const/4 v14, 0x3

    if-ne v11, v14, :cond_8

    :cond_2
    const/4 v9, 0x1

    .line 241
    :goto_2
    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 242
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getSaveSeekTime()I

    move-result v12

    .line 247
    :cond_3
    if-nez v3, :cond_9

    .line 248
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 254
    .end local v11           #playerState:I
    :cond_4
    :goto_3
    new-instance v14, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v0, p0

    invoke-direct {v14, v15, v0, v12, v3}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 256
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 260
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.android.music.musicservicecommand"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v7, i:Landroid/content/Intent;
    const-string v14, "command"

    const-string/jumbo v15, "pause"

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 267
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 268
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getHeaders()Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 269
    .local v6, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V

    .line 271
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v14, "lge.browser.intent.action.HTML5VIDEO_STREAMING_PLAY"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    .end local v7           #i:Landroid/content/Intent;
    .local v8, i:Landroid/content/Intent;
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v14, "position"

    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v14, "Header"

    invoke-virtual {v8, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 275
    if-nez v12, :cond_5

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    move-object/from16 v0, p2

    if-eq v14, v0, :cond_5

    .line 276
    const/4 v14, 0x1

    move-object/from16 v0, p2

    #calls: Landroid/webkit/HTML5VideoViewProxy;->setDirectFullScreen(Z)V
    invoke-static {v0, v14}, Landroid/webkit/HTML5VideoViewProxy;->access$300(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 278
    :cond_5
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 279
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static {v14}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 280
    const/4 v9, 0x1

    .line 282
    :cond_6
    const-string v14, "isplay"

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.lge.streamingplayer"

    const-string v16, "com.lge.streamingplayer.StreamingPlayer"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v13

    .line 286
    .local v13, settings:Landroid/webkit/WebSettings;
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 287
    const/high16 v14, 0x1000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    :goto_4
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->unRegOverlayReceiver()V

    .line 294
    new-instance v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;

    invoke-direct {v14}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;-><init>()V

    sput-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 312
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 314
    const-string v14, "lge.browser.intent.action.HTML5VIDEO_BROWSER_PLAY"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v14, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object v7, v8

    .line 318
    .end local v8           #i:Landroid/content/Intent;
    .restart local v7       #i:Landroid/content/Intent;
    goto/16 :goto_0

    .line 232
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v6           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #i:Landroid/content/Intent;
    .end local v13           #settings:Landroid/webkit/WebSettings;
    .restart local v11       #playerState:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 239
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 250
    :cond_9
    const/4 v14, 0x1

    if-eq v11, v14, :cond_a

    const/4 v14, 0x3

    if-ne v11, v14, :cond_b

    :cond_a
    const/4 v5, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    .line 290
    .end local v11           #playerState:I
    .restart local v6       #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #i:Landroid/content/Intent;
    .restart local v13       #settings:Landroid/webkit/WebSettings;
    :cond_c
    invoke-virtual {v10, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 316
    .end local v13           #settings:Landroid/webkit/WebSettings;
    :catch_0
    move-exception v14

    move-object v7, v8

    .end local v8           #i:Landroid/content/Intent;
    .restart local v7       #i:Landroid/content/Intent;
    goto/16 :goto_0

    .line 321
    .end local v6           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 322
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 316
    .restart local v6       #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v14

    goto/16 :goto_0
.end method

.method public static exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 329
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 331
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 335
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public static getCurrentPosition()I
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 418
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 420
    :cond_0
    return v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "proxy"

    .prologue
    .line 411
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShowingStreaming()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    return v0
.end method

.method public static onPrepared()V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 439
    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_1

    .line 440
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 442
    :cond_1
    return-void
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 430
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 433
    :cond_0
    return-void
.end method

.method public static pauseAndDispatch()V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 203
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V
    .locals 6
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"
    .parameter "videoLayerId"

    .prologue
    .line 342
    const/4 v1, -0x1

    .line 343
    .local v1, currentVideoLayerId:I
    const/4 v0, 0x0

    .line 346
    .local v0, backFromFullScreenMode:Z
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 348
    .local v3, mContext:Landroid/content/Context;
    const-string v4, "command"

    const-string/jumbo v5, "pause"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isShowingStreaming()Z

    move-result v4

    if-nez v4, :cond_0

    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static {p2}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_2

    .line 357
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v1

    .line 358
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 364
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-eq v1, p4, :cond_2

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v4, p2, :cond_2

    .line 368
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 369
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 370
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p0, p2}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 371
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p2}, Landroid/webkit/HTML5VideoView;->reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 376
    :cond_2
    if-nez v0, :cond_3

    if-ne v1, p4, :cond_3

    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 384
    :cond_3
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_5

    .line 385
    if-nez v0, :cond_4

    .line 386
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, v5}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 388
    :cond_4
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 390
    :cond_5
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 391
    new-instance v4, Landroid/webkit/HTML5VideoInline;

    invoke-direct {v4, p4, p1}, Landroid/webkit/HTML5VideoInline;-><init>(II)V

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 392
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, p0, v5}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 394
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p2}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 395
    :cond_6
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v4, p2, :cond_7

    .line 397
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 401
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->start()V

    goto/16 :goto_0

    .line 403
    :cond_7
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v4, :cond_0

    .line 406
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto/16 :goto_0
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 424
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 427
    :cond_0
    return-void
.end method

.method public static setBaseLayer(I)V
    .locals 7
    .parameter "layer"

    .prologue
    .line 169
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isShowingStreaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 173
    sput p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 175
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 176
    .local v0, currentVideoLayerId:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 178
    .local v3, surfTexture:Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 180
    .local v4, textureName:I
    if-eqz p0, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 181
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 182
    .local v2, playerState:I
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 184
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 187
    .local v1, foundInTree:Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    if-nez v1, :cond_1

    .line 189
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 190
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->deleteSurfaceTexture()V

    .line 195
    .end local v0           #currentVideoLayerId:I
    .end local v1           #foundInTree:Z
    .end local v2           #playerState:I
    .end local v3           #surfTexture:Landroid/graphics/SurfaceTexture;
    .end local v4           #textureName:I
    :cond_1
    return-void
.end method

.method private static setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 160
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 161
    return-void
.end method

.method private static setShowingStreaming(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 144
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    .line 145
    return-void
.end method

.method public static unRegOverlayReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, mContext:Landroid/content/Context;
    :try_start_0
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    :cond_0
    return-void

    .line 153
    :catchall_0
    move-exception v1

    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    throw v1

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method
