.class public Lcom/sprint/net/cdma/CDMAConnectionService;
.super Lcom/sprint/net/cdma/ICDMAConnectionManager$Stub;
.source "CDMAConnectionService.java"


# instance fields
.field private myctxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctxt"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sprint/net/cdma/ICDMAConnectionManager$Stub;-><init>()V

    .line 48
    const-string v0, "ConnectionManager"

    const-string v1, "ConnectionManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/sprint/net/cdma/CDMAConnectionService;->myctxt:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
