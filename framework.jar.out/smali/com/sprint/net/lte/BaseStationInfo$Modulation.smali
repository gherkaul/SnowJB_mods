.class public final enum Lcom/sprint/net/lte/BaseStationInfo$Modulation;
.super Ljava/lang/Enum;
.source "BaseStationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/BaseStationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Modulation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/lte/BaseStationInfo$Modulation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

.field public static final enum UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QPSK"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QAM_16"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    new-instance v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    const-string v1, "QAM_64"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->UNKNOWN:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QPSK:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_16:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->QAM_64:Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->$VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->$VALUES:[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    invoke-virtual {v0}, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method
