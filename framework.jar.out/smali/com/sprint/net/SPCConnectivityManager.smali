.class public Lcom/sprint/net/SPCConnectivityManager;
.super Ljava/lang/Object;
.source "SPCConnectivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPCConnectivityManager"


# instance fields
.field private mService:Lcom/sprint/net/Isprintconnectivity;


# direct methods
.method public constructor <init>(Lcom/sprint/net/Isprintconnectivity;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sprint/net/SPCConnectivityManager;->mService:Lcom/sprint/net/Isprintconnectivity;

    .line 13
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 26
    const-string v0, "SPCConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public getConnectionType()J
    .locals 3

    .prologue
    .line 16
    const-string v1, "getConnectionType"

    invoke-direct {p0, v1}, Lcom/sprint/net/SPCConnectivityManager;->log(Ljava/lang/String;)V

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/SPCConnectivityManager;->mService:Lcom/sprint/net/Isprintconnectivity;

    invoke-interface {v1}, Lcom/sprint/net/Isprintconnectivity;->getConnectionType()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 20
    :goto_0
    return-wide v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Landroid/os/RemoteException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
