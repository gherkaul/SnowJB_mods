.class public Lcom/sprint/net/cdma/EvdoInfo;
.super Ljava/lang/Object;
.source "EvdoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    }
.end annotation


# instance fields
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

.field public mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

.field public mBandClass:I

.field public mChannel:I

.field public mColorCode:J

.field public mMacIndex:I

.field public mNeighborSet:[I

.field public mPacketError:I

.field public mPn:I

.field public mPnEnergy:F

.field public mReceivePower:F

.field public mRequestedDrc:I

.field public mRlpNakAborts:I

.field public mRlpRetransRate:I

.field public mSectorId:I

.field public mSinr:F

.field public mState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
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
    .line 162
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mActiveSet:Ljava/util/List;

    return-object v0
.end method

.method public getAuthState()Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    return-object v0
.end method

.method public getBandClass()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mBandClass:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mChannel:I

    return v0
.end method

.method public getColorCode()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:J

    return-wide v0
.end method

.method public getMacIndex()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mMacIndex:I

    return v0
.end method

.method public getNeighborSet()[I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mNeighborSet:[I

    return-object v0
.end method

.method public getPacketError()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPacketError:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPn:I

    return v0
.end method

.method public getPnEnergy()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    return v0
.end method

.method public getReceivePower()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mReceivePower:F

    return v0
.end method

.method public getRequestedDrc()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRequestedDrc:I

    return v0
.end method

.method public getRlpNakAborts()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRlpNakAborts:I

    return v0
.end method

.method public getRlpRetransRate()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRlpRetransRate:I

    return v0
.end method

.method public getSectorId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSectorId:I

    return v0
.end method

.method public getSinr()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
