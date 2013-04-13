.class public Lcom/sprint/net/lte/ApnsInUse;
.super Ljava/lang/Object;
.source "ApnsInUse.java"


# instance fields
.field public fullName:Ljava/lang/String;

.field public ipv4:Ljava/net/InetAddress;

.field public ipv6:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    return-void
.end method
