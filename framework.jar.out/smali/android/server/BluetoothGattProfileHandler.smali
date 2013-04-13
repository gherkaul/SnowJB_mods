.class final Landroid/server/BluetoothGattProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothGattProfileHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final END:Ljava/lang/String; = "end"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final HANDLE:Ljava/lang/String; = "handle"

.field private static final MESSAGE_ADD_TO_PREFERRED_DEVICE_LIST:I = 0xd

.field private static final MESSAGE_CANCEL_CREATE_CONN_REQ_PREFERRED_DEVICE_LIST:I = 0x11

.field private static final MESSAGE_CLEAR_PREFERRED_DEVICE_LIST:I = 0xf

.field private static final MESSAGE_CREATE_CONN_REQ_PREFERRED_DEVICE_LIST:I = 0x10

.field private static final MESSAGE_DISCONNECT_LE:I = 0xc

.field private static final MESSAGE_DISCOVER_CHARACTERISTICS_RESP:I = 0x7

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_BY_UUID_RESP:I = 0x5

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_RESP:I = 0x4

.field private static final MESSAGE_FIND_INCLUDED_SERVICE_RESP:I = 0x6

.field private static final MESSAGE_FIND_INFO_RESP:I = 0x8

.field private static final MESSAGE_READ_BY_TYPE_RESP:I = 0x9

.field private static final MESSAGE_READ_RESP:I = 0xa

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_REMOVE_FROM_PREFERRED_DEVICE_LIST:I = 0xe

.field private static final MESSAGE_SEND_INDICATION:I = 0x3

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final MESSAGE_WRITE_RESP:I = 0xb

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final PATH:Ljava/lang/String; = "PATH"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final REQUEST_HANDLE:Ljava/lang/String; = "request_handle"

.field private static final SESSION:Ljava/lang/String; = "session"

.field private static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "BluetoothGattProfileHandler"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VALUE_HANDLE:Ljava/lang/String; = "value_handle"

.field private static sInstance:Landroid/server/BluetoothGattProfileHandler;


