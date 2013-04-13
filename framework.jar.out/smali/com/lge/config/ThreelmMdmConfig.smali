.class public final Lcom/lge/config/ThreelmMdmConfig;
.super Ljava/lang/Object;
.source "ThreelmMdmConfig.java"


# static fields
.field public static final THREELM_MDM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string/jumbo v0, "ro.3lm.build.lg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
