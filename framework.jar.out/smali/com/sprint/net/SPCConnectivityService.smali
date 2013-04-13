.class public Lcom/sprint/net/SPCConnectivityService;
.super Lcom/sprint/net/Isprintconnectivity$Stub;
.source "SPCConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/SPCConnectivityService$1;,
        Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SPCConnectivityService"

.field private static mConnectivityService:Landroid/net/IConnectivityManager;


# instance fields
.field private final getConnectionTypeEvent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mSPCgetConnectionTypeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/net/SPCConnectivityService;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sprint/net/Isprintconnectivity$Stub;-><init>()V

    .line 31
    const-string v1, "android.intent.action.ACTION_GET_CONNECTION_TYPE"

    iput-object v1, p0, Lcom/sprint/net/SPCConnectivityService;->getConnectionTypeEvent:Ljava/lang/String;

    .line 33
    new-instance v1, Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprint/net/SPCConnectivityService$SPCgetConnectionType;-><init>(Lcom/sprint/net/SPCConnectivityService;Lcom/sprint/net/SPCConnectivityService$1;)V

    iput-object v1, p0, Lcom/sprint/net/SPCConnectivityService;->mSPCgetConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/sprint/net/SPCConnectivityService;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_GET_CONNECTION_TYPE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, spcFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sprint/net/SPCConnectivityService;->mSPCgetConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 90
    const-string v0, "SPCConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public getConnectionType()J
    .locals 9

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 42
    const-string v6, "connectivity"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v6

    sput-object v6, Lcom/sprint/net/SPCConnectivityService;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v6, "SPCConnectivityService"

    const-string v7, "getActiveNetworkInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v6, Lcom/sprint/net/SPCConnectivityService;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_0

    .line 47
    sget-object v6, Lcom/sprint/net/SPCConnectivityService;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    const-string v6, "SPCConnectivityService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECTIVITY_STATE : getType()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 67
    :goto_1
    return-wide v2

    .line 49
    :cond_0
    const-string v6, "SPCConnectivityService"

    const-string v7, "getConnectivityService = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-wide v2, v4

    .line 63
    goto :goto_1

    .line 58
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    const-string v6, "SPCConnectivityService"

    const-string v7, "#############CONNECTIVITY_STATE : getType() = NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move-wide v2, v4

    .line 65
    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    move-wide v2, v4

    .line 67
    goto :goto_1
.end method