# instance fields
.field private mAppConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            "Landroid/bluetooth/IBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mRegisteredServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 383
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/server/BluetoothGattProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothGattProfileHandler$1;-><init>(Landroid/server/BluetoothGattProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    .line 384
    iput-object p2, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    .line 388
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothGattProfileHandler;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->loadRegisteredServers([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothGattProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverEnable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothGattProfileHandler;->callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 5
    .parameter "config"
    .parameter "action"
    .parameter "status"

    .prologue
    .line 964
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 966
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 969
    :catch_0
    move-exception v1

    .line 970
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 972
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 973
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 974
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "status"

    .prologue
    .line 946
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " State Change: status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 949
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 951
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 955
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 957
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private errorStatusToString(II)Ljava/lang/String;
    .locals 3
    .parameter "errorCode"
    .parameter "handle"

    .prologue
    .line 982
    if-nez p1, :cond_1

    .line 983
    const/4 v0, 0x0

    .line 1051
    :cond_0
    :goto_0
    return-object v0

    .line 985
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 987
    .local v0, errorString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1042
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT_0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    :goto_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 990
    :pswitch_0
    const-string v0, "ATT_INVALID_HANDLE"

    .line 991
    goto :goto_1

    .line 993
    :pswitch_1
    const-string v0, "ATT_WRITE_NOT_PERM"

    .line 994
    goto :goto_1

    .line 996
    :pswitch_2
    const-string v0, "ATT_READ_NOT_PERM"

    .line 997
    goto :goto_1

    .line 999
    :pswitch_3
    const-string v0, "ATT_INVALID_PDU"

    .line 1000
    goto :goto_1

    .line 1002
    :pswitch_4
    const-string v0, "ATT_INSUFF_AUTHENTICATION"

    .line 1003
    goto :goto_1

    .line 1005
    :pswitch_5
    const-string v0, "ATT_REQ_NOT_SUPP"

    .line 1006
    goto :goto_1

    .line 1008
    :pswitch_6
    const-string v0, "ATT_INVALID_OFFSET"

    .line 1009
    goto :goto_1

    .line 1011
    :pswitch_7
    const-string v0, "ATT_INSUFF_AUTHORIZATION"

    .line 1012
    goto :goto_1

    .line 1014
    :pswitch_8
    const-string v0, "ATT_PREP_QUEUE_FULL"

    .line 1015
    goto :goto_1

    .line 1017
    :pswitch_9
    const-string v0, "ATT_ATTR_NOT_FOUND"

    .line 1018
    goto :goto_1

    .line 1020
    :pswitch_a
    const-string v0, "ATT_ATTR_NOT_LONG"

    .line 1021
    goto :goto_1

    .line 1023
    :pswitch_b
    const-string v0, "ATT_INSUFF_ENCR_KEY_SIZE"

    .line 1024
    goto :goto_1

    .line 1026
    :pswitch_c
    const-string v0, "ATT_INVAL_ATTR_VALUE_LEN"

    .line 1027
    goto :goto_1

    .line 1029
    :pswitch_d
    const-string v0, "ATT_UNLIKELY"

    .line 1030
    goto :goto_1

    .line 1032
    :pswitch_e
    const-string v0, "ATT_INSUFF_ENCRYPTION"

    .line 1033
    goto :goto_1

    .line 1035
    :pswitch_f
    const-string v0, "ATT_UNSUPP_GRP_TYPE"

    .line 1036
    goto :goto_1

    .line 1038
    :pswitch_10
    const-string v0, "ATT_INSUFF_RESOURCES"

    .line 1039
    goto :goto_1

    .line 1045
    :cond_2
    const-string v0, "ATT_UNLIKELY"

    goto :goto_1

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 392
    const-class v1, Landroid/server/BluetoothGattProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothGattProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothGattProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    .line 393
    :cond_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isServerEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRegisteredServers([Ljava/lang/String;)V
    .locals 4
    .parameter "servers"

    .prologue
    .line 1055
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1056
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_0
    return-void
.end method

.method private removeRegisteredServer(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_0
    return-void
.end method

.method private serverDisable(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1071
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothService;->unregisterGattServerNative(Ljava/lang/String;Z)Z

    .line 1075
    return-void
.end method

.method private serverEnable(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    return-void
.end method


# virtual methods
.method addToPreferredDeviceList(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 669
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addToPreferredDeviceList path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "PATH"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 674
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 675
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    const/4 v2, 0x1

    return v2
.end method

.method clearPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 691
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " clearPreferredDeviceList  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 693
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    const/4 v1, 0x1

    return v1
.end method

.method closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 5
    .parameter "config"
    .parameter "devPath"

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, path:Ljava/lang/String;
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "closeGattLeConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v3, 0x0

    .line 439
    :goto_0
    return v3

    .line 431
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "PATH"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 435
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 437
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverCharacteristicsResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IBIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "property"
    .parameter "valueHandle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 548
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 550
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverCharacteristicsResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v3, 0x0

    .line 570
    :goto_0
    return v3

    .line 553
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " discoverCharacteristicsResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 558
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    const-string/jumbo v3, "property"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 561
    const-string/jumbo v3, "value_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 566
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 568
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryByUuidResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v3, 0x0

    .line 515
    :goto_0
    return v3

    .line 501
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryByUuidResponse  handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 505
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v3, "end"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 511
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 513
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 468
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v3, 0x0

    .line 490
    :goto_0
    return v3

    .line 477
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v3, "end"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 486
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 488
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "start"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 522
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findIncludedResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v3, 0x0

    .line 542
    :goto_0
    return v3

    .line 526
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findIncludedResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string v3, "end"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 538
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 540
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;III)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findInfoResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v3, 0x0

    .line 594
    :goto_0
    return v3

    .line 580
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findInfoResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 584
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 587
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 590
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 591
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 592
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 594
    const/4 v3, 0x1

    goto :goto_0
.end method

.method gattCancelConnectToPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 705
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " gattCancelConnectToPreferredDeviceList : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 707
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    const/4 v1, 0x1

    return v1
.end method

.method gattConnectToPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 698
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " gattConnectToPreferredDeviceList  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 700
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    const/4 v1, 0x1

    return v1
.end method

.method declared-synchronized onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverCharacteristicsRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 800
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 801
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 802
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 814
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 805
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 806
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 808
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 797
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 809
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 810
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverIncludedRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverIncludedRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 778
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 779
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 780
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 782
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 783
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 784
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 786
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 775
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 787
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 788
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "reqHandle"

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryByUuidRequest - path : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "start :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 754
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 755
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 756
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 759
    .local v4, uuid:Landroid/os/ParcelUuid;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p2

    move v3, p3

    move v5, p5

    .line 760
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 770
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 761
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v6

    .line 762
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    instance-of v2, v6, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 764
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 751
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 765
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v6

    .line 766
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 715
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 716
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 717
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 720
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 721
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 723
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 713
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 724
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 725
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattFindInfoRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gatt object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 822
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 823
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 824
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 837
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 828
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 829
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 831
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 819
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 832
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 833
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadByTypeRequest(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "auth"
    .parameter "reqHandle"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadByTypeRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 844
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 845
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 846
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 849
    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 850
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 860
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v2           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 851
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 852
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    instance-of v3, v7, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 854
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 841
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 855
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 856
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "handle"
    .parameter "reqHandle"

    .prologue
    .line 864
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadRequest - path : handle :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 866
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 867
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 868
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    :try_start_1
    invoke-interface {v0, v1, p3, p2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 880
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 871
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 872
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 874
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 864
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 875
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 876
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V
    .locals 6
    .parameter "path"
    .parameter "sessionHandle"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 927
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattSetClientConfigDescriptor - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-eqz v1, :cond_0

    .line 929
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 930
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 932
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 942
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 933
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 934
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 936
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 926
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 937
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 938
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 885
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattWriteRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-eqz v1, :cond_0

    .line 888
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 889
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 892
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 893
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 895
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 884
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 896
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 897
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 8
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"
    .parameter "sessionHandle"
    .parameter "reqHandle"

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 907
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattReliableWriteRequest - path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-eqz v1, :cond_0

    .line 909
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 910
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    .line 912
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 913
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 914
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    instance-of v2, v7, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 916
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 906
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 917
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 918
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onIndicateResponse(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "result"

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indicate response object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 734
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-eqz v1, :cond_0

    .line 736
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 739
    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 745
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 740
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 741
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 732
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readByTypeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v3, 0x0

    .line 619
    :goto_0
    return v3

    .line 604
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readByTypeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 611
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 615
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 617
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 619
    const/4 v3, 0x1

    goto :goto_0
.end method

.method readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 626
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v3, 0x0

    .line 643
    :goto_0
    return v3

    .line 629
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 635
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 639
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 641
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return v2
.end method

.method removeFromPreferredDeviceList(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 680
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeFromPreferredDeviceList path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 682
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "PATH"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 685
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 686
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    const/4 v2, 0x1

    return v2
.end method

.method sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    .locals 5
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "notify"
    .parameter "sessionHandle"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v3, 0x0

    .line 462
    :goto_0
    return v3

    .line 451
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "session"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 455
    const-string/jumbo v3, "notify"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 458
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 459
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 460
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 462
    const/4 v3, 0x1

    goto :goto_0
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    invoke-direct {p0, v1}, Landroid/server/BluetoothGattProfileHandler;->removeRegisteredServer(Ljava/lang/String;)V

    .line 414
    const/4 v2, 0x1

    .line 417
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    .line 416
    :cond_0
    const-string v2, "BluetoothGattProfileHandler"

    const-string/jumbo v3, "unregisterAppConfiguration: GATT app not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v2, 0x0

    goto :goto_0
.end method

.method writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;II)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "writeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v3, 0x0

    .line 665
    :goto_0
    return v3

    .line 653
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v3, "error"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 658
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 661
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 662
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 663
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    const/4 v3, 0x1

    goto :goto_0
.end method
