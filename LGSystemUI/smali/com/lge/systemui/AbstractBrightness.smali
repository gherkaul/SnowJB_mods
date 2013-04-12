.class public abstract Lcom/lge/systemui/AbstractBrightness;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "AbstractBrightness.java"


# static fields
.field protected static BRIGHTNESS_MAX_VALUE:I

.field protected static BRIGHTNESS_MAX_VALUE_90:I

.field protected static BRIGHTNESS_MED_CUT_VALUE:I

.field protected static BRIGHTNESS_MED_VALUE:I

.field protected static BRIGHTNESS_MIN_CUT_VALUE:I

.field protected static BRIGHTNESS_MIN_VALUE:I

.field protected static mThermalMaxBrightness:I


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 47
    iput-object p1, p0, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    .line 50
    const/16 v0, 0xff

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE:I

    .line 51
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/lge/systemui/AbstractBrightness;->getValue(I)I

    move-result v0

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE_90:I

    .line 52
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/lge/systemui/AbstractBrightness;->getValue(I)I

    move-result v0

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MED_VALUE:I

    .line 54
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/lge/systemui/AbstractBrightness;->getValue(I)I

    move-result v0

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_CUT_VALUE:I

    .line 55
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/lge/systemui/AbstractBrightness;->getValue(I)I

    move-result v0

    sput v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MED_CUT_VALUE:I

    .line 56
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE:I

    sput v0, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I

    .line 57
    return-void
.end method


# virtual methods
.method protected getBrightness()I
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->getScreenBrightness()I

    move-result v0

    .line 66
    .local v0, current:I
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->isAutoBrightnessMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-nez v1, :cond_0

    .line 67
    const-string v1, "AbstractBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is BRIGHTNESS_AUTO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x7

    .line 85
    :goto_0
    return v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->isCustomScreenBrightness()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "AbstractBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is BRIGHTNESS_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->getScreenBrightnessCustom()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 73
    const/16 v1, 0x9

    goto :goto_0

    .line 77
    :cond_1
    sget v1, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_CUT_VALUE:I

    if-gt v0, v1, :cond_2

    .line 78
    const-string v1, "AbstractBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is BRIGHTNESS_MIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    :cond_2
    sget v1, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MED_CUT_VALUE:I

    if-gt v0, v1, :cond_3

    .line 81
    const-string v1, "AbstractBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is BRIGHTNESS_MED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x3

    goto :goto_0

    .line 84
    :cond_3
    const-string v1, "AbstractBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is BRIGHTNESS_MAX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x5

    goto/16 :goto_0
.end method

.method protected getCustomScreenBrightness()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, -0x1

    .line 101
    .local v0, defaultValue:I
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "custom_screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getScreenBrightness()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, -0x1

    .line 91
    .local v0, defaultValue:I
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getScreenBrightnessCustom()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, -0x1

    .line 106
    .local v0, defaultValue:I
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_custom"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getScreenBrightnessMode()I
    .locals 3

    .prologue
    .line 95
    const/4 v0, -0x1

    .line 96
    .local v0, defaultValue:I
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThermalBrightMax()V
    .locals 8

    .prologue
    .line 208
    new-instance v1, Ljava/lang/String;

    const-string v5, "/sys/class/leds/lcd-backlight/max_brightness"

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, flag_read_path:Ljava/lang/String;
    const-string v2, ""

    .line 210
    .local v2, frag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 213
    .local v3, inFlagFile:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .local v4, inFlagFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string v5, "AbstractBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thermal max bright -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 223
    if-eqz v4, :cond_0

    .line 224
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 227
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-void

    .line 225
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 226
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "AbstractBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thermal max bright read fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget v5, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE:I

    sput v5, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v3, :cond_1

    .line 224
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 225
    :catch_2
    move-exception v5

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 223
    :goto_2
    if-eqz v3, :cond_2

    .line 224
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 225
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 222
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_2

    .line 218
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method protected getValue(I)I
    .locals 6
    .parameter "percent"

    .prologue
    .line 60
    sget v2, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE:I

    sget v3, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double v0, v2, v4

    .line 61
    .local v0, value:D
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sget v4, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method protected isAutoBrightnessMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->getScreenBrightnessMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCustomScreenBrightness()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->getCustomScreenBrightness()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setBacklight(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE_90:I

    .line 150
    .local v0, brightness:I
    packed-switch p1, :pswitch_data_0

    .line 184
    :pswitch_0
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE_90:I

    .line 189
    :cond_0
    :goto_0
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 191
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-ne v3, v5, :cond_2

    .line 193
    add-int/lit16 v3, v0, 0x3e8

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 194
    const-string v3, "AbstractBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackLightBrightness set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemui/AbstractBrightness;->setScreenBrightness(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_2
    return-void

    .line 152
    :pswitch_1
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    .line 153
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setCustomScreenBrightness(Z)Z

    .line 154
    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setScreenBrightnessMode(Z)Z

    goto :goto_0

    .line 159
    :pswitch_2
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MED_VALUE:I

    .line 160
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setCustomScreenBrightness(Z)Z

    .line 161
    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-nez v3, :cond_0

    .line 162
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setScreenBrightnessMode(Z)Z

    goto :goto_0

    .line 166
    :pswitch_3
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE_90:I

    .line 167
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setCustomScreenBrightness(Z)Z

    .line 168
    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setScreenBrightnessMode(Z)Z

    goto :goto_0

    .line 173
    :pswitch_4
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MAX_VALUE_90:I

    .line 174
    invoke-virtual {p0, v4}, Lcom/lge/systemui/AbstractBrightness;->setCustomScreenBrightness(Z)Z

    .line 175
    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {p0, v5}, Lcom/lge/systemui/AbstractBrightness;->setScreenBrightnessMode(Z)Z

    goto :goto_0

    .line 180
    :pswitch_5
    invoke-virtual {p0}, Lcom/lge/systemui/AbstractBrightness;->getScreenBrightnessCustom()I

    move-result v0

    .line 181
    invoke-virtual {p0, v5}, Lcom/lge/systemui/AbstractBrightness;->setCustomScreenBrightness(Z)Z

    goto :goto_0

    .line 196
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_2
    :try_start_1
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 197
    const-string v3, "AbstractBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackLightBrightness set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 203
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "AbstractBrightness"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected setCustomScreenBrightness(Z)Z
    .locals 3
    .parameter "isCustomMode"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "custom_screen_brightness"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setScreenBrightness(I)Z
    .locals 2
    .parameter "brightness"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected setScreenBrightnessCustom(I)Z
    .locals 2
    .parameter "brightness"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_custom"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected setScreenBrightnessMode(Z)Z
    .locals 3
    .parameter "isAutoMode"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->resolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
