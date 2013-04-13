.class public Lcom/sprint/net/cdma/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public mChipsetModel:Ljava/lang/String;

.field public mChipsetSwVersion:Ljava/lang/String;

.field public mPrlVersion:Ljava/lang/String;

.field public mSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBandClassesSupported()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, stBandClassesSupported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "DCN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "PCS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "BC10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v0
.end method

.method public getChipsetManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Qualcomm"

    return-object v0
.end method

.method public getChipsetModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetModel:Ljava/lang/String;

    return-object v0
.end method

.method public getChipsetSwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnologySupported()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, listTechnologySupported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "1xRTT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "EVDO Rev 0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "EVDO Rev A"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v0
.end method

.method public isIpv6Supported()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public isQlicSupported()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method
