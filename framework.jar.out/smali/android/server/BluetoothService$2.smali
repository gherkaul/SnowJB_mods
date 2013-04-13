.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 3093
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3096
    if-nez p2, :cond_1

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3098
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3099
    .local v3, action:Ljava/lang/String;
    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 3103
    .local v15, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v17

    const/16 v18, 0x37

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3107
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->isPowerSaveModeOn:Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 3111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v17

    const/16 v18, 0x38

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3116
    .end local v15           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v17, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3120
    const-string v17, "LGBT_COMMON_SCENARIO_OPTIMUS_POWERSAVE"

    invoke-static/range {v17 .. v17}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 3121
    const-string v17, "BluetoothService"

    const-string v18, "Bluetooth not support POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3125
    :cond_4
    const-string/jumbo v17, "powersave_activation"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 3126
    .local v7, doActivation:I
    const-string/jumbo v17, "powersave_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3128
    .local v11, name:Ljava/lang/String;
    const-string v17, "BluetoothService"

    const-string v18, "POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    if-eqz v11, :cond_5

    const-string/jumbo v17, "power_save_bt"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3132
    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 3134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Landroid/server/BluetoothService;->isPowerSaveModeOn:Z
    invoke-static/range {v17 .. v18}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Z)Z

    .line 3136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v17

    const/16 v18, 0x3a

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3137
    const-string v17, "BluetoothService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OPP_CONNECTED_STATUS : mProfilesConnected: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothService;->mProfilesConnected:I
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    const-string v17, "BluetoothService"

    const-string v18, "POWER_SAVER_MODE_ACTIVE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3140
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 3142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/server/BluetoothService;->isPowerSaveModeOn:Z
    invoke-static/range {v17 .. v18}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Z)Z

    .line 3145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3146
    const-string v17, "BluetoothService"

    const-string v18, "Bluetooth keeps being off on airplane mode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3149
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v17

    const/16 v18, 0x3b

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3150
    const-string v17, "BluetoothService"

    const-string v18, "POWER_SAVER_MODE_DE_ACTIVE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3156
    .end local v7           #doActivation:I
    .end local v11           #name:Ljava/lang/String;
    :cond_7
    const-string v17, "android.bluetooth.device.action.ACL_CONNECTED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1208(Landroid/server/BluetoothService;)I

    goto/16 :goto_0

    .line 3158
    :cond_8
    const-string v17, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1210(Landroid/server/BluetoothService;)I

    goto/16 :goto_0

    .line 3161
    :cond_9
    const-string v17, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 3162
    const-string v17, "android.intent.extra.DOCK_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3164
    .local v16, state:I
    const-string v17, "BluetoothService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    if-nez v16, :cond_a

    .line 3166
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 3167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Landroid/server/BluetoothService;->access$1502(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 3169
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 3172
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dock_bluetooth_address"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/server/BluetoothService;->access$1400()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3173
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 3175
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #state:I
    :cond_b
    const-string v17, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3176
    const-string v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3178
    .local v5, audioState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v18

    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v5, v0, :cond_c

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x0

    goto :goto_1

    .line 3179
    .end local v5           #audioState:I
    :cond_d
    const-string v17, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 3180
    const-string v17, "BluetoothService"

    const-string v18, "Received ACTION_CONNECTION_STATE_CHANGED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 3183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 3184
    .local v4, audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_f

    .line 3185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v18

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 3186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 3184
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3190
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 3192
    .end local v4           #audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v9           #i:I
    :cond_10
    const-string v17, "BluetoothService"

    const-string v18, "BluetoothA2dp service not available"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3194
    :cond_11
    const-string v17, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 3195
    const-string v17, "BluetoothService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Input connection state change"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    const-string v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3197
    .restart local v16       #state:I
    const-string v17, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3199
    .local v14, prevState:I
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 3202
    .local v10, inputDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v10, v1, v2, v14}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 3204
    .end local v10           #inputDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v14           #prevState:I
    .end local v16           #state:I
    :cond_12
    const-string v17, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 3205
    const-string v17, "BluetoothService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Pan connection state change"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const-string v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3207
    .restart local v16       #state:I
    const-string v17, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 3209
    .restart local v14       #prevState:I
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 3212
    .local v12, panDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2, v14}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 3214
    .end local v12           #panDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v14           #prevState:I
    .end local v16           #state:I
    :cond_13
    const-string v17, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 3215
    const-string v17, "BluetoothService"

    const-string v18, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3217
    .local v6, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_0

    .line 3221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1900(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_14

    .line 3222
    const-string v17, "BluetoothService"

    const-string v18, "SAP authorization not in progress, ignoring this intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3226
    :cond_14
    const-string v17, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/16 v18, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 3229
    const-string v17, "0000112D-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v18, "uuid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 3234
    :cond_15
    :goto_3
    const-string v17, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3235
    const-string v17, "BluetoothService"

    const-string v18, "Setting trust state to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3231
    :cond_16
    const-string v17, "00001103-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v18, "uuid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 3239
    :cond_17
    const-string v17, "BluetoothService"

    const-string v18, "User did not accept the SIM access request"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const-string v17, "0000112D-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v18, "uuid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3242
    :cond_18
    const-string v17, "00001103-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v18, "uuid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3246
    .end local v6           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_19
    const-string v17, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 3247
    const-string v17, "BluetoothService"

    const-string v18, "Received ACTION_PLAYING_STATE_CHANGED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    const-string v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 3250
    .local v13, playingState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v18

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_1a

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    :cond_1a
    const/16 v17, 0x0

    goto :goto_4

    .line 3251
    .end local v13           #playingState:I
    :cond_1b
    const-string v17, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 3253
    const-string v17, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 3254
    .restart local v6       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v6, :cond_0

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v17

    if-eqz v17, :cond_1c

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 3265
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v17

    if-eqz v17, :cond_1d

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v19, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;
    invoke-static/range {v19 .. v19}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceRole(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 3271
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->listConnectionNative()I
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2100(Landroid/server/BluetoothService;)I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 3273
    const-string v17, "BluetoothService"

    const-string v18, "All connections disconnected"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v17

    const/16 v18, 0x34

    invoke-virtual/range {v17 .. v18}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 3277
    .end local v6           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1e
    const-string v17, "android.bluetooth.service.action.DISCOVERABLE_TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 3278
    const-string v17, "BluetoothService"

    const-string v18, "ACTION_BT_DISCOVERABLE_TIMEOUT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x15

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 3282
    :cond_1f
    const-string v17, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 3283
    const-string v17, "BluetoothService"

    const-string v18, "ACTION_DISCOVERABLE_TIMEOUT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3288
    :cond_20
    const-string v17, "android.SLATE.bluetooth.action.DISCOVERABLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 3289
    const-string v17, "BluetoothService"

    const-string v18, "ACTION_SLATE_DISCOVERABLE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x17

    const/16 v19, 0x78

    invoke-virtual/range {v17 .. v19}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 3294
    :cond_21
    const-string v17, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 3295
    const-string v17, "android.bluetooth.adapter.extra.STATE"

    const/16 v18, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3297
    .restart local v16       #state:I
    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 3300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Landroid/server/BluetoothService;->mDeviceConnected:I
    invoke-static/range {v17 .. v18}, Landroid/server/BluetoothService;->access$2302(Landroid/server/BluetoothService;I)I

    goto/16 :goto_0

    .line 3305
    .end local v16           #state:I
    :cond_22
    const-string v17, "com.lge.mdm.intent.action.ACTION_BLUETOOTH_SET_AUDIOONLY"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3306
    const-string v17, "android.bluetooth.adapter.extra.STATE"

    const/high16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_0

    .line 3317
    :pswitch_0
    const-string v17, "BluetoothService"

    const-string v18, "MDMReceiver DISABLED_ACTION "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->disableOPP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2900(Landroid/server/BluetoothService;)Z

    .line 3319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->disablePBAP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$3000(Landroid/server/BluetoothService;)Z

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->disableMAP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$3100(Landroid/server/BluetoothService;)Z

    .line 3321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->disableFTP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$3200(Landroid/server/BluetoothService;)Z

    .line 3322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->disablePAN()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$3300(Landroid/server/BluetoothService;)Z

    goto/16 :goto_0

    .line 3308
    :pswitch_1
    const-string v17, "BluetoothService"

    const-string v18, "MDMReceiver BLUETOOTH_STATE_CHANGED_ACTION, STATE_TURNING_OFF"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->enableOPP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2400(Landroid/server/BluetoothService;)Z

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->enablePBAP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;)Z

    .line 3312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->enableMAP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2600(Landroid/server/BluetoothService;)Z

    .line 3313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->enableFTP()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2700(Landroid/server/BluetoothService;)Z

    .line 3314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v17, v0

    #calls: Landroid/server/BluetoothService;->enablePAN()Z
    invoke-static/range {v17 .. v17}, Landroid/server/BluetoothService;->access$2800(Landroid/server/BluetoothService;)Z

    goto/16 :goto_0

    .line 3306
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
