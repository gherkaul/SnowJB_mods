.class public final enum Landroid/provider/LgeDataProperties$Features;
.super Ljava/lang/Enum;
.source "LgeDataProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LgeDataProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Features"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/LgeDataProperties$Features;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/LgeDataProperties$Features;

.field public static final enum AUTOPROFILE_MULTI_SIM:Landroid/provider/LgeDataProperties$Features;

.field public static final enum AUTOPROFILE_MULTI_SIM_NSLOT:Landroid/provider/LgeDataProperties$Features;

.field public static final enum CHIPSET:Landroid/provider/LgeDataProperties$Features;

.field public static final enum FASTDORMANCY:Landroid/provider/LgeDataProperties$Features;


# instance fields
.field private mPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Landroid/provider/LgeDataProperties$Features;

    const-string v1, "CHIPSET"

    const-string/jumbo v2, "ro.lg.data.chipset"

    invoke-direct {v0, v1, v3, v2}, Landroid/provider/LgeDataProperties$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/provider/LgeDataProperties$Features;->CHIPSET:Landroid/provider/LgeDataProperties$Features;

    .line 57
    new-instance v0, Landroid/provider/LgeDataProperties$Features;

    const-string v1, "AUTOPROFILE_MULTI_SIM"

    const-string/jumbo v2, "persist.lg.data.autoprof.msim"

    invoke-direct {v0, v1, v4, v2}, Landroid/provider/LgeDataProperties$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/provider/LgeDataProperties$Features;->AUTOPROFILE_MULTI_SIM:Landroid/provider/LgeDataProperties$Features;

    .line 58
    new-instance v0, Landroid/provider/LgeDataProperties$Features;

    const-string v1, "AUTOPROFILE_MULTI_SIM_NSLOT"

    const-string v2, "lg.data.autoprof.msim.nslot"

    invoke-direct {v0, v1, v5, v2}, Landroid/provider/LgeDataProperties$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/provider/LgeDataProperties$Features;->AUTOPROFILE_MULTI_SIM_NSLOT:Landroid/provider/LgeDataProperties$Features;

    .line 59
    new-instance v0, Landroid/provider/LgeDataProperties$Features;

    const-string v1, "FASTDORMANCY"

    const-string/jumbo v2, "persist.lg.data.fd"

    invoke-direct {v0, v1, v6, v2}, Landroid/provider/LgeDataProperties$Features;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/provider/LgeDataProperties$Features;->FASTDORMANCY:Landroid/provider/LgeDataProperties$Features;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/provider/LgeDataProperties$Features;

    sget-object v1, Landroid/provider/LgeDataProperties$Features;->CHIPSET:Landroid/provider/LgeDataProperties$Features;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/LgeDataProperties$Features;->AUTOPROFILE_MULTI_SIM:Landroid/provider/LgeDataProperties$Features;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/LgeDataProperties$Features;->AUTOPROFILE_MULTI_SIM_NSLOT:Landroid/provider/LgeDataProperties$Features;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/LgeDataProperties$Features;->FASTDORMANCY:Landroid/provider/LgeDataProperties$Features;

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/LgeDataProperties$Features;->$VALUES:[Landroid/provider/LgeDataProperties$Features;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/LgeDataProperties$Features;->mPropertyName:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Landroid/provider/LgeDataProperties$Features;->mPropertyName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/provider/LgeDataProperties$Features;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Landroid/provider/LgeDataProperties$Features;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/LgeDataProperties$Features;

    return-object v0
.end method

.method public static values()[Landroid/provider/LgeDataProperties$Features;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/provider/LgeDataProperties$Features;->$VALUES:[Landroid/provider/LgeDataProperties$Features;

    invoke-virtual {v0}, [Landroid/provider/LgeDataProperties$Features;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/LgeDataProperties$Features;

    return-object v0
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/provider/LgeDataProperties$Features;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/provider/LgeDataProperties$Features;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
