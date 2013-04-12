.class public Lcom/lge/systemui/BAL;
.super Lcom/lge/systemui/ABAL;
.source "BAL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/systemui/ABAL;-><init>()V

    return-void
.end method

.method public static getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 9
    .parameter "signalStrength"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 45
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 46
    .local v1, cdmaEcio:I
    const/4 v6, 0x0

    .line 47
    .local v6, levelDbm:I
    const/4 v7, 0x0

    .line 52
    .local v7, levelEcio:I
    const/16 v2, -0x4f

    .line 53
    .local v2, level1:I
    const/16 v3, -0x5a

    .line 54
    .local v3, level2:I
    const/16 v4, -0x62

    .line 55
    .local v4, level3:I
    const/16 v5, -0x68

    .line 57
    .local v5, level4:I
    if-le v0, v2, :cond_0

    const/4 v6, 0x4

    .line 63
    :goto_0
    const/16 v8, -0x50

    if-lt v1, v8, :cond_4

    const/4 v7, 0x4

    .line 69
    :goto_1
    if-ge v6, v7, :cond_8

    .end local v6           #levelDbm:I
    :goto_2
    return v6

    .line 58
    .restart local v6       #levelDbm:I
    :cond_0
    if-le v0, v3, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    .line 59
    :cond_1
    if-le v0, v4, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    .line 60
    :cond_2
    if-le v0, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    .line 61
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 64
    :cond_4
    const/16 v8, -0x64

    if-lt v1, v8, :cond_5

    const/4 v7, 0x3

    goto :goto_1

    .line 65
    :cond_5
    const/16 v8, -0x78

    if-lt v1, v8, :cond_6

    const/4 v7, 0x2

    goto :goto_1

    .line 66
    :cond_6
    const/16 v8, -0x8c

    if-lt v1, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    .line 67
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    move v6, v7

    .line 69
    goto :goto_2
.end method

.method public static getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 9
    .parameter "signalStrength"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 74
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 75
    .local v1, evdoSnr:I
    const/4 v6, 0x0

    .line 76
    .local v6, levelEvdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v7

    .line 80
    .local v7, levelEvdoSnr:I
    const/16 v2, -0x3f

    .line 81
    .local v2, level1:I
    const/16 v3, -0x48

    .line 82
    .local v3, level2:I
    const/16 v4, -0x57

    .line 83
    .local v4, level3:I
    const/16 v5, -0x66

    .line 85
    .local v5, level4:I
    if-le v0, v2, :cond_0

    const/4 v6, 0x4

    .line 91
    :goto_0
    const/4 v8, 0x7

    if-lt v1, v8, :cond_4

    const/4 v7, 0x4

    .line 96
    :goto_1
    if-ge v6, v7, :cond_8

    .end local v6           #levelEvdoDbm:I
    :goto_2
    return v6

    .line 86
    .restart local v6       #levelEvdoDbm:I
    :cond_0
    if-le v0, v3, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    .line 87
    :cond_1
    if-le v0, v4, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    .line 88
    :cond_2
    if-le v0, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    .line 89
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 92
    :cond_4
    const/4 v8, 0x5

    if-lt v1, v8, :cond_5

    const/4 v7, 0x3

    goto :goto_1

    .line 93
    :cond_5
    const/4 v8, 0x3

    if-lt v1, v8, :cond_6

    const/4 v7, 0x2

    goto :goto_1

    .line 94
    :cond_6
    const/4 v8, 0x1

    if-lt v1, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    .line 95
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    move v6, v7

    .line 96
    goto :goto_2
.end method
