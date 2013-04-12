.class abstract Lcom/lge/quicksettings/handlers/NFCHelperAbstract;
.super Ljava/lang/Object;
.source "NFCHelperAbstract.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static is2wayToggleOperator()Z
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 40
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isDirectBeamSupported()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "lge.nfc.handover"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "directbeam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanOperator()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract getStatus()I
.end method

.method abstract turnOff()Z
.end method

.method abstract turnOn()Z
.end method

.method abstract turnOnOff(Z)Z
.end method

.method abstract turnOnP2P()Z
.end method
