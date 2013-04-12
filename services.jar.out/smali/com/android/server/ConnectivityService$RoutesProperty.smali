.class Lcom/android/server/ConnectivityService$RoutesProperty;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoutesProperty"
.end annotation


# instance fields
.field newLp:Landroid/net/LinkProperties;

.field r:Landroid/net/RouteInfo;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;)V
    .locals 0
    .parameter
    .parameter "newLp"
    .parameter "r"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/server/ConnectivityService$RoutesProperty;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/android/server/ConnectivityService$RoutesProperty;->newLp:Landroid/net/LinkProperties;

    .line 506
    iput-object p3, p0, Lcom/android/server/ConnectivityService$RoutesProperty;->r:Landroid/net/RouteInfo;

    .line 507
    return-void
.end method
