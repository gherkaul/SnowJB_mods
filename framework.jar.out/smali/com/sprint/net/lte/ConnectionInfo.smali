.class public Lcom/sprint/net/lte/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# instance fields
.field public bsid:Ljava/lang/String;

.field public mApnlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation
.end field

.field public mBaseStatelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rsri:Ljava/lang/String;

.field public rsrp:Ljava/lang/String;

.field public rsrq:Ljava/lang/String;

.field public txpwr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->bsid:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsri:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrq:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrp:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->txpwr:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public AddapnList(Lcom/sprint/net/lte/ApnsInUse;)V
    .locals 1
    .parameter "usedApn"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public AddbasestateList(Lcom/sprint/net/lte/BaseStationInfo;)V
    .locals 1
    .parameter "stateinfo"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public clearall()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->bsid:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrq:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrp:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->txpwr:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    :cond_1
    return-void
.end method

.method public getApnsInUse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mApnlist:Ljava/util/List;

    return-object v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->bsid:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->mBaseStatelist:Ljava/util/List;

    return-object v0
.end method

.method public getRsrp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrp:Ljava/lang/String;

    return-object v0
.end method

.method public getRsrq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsrq:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->rsri:Ljava/lang/String;

    return-object v0
.end method

.method public getSibInfo()Lcom/sprint/net/lte/SibInfo;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTxPwr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sprint/net/lte/ConnectionInfo;->txpwr:Ljava/lang/String;

    return-object v0
.end method
