.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4019
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4019
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4022
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 4023
    .local v10, action:Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioServiceBroadcastReceiver()..onReceive..... action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4028
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 4031
    .local v22, dockState:I
    packed-switch v22, :pswitch_data_0

    .line 4046
    const/16 v19, 0x0

    .line 4048
    .local v19, config:I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v19

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4276
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_0
    :goto_1
    return-void

    .line 4033
    .restart local v22       #dockState:I
    :pswitch_0
    const/16 v19, 0x7

    .line 4034
    .restart local v19       #config:I
    goto :goto_0

    .line 4036
    .end local v19           #config:I
    :pswitch_1
    const/16 v19, 0x6

    .line 4037
    .restart local v19       #config:I
    goto :goto_0

    .line 4039
    .end local v19           #config:I
    :pswitch_2
    const/16 v19, 0x8

    .line 4040
    .restart local v19       #config:I
    goto :goto_0

    .line 4042
    .end local v19           #config:I
    :pswitch_3
    const/16 v19, 0x9

    .line 4043
    .restart local v19       #config:I
    goto :goto_0

    .line 4049
    .end local v19           #config:I
    .end local v22           #dockState:I
    :cond_1
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4050
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4054
    .local v28, state:I
    const/16 v21, 0x20

    .line 4060
    .local v21, device:I
    const/4 v12, 0x0

    .line 4062
    .local v12, address:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    .line 4063
    .local v17, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v17, :cond_2

    .line 4064
    const-string v3, "AudioService"

    const-string v4, "AudioServiceBroadcastReceiver().. BT device is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4068
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 4069
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v16

    .line 4070
    .local v16, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v16, :cond_4

    .line 4071
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4087
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioServiceBroadcastReceiver().. unknown class..... class = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    :goto_2
    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4095
    const-string v12, ""

    .line 4098
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_5

    const/16 v20, 0x1

    .line 4099
    .local v20, connected:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v20

    move/from16 v1, v21

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v12}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4100
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4101
    :try_start_0
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioServiceBroadcastReceiver().. connected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    if-eqz v20, :cond_6

    .line 4103
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v17

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4108
    :goto_4
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4077
    .end local v20           #connected:Z
    :sswitch_0
    const/16 v21, 0x20

    .line 4078
    goto :goto_2

    .line 4091
    :cond_4
    const-string v3, "AudioService"

    const-string v4, "AudioServiceBroadcastReceiver().. BT class is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4098
    :cond_5
    const/16 v20, 0x0

    goto :goto_3

    .line 4105
    .restart local v20       #connected:Z
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 4106
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 4110
    .end local v12           #address:Ljava/lang/String;
    .end local v16           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v17           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v20           #connected:Z
    .end local v21           #device:I
    .end local v28           #state:I
    :cond_7
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4112
    :cond_8
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4113
    .restart local v28       #state:I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 4114
    .local v13, alsaCard:I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 4115
    .local v14, alsaDevice:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_9

    const/4 v3, -0x1

    if-ne v14, v3, :cond_9

    const-string v26, ""

    .line 4117
    .local v26, params:Ljava/lang/String;
    :goto_5
    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v21, 0x2000

    .line 4119
    .restart local v21       #device:I
    :goto_6
    const-string v4, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcast Receiver: Got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v3, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", card: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", device: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_d

    .line 4124
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, v26

    #calls: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v4, v3, v0, v1}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;ZILjava/lang/String;)Z

    goto/16 :goto_1

    .line 4115
    .end local v21           #device:I
    .end local v26           #params:Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    .line 4117
    .restart local v26       #params:Ljava/lang/String;
    :cond_a
    const/16 v21, 0x4000

    goto :goto_6

    .line 4119
    .restart local v21       #device:I
    :cond_b
    const-string v3, "ACTION_USB_AUDIO_DEVICE_PLUG"

    goto :goto_7

    .line 4124
    :cond_c
    const/4 v3, 0x0

    goto :goto_8

    .line 4126
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v21

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 4128
    .end local v13           #alsaCard:I
    .end local v14           #alsaDevice:I
    .end local v21           #device:I
    .end local v26           #params:Ljava/lang/String;
    .end local v28           #state:I
    :cond_e
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4130
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 4144
    const-string/jumbo v29, "off"

    .line 4146
    .local v29, tty_mode:Ljava/lang/String;
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tty_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4134
    .end local v29           #tty_mode:Ljava/lang/String;
    :pswitch_4
    const-string v29, "full"

    .line 4135
    .restart local v29       #tty_mode:Ljava/lang/String;
    goto :goto_9

    .line 4137
    .end local v29           #tty_mode:Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v29, "vco"

    .line 4138
    .restart local v29       #tty_mode:Ljava/lang/String;
    goto :goto_9

    .line 4140
    .end local v29           #tty_mode:Ljava/lang/String;
    :pswitch_6
    const-string v29, "hco"

    .line 4141
    .restart local v29       #tty_mode:Ljava/lang/String;
    goto :goto_9

    .line 4147
    .end local v29           #tty_mode:Ljava/lang/String;
    :cond_f
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4148
    const/4 v15, 0x0

    .line 4149
    .local v15, broadcast:Z
    const/16 v27, -0x1

    .line 4150
    .local v27, scoAudioState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 4151
    :try_start_2
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 4153
    .local v18, btState:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_11

    .line 4157
    :cond_10
    const/4 v15, 0x1

    .line 4159
    :cond_11
    packed-switch v18, :pswitch_data_2

    .line 4181
    :cond_12
    :goto_a
    const/4 v15, 0x0

    .line 4184
    :cond_13
    :goto_b
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4185
    if-eqz v15, :cond_0

    .line 4186
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v27

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;I)V

    .line 4189
    new-instance v24, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4190
    .local v24, newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4191
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4161
    .end local v24           #newIntent:Landroid/content/Intent;
    :pswitch_7
    const/16 v27, 0x1

    .line 4162
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_13

    .line 4165
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    goto :goto_b

    .line 4184
    .end local v18           #btState:I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 4169
    .restart local v18       #btState:I
    :pswitch_8
    const/16 v27, 0x0

    .line 4170
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    .line 4171
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_b

    .line 4174
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_12

    .line 4177
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_a

    .line 4193
    .end local v15           #broadcast:Z
    .end local v18           #btState:I
    .end local v27           #scoAudioState:I
    :cond_14
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4194
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;Z)Z

    .line 4195
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4198
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    #setter for: Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4, v3}, Landroid/media/AudioService;->access$7702(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 4200
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, -0x1

    #setter for: Landroid/media/AudioService;->mScoConnectionState:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$7802(Landroid/media/AudioService;I)I

    .line 4201
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)V

    .line 4202
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Z

    .line 4205
    new-instance v24, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4206
    .restart local v24       #newIntent:Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4208
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4210
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 4211
    .local v11, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v11, :cond_0

    .line 4212
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v4}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v11, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_1

    .line 4215
    .end local v11           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v24           #newIntent:Landroid/content/Intent;
    :cond_15
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4216
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v25

    .line 4219
    .local v25, packageName:Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 4220
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v25

    #calls: Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4223
    .end local v25           #packageName:Ljava/lang/String;
    :cond_16
    const-string/jumbo v3, "qualcomm.intent.action.FM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4224
    const-string v3, "AudioService"

    const-string v4, "FM Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4226
    .restart local v28       #state:I
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_17

    .line 4227
    const v3, 0x8000

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4230
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const v5, 0x8000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4231
    :cond_17
    if-nez v28, :cond_0

    .line 4232
    const v3, 0x8000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const v4, 0x8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4237
    .end local v28           #state:I
    :cond_18
    const-string/jumbo v3, "qualcomm.intent.action.FMTX"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4238
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4239
    .restart local v28       #state:I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FM Tx Intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4241
    .local v23, isConnected:Z
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_19

    if-nez v23, :cond_19

    .line 4242
    const/high16 v3, 0x1

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4245
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4246
    :cond_19
    if-nez v28, :cond_0

    if-eqz v23, :cond_0

    .line 4247
    const/high16 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4250
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4252
    .end local v23           #isConnected:Z
    .end local v28           #state:I
    :cond_1a
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4253
    const/4 v3, 0x1

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->turnVoiceActivation(Landroid/content/Context;Z)V
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$8100(Landroid/content/Context;Z)V

    .line 4254
    const-string/jumbo v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4255
    :cond_1b
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4256
    const/4 v3, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->turnVoiceActivation(Landroid/content/Context;Z)V
    invoke-static {v0, v3}, Landroid/media/AudioService;->access$8100(Landroid/content/Context;Z)V

    .line 4257
    const-string/jumbo v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4258
    :cond_1c
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4259
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    #calls: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$8200(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 4260
    :cond_1d
    const-string/jumbo v3, "qualcomm.intent.action.WIFI_DISPLAY_AUDIO"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4261
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 4262
    .restart local v28       #state:I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WiFi Display device state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 4264
    .restart local v23       #isConnected:Z
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_1e

    if-nez v23, :cond_1e

    .line 4265
    const/high16 v3, 0x8

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4268
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4269
    :cond_1e
    if-nez v28, :cond_0

    if-eqz v23, :cond_0

    .line 4270
    const/high16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4273
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4071
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_0
    .end sparse-switch

    .line 4130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 4159
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method
