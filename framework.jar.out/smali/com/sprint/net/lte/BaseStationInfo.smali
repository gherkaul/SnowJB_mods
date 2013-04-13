.class public Lcom/sprint/net/lte/BaseStationInfo;
.super Ljava/lang/Object;
.source "BaseStationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    }
.end annotation


# instance fields
.field public bandClass:I

.field public bandwidth:I

.field public basestationId:Ljava/lang/String;

.field public frequencyDownlink:J

.field public frequencyUplink:J

.field public modulationDownlink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public modulationUplink:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public name:Ljava/lang/String;

.field public neighborList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/BaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public plmnID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
