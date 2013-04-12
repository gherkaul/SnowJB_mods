.class public Lcom/lge/systemui/OperatorFeature;
.super Ljava/lang/Object;
.source "OperatorFeature.java"


# static fields
.field public static OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

.field public static OPERATORFEATURE_RSSI_NUM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v1, 0xc

    const/16 v3, 0x9

    const/4 v2, 0x5

    .line 23
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    .line 30
    :goto_0
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 31
    const/4 v0, 0x6

    sput v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_RSSI_NUM:I

    .line 40
    :goto_1
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 36
    :cond_3
    const/4 v0, 0x4

    sput v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_RSSI_NUM:I

    goto :goto_1

    .line 38
    :cond_4
    sput v2, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_RSSI_NUM:I

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPERATORFEATURE_QUICKSETTING_BRIGHTNESS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nOPERATORFEATURE_RSSI_NUM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_RSSI_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, strText:Ljava/lang/String;
    return-object v0
.end method
