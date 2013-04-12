.class public Lcom/lge/quicksettings/QuickSettingsReceiverStation;
.super Ljava/lang/Object;
.source "QuickSettingsReceiverStation.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/quicksettings/QuickSettingsReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "QuickSettingsReceiverStation"

    sput-object v0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiverStation$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/QuickSettingsReceiverStation$1;-><init>(Lcom/lge/quicksettings/QuickSettingsReceiverStation;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    sget-object v0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->TAG:Ljava/lang/String;

    const-string v1, "QuickSettingsReceiverStation construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/QuickSettingsReceiverStation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public registerReceiver()V
    .locals 8

    .prologue
    .line 39
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 42
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/quicksettings/QuickSettingsReceiver;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 44
    .local v1, data:Lcom/lge/quicksettings/QuickSettingsReceiver;
    const/4 v0, 0x0

    .line 45
    .local v0, action:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->getAction()[Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1
    if-eqz v0, :cond_0

    .line 50
    sget-boolean v5, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 51
    sget-object v5, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerReceiver addAction acttion.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 54
    aget-object v5, v0, v3

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    sget-boolean v5, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 56
    sget-object v5, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerReceiver addAction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v0           #action:[Ljava/lang/String;
    .end local v1           #data:Lcom/lge/quicksettings/QuickSettingsReceiver;
    .end local v3           #i:I
    :cond_4
    iget-object v5, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_5

    .line 63
    iget-object v5, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    :cond_5
    return-void
.end method

.method public removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsReceiverStation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    :cond_0
    return-void
.end method
