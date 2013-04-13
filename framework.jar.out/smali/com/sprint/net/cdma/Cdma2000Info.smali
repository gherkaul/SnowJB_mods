.class public Lcom/sprint/net/cdma/Cdma2000Info;
.super Ljava/lang/Object;
.source "Cdma2000Info.java"


# instance fields
.field enumState:Lcom/sprint/net/cdma/CdmaState;

.field public mActiveSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/cdma/ActiveSet;",
            ">;"
        }
    .end annotation
.end field

.field public mBandClass:I

.field public mBaseStationId:I

.field public mChannel:I

.field public mDayLigntSavingSet:Z

.field public mFrameError:I

.field public mLatitude:I

.field public mLongitude:I

.field public mNeighborSet:[I

.field public mNid:I

.field public mPn:I

.field public mPnEnergy:I

.field public mProtocolRevision:I

.field public mReceiveEcIo:F

.field public mReceivePower:F

.field public mServiceOption:I

.field public mSid:I

.field public mState:Lcom/sprint/net/cdma/CdmaState;

.field public mTimeZoneOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    invoke-direct {v0}, Lcom/sprint/net/cdma/CdmaState;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->enumState:Lcom/sprint/net/cdma/CdmaState;

    return-void
.end method


# virtual methods
.method public getActiveSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/cdma/ActiveSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mActiveSet:Ljava/util/List;

    return-object v0
.end method

.method public getBandClass()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mBandClass:I

    return v0
.end method

.method public getBaseStationId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mBaseStationId:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mChannel:I

    return v0
.end method

.method public getFrameError()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mFrameError:I

    return v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mLatitude:I

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mLongitude:I

    return v0
.end method

.method public getNeighborSet()[I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mNeighborSet:[I

    return-object v0
.end method

.method public getNid()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mNid:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPn:I

    return v0
.end method

.method public getPnEnergy()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:I

    int-to-float v0, v0

    return v0
.end method

.method public getProtocolRevision()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mProtocolRevision:I

    return v0
.end method

.method public getReceiveEcIo()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mReceiveEcIo:F

    return v0
.end method

.method public getReceivePower()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mReceivePower:F

    return v0
.end method

.method public getServiceOption()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mServiceOption:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSid:I

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeZoneOffset()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    return v0
.end method

.method public isDayLightSavingsSet()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDayLigntSavingSet:Z

    return v0
.end method
