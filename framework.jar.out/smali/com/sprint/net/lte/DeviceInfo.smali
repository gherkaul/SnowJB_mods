.class public Lcom/sprint/net/lte/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public mAPNlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mdeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceId:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mAPNlist:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public AddapnInfo(Lcom/sprint/net/lte/ApnInfo;)V
    .locals 1
    .parameter "Apninfo"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mAPNlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public clearall()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mAPNlist:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mAPNlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    :cond_0
    return-void
.end method

.method public getApnInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mAPNlist:Ljava/util/List;

    return-object v0
.end method

.method public getBandClassSupport()[I
    .locals 3

    .prologue
    .line 102
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 103
    .local v0, band:[I
    const/4 v1, 0x0

    const/16 v2, 0x19

    aput v2, v0, v1

    .line 105
    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "APQ8064"

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "APQ8064 V1.0"

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "APQ8064 Release 1034"

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "APQ8064 Release 1034"

    return-object v0
.end method

.method public isIpv6Supported()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
