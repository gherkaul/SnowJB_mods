.class Landroid/media/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field private mState:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V
    .locals 1
    .parameter
    .parameter "cb"
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    .line 1531
    iput-object p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1532
    iput-object p2, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 1533
    iput p3, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    .line 1534
    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mState:I

    .line 1535
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    .line 1538
    const/4 v1, 0x0

    .line 1539
    .local v1, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1540
    :try_start_0
    const-string v2, "AudioService"

    const-string/jumbo v4, "setMode() client died"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1542
    .local v0, index:I
    if-gez v0, :cond_1

    .line 1543
    const-string v2, "AudioService"

    const-string/jumbo v4, "unregistered setMode() client died"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    if-eqz v1, :cond_0

    .line 1551
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v2, v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;I)V

    .line 1553
    :cond_0
    return-void

    .line 1545
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v6, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v1

    goto :goto_0

    .line 1547
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInCallMode()I
    .locals 1

    .prologue
    .line 1580
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mState:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1576
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 1556
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setInCallMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1571
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1572
    iput p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->mState:I

    .line 1573
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1560
    iput p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1561
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetModeDeathHandler::setMode() mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1563
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mState:I

    .line 1568
    :goto_0
    return-void

    .line 1566
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mState:I

    goto :goto_0
.end method