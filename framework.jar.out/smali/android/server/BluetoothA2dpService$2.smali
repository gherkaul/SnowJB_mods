.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 43
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 387
    .local v13, device:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 390
    .local v32, state:I
    packed-switch v32, :pswitch_data_0

    .line 794
    .end local v32           #state:I
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v32       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 395
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 398
    .end local v32           #state:I
    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 399
    monitor-enter p0

    .line 401
    if-eqz v13, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 402
    :cond_2
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Error! device or mAudioDevices.get(device) is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-exit p0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 405
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 407
    .restart local v32       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    move/from16 v0, v32

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v13, v0, v3}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 409
    .end local v32           #state:I
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    :cond_5
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 411
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 412
    .local v33, streamType:I
    const/4 v2, 0x3

    move/from16 v0, v33

    if-ne v0, v2, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v31

    .line 415
    .local v31, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v3, v2}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, address:Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 419
    .local v26, newVolLevel:I
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 421
    .local v27, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 422
    .local v28, path:Ljava/lang/String;
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 424
    :cond_6
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 429
    .end local v9           #address:Ljava/lang/String;
    .end local v26           #newVolLevel:I
    .end local v27           #oldVolLevel:I
    .end local v28           #path:Ljava/lang/String;
    .end local v31           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v33           #streamType:I
    :cond_7
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "track"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    :cond_a
    const-string v2, "id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 440
    .local v15, extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_b

    .line 441
    const-wide/16 v15, 0x0

    .line 442
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    const-string v2, "ListSize"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 444
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_c

    .line 445
    const-wide/16 v15, 0x0

    .line 446
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 448
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_d

    .line 449
    const-wide/16 v15, 0x0

    .line 450
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    const-string/jumbo v2, "position"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 452
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_e

    .line 453
    const-wide/16 v15, 0x0

    .line 454
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-wide v0, v15

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v0, v1}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 456
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meta data info is trackname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " artist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMediaNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mediaCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPostion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v28, v10, v18

    .line 461
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 460
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 464
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v15           #extra:J
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :cond_f
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 465
    const-string/jumbo v2, "track"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 466
    .local v11, currentTrackName:Ljava/lang/String;
    if-eqz v11, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v11}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    :cond_12
    const-string v2, "id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 477
    .restart local v15       #extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_13

    .line 478
    const-wide/16 v15, 0x0

    .line 479
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    const-string v2, "ListSize"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 481
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_14

    .line 482
    const-wide/16 v15, 0x0

    .line 483
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 485
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_15

    .line 486
    const-wide/16 v15, 0x0

    .line 487
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    const-string/jumbo v2, "position"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 489
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_16

    .line 490
    const-wide/16 v15, 0x0

    .line 491
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-wide v0, v15

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v0, v1}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    aget-object v28, v10, v18

    .line 493
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 492
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 496
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v15           #extra:J
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :cond_17
    const/16 v29, 0x0

    .line 497
    .local v29, playStatus:Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    .line 498
    .local v25, meta:Landroid/os/Bundle;
    if-nez v25, :cond_18

    .line 499
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Error! meta is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    :cond_18
    const-string/jumbo v2, "playing"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 503
    const-string/jumbo v2, "playing"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    .line 514
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-wide/16 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 517
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v4

    move/from16 v0, v29

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v3, v0, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3302(Landroid/server/BluetoothA2dpService;I)I

    .line 518
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayState changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v28, v10, v18

    .line 520
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 519
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 504
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :cond_1a
    const-string/jumbo v2, "playstate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 505
    const-string/jumbo v2, "playstate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    goto/16 :goto_3

    .line 507
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/16 v29, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_1c
    const/16 v29, 0x0

    goto :goto_5

    .line 522
    .end local v11           #currentTrackName:Ljava/lang/String;
    .end local v25           #meta:Landroid/os/Bundle;
    .end local v29           #playStatus:Z
    :cond_1d
    const-string v2, "com.android.music.playstatusresponse"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 523
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Received PLAYSTATUS_RESPONSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    .line 525
    .restart local v15       #extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-gez v2, :cond_1e

    .line 526
    const-wide/16 v15, 0x0

    .line 527
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1f

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-wide/16 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 531
    :cond_1f
    const-string/jumbo v2, "playing"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 532
    .restart local v29       #playStatus:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v4

    move/from16 v0, v29

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v3, v0, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3302(Landroid/server/BluetoothA2dpService;I)I

    .line 533
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Sending Playstatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    .end local v15           #extra:J
    .end local v29           #playStatus:Z
    :cond_20
    const-string v2, "android.media.MediaPlayer.action.METADATA_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 536
    const-string/jumbo v2, "uripath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v38

    check-cast v38, Landroid/net/Uri;

    .line 537
    .local v38, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3500(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 540
    if-eqz v38, :cond_25

    .line 542
    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v39

    .line 543
    .local v39, uriPath:Ljava/lang/String;
    const-string v2, "//"

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v41

    .line 545
    .local v41, value:[Ljava/lang/String;
    if-eqz v41, :cond_23

    move-object/from16 v0, v41

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    .line 546
    const/4 v2, 0x1

    aget-object v2, v41, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 547
    .local v42, value1:[Ljava/lang/String;
    if-eqz v42, :cond_23

    move-object/from16 v0, v42

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_23

    .line 549
    const/4 v2, 0x0

    aget-object v2, v42, v2

    const-string/jumbo v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    aget-object v2, v42, v2

    const-string v3, "external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    const/4 v2, 0x0

    aget-object v2, v42, v2

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 552
    :cond_22
    const-string v2, "Internal audio file data, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    .end local v42           #value1:[Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mIgnorePathList:[Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_25

    aget-object v19, v10, v18

    .line 559
    .local v19, ignoreUri:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v34

    .line 560
    .local v34, stringLen:I
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v34

    if-lt v2, v0, :cond_24

    .line 561
    const/4 v2, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 562
    const-string v2, "Internal audio file data, ignoring__"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_24
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 588
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #ignoreUri:Ljava/lang/String;
    .end local v21           #len$:I
    .end local v34           #stringLen:I
    .end local v39           #uriPath:Ljava/lang/String;
    .end local v41           #value:[Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v36

    .line 590
    .local v36, tempMediaNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3802(Landroid/server/BluetoothA2dpService;Ljava/lang/Long;)Ljava/lang/Long;

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "duration"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2902(Landroid/server/BluetoothA2dpService;J)J

    .line 593
    const-string/jumbo v2, "playstate"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 594
    .local v29, playStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlaySatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;)I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_26

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move/from16 v0, v29

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3302(Landroid/server/BluetoothA2dpService;I)I

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_26

    aget-object v28, v10, v18

    .line 599
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 598
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 603
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :cond_26
    const-string v2, "Metadata received"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playstate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 608
    if-eqz v38, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3500(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 610
    const-string v2, "Update for same Uri, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v38

    #setter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3502(Landroid/server/BluetoothA2dpService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 615
    const/16 v22, 0x0

    .line 617
    .local v22, mCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3500(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 622
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3500(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mCursorCols:[Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3900(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 625
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    const-string/jumbo v2, "title"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 629
    .local v35, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v35

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$4000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    const-string v2, "artist"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v35

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$4000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    const-string v2, "album"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v35

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$4000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    const-string v2, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 640
    .local v23, mediaNumber:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Artist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Album is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 645
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 646
    const/16 v22, 0x0

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->getTrackId(Ljava/lang/String;)J
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$4100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 648
    .local v37, tmpId:Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tmpId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "is_music=1"

    const/4 v6, 0x0

    const-string/jumbo v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 671
    const/16 v22, 0x0

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 690
    .end local v23           #mediaNumber:J
    .end local v35           #temp:Ljava/lang/String;
    .end local v37           #tmpId:Ljava/lang/Long;
    :cond_28
    :goto_8
    const-string v2, "Set default metadata in case the values are null"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 695
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2c

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "0"

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2d

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "0"

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2e

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "0"

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2802(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    :cond_2e
    const-string v2, "end of parsing mData"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v28, v10, v18

    .line 706
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 705
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 673
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 674
    .local v14, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 676
    if-eqz v22, :cond_2f

    .line 677
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$4202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .line 710
    .end local v14           #e:Ljava/lang/Exception;
    .end local v22           #mCursor:Landroid/database/Cursor;
    .end local v29           #playStatus:I
    .end local v36           #tempMediaNumber:Ljava/lang/String;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_30
    const-string v2, "com.android.music.playersettingsresponse"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 711
    const-string v2, "Response"

    const/16 v3, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 715
    .local v17, getResponse:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 716
    :try_start_3
    new-instance v40, Ljava/lang/Integer;

    move-object/from16 v0, v40

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 717
    .local v40, val:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$4300(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    :cond_31
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 722
    packed-switch v17, :pswitch_data_1

    goto/16 :goto_0

    .line 724
    :pswitch_2
    const-string v2, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 725
    .local v12, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedAttributes"

    array-length v5, v12

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v12}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 721
    .end local v12           #data:[B
    .end local v40           #val:Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 731
    .restart local v40       #val:Ljava/lang/Integer;
    :pswitch_3
    const-string v2, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 732
    .restart local v12       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedValues"

    array-length v5, v12

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v12}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 739
    .end local v12           #data:[B
    :pswitch_4
    const-string v2, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 740
    .restart local v12       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->updateLocalPlayerSettings([B)V
    invoke-static {v2, v12}, Landroid/server/BluetoothA2dpService;->access$4400(Landroid/server/BluetoothA2dpService;[B)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateCurrentValues"

    array-length v5, v12

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v12}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 745
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v28, v10, v18

    .line 746
    .restart local v28       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "UpdateCurrentValues"

    array-length v4, v12

    move-object/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v0, v3, v4, v12}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    .line 745
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 752
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #data:[B
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v28           #path:Ljava/lang/String;
    :pswitch_5
    const-string v2, "AttributeStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 753
    .local v7, text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateAttributesText"

    array-length v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v2 .. v7}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 760
    .end local v7           #text:[Ljava/lang/String;
    :pswitch_6
    const-string v2, "ValueStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 761
    .restart local v7       #text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateValuesText"

    array-length v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v2 .. v7}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 771
    .end local v7           #text:[Ljava/lang/String;
    .end local v17           #getResponse:I
    .end local v40           #val:Ljava/lang/Integer;
    :cond_33
    const-string v2, "QCT_BT_CNDTL_PATCH_SCMST"

    invoke-static {v2}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.a2dp.action.SINK_STATUS_QUERY"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    const-string/jumbo v2, "received ACTION_SINK_STATUS_QUERY start"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    .line 777
    const/16 v30, 0x0

    .line 782
    .local v30, scms_t_status:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "android.bluetooth.device.extra.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothA2dpService;->getSinkScmstStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    .line 784
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.bluetooth.a2dp.action.SINK_STATUS_RESP"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v20, intent_query:Landroid/content/Intent;
    const-string v2, "android.bluetooth.a2dp.extra.EXTRA_SINK_SCMS_T_STATUS"

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 791
    const-string/jumbo v2, "received ACTION_SINK_STATUS_QUERY end"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3600(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
