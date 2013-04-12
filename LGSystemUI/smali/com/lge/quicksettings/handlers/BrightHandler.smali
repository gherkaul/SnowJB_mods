.class public Lcom/lge/quicksettings/handlers/BrightHandler;
.super Lcom/lge/systemui/AbstractBrightness;
.source "BrightHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;
    }
.end annotation


# instance fields
.field private limiter:Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field public observers:Lcom/lge/systemui/BrightnessObservers;

.field private onChangeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/lge/systemui/AbstractBrightness;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 46
    new-instance v0, Lcom/lge/quicksettings/handlers/BrightHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/BrightHandler$1;-><init>(Lcom/lge/quicksettings/handlers/BrightHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->onChangeHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/lge/systemui/BrightnessObservers;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/lge/systemui/BrightnessObservers;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->observers:Lcom/lge/systemui/BrightnessObservers;

    .line 75
    new-instance v0, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;-><init>(Lcom/lge/quicksettings/handlers/BrightHandler;Lcom/lge/quicksettings/handlers/BrightHandler$1;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->limiter:Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/BrightHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler;->getBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MIN_VALUE:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MED_VALUE:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MAX_VALUE_90:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/quicksettings/handlers/BrightHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler;->getScreenBrightnessCustom()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lge/quicksettings/handlers/BrightHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/quicksettings/handlers/BrightHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 94
    const-string v2, "BrightHandler"

    const-string v3, "onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x5

    .line 97
    .local v1, nextMode:I
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler;->getBrightness()I

    move-result v0

    .line 98
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 120
    :pswitch_0
    const-string v2, "BrightHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, Unknown brightness mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), Set as BRIGHTNESS_MAX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x5

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->limiter:Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;

    invoke-virtual {v2, v1}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->showLimitedToastIfLimitNeeds(I)V

    .line 126
    invoke-virtual {p0, v1, v5}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    .line 128
    return v5

    .line 100
    :pswitch_1
    const-string v2, "BrightHandler"

    const-string v3, "onClick, BRIGHTNESS_MIN -> BRIGHTNESS_MED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x3

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v2, "BrightHandler"

    const-string v3, "onClick, BRIGHTNESS_MED -> BRIGHTNESS_MAX"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x5

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const-string v2, "BrightHandler"

    const-string v3, "onClick, BRIGHTNESS_MAX -> BRIGHTNESS_AUTO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x7

    .line 110
    goto :goto_0

    .line 112
    :pswitch_4
    const-string v2, "BrightHandler"

    const-string v3, "onClick, BRIGHTNESS_AUTO -> BRIGHTNESS_CUSTOM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v1, 0x9

    .line 114
    goto :goto_0

    .line 116
    :pswitch_5
    const-string v2, "BrightHandler"

    const-string v3, "onClick, BRIGHTNESS_CUSTOM -> BRIGHTNESS_MIN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_0

    .line 98
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

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 81
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->observers:Lcom/lge/systemui/BrightnessObservers;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessObservers;->registerObservers()Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->observers:Lcom/lge/systemui/BrightnessObservers;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessObservers;->unregisterObservers()Z

    .line 89
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setButtonAs(IZ)V
    .locals 5
    .parameter "mode"
    .parameter "updateBackLight"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 206
    if-ne p1, v4, :cond_0

    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_MULTI_ALC:Z

    if-ne v0, v2, :cond_0

    .line 207
    const-string v0, "BrightHandler"

    const-string v1, "BRIGHTNESS_AUTO does not supported.\nChange to BRIGHTNESS_CUSTOM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 p1, 0x9

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 233
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 234
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    .line 238
    :goto_0
    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/lge/quicksettings/handlers/BrightHandler;->setBacklight(I)V

    .line 241
    :cond_1
    return-void

    .line 213
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 218
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 221
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 222
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 225
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 226
    invoke-virtual {p0, v4}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 229
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setTextColor(Z)V

    .line 230
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonStatus(I)V

    goto :goto_0

    .line 211
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

.method public setButtonStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 184
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler;->getScreenBrightnessCustom()I

    move-result v1

    sget v2, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    sget v2, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MAX_VALUE:I

    sget v3, Lcom/lge/quicksettings/handlers/BrightHandler;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 187
    .local v0, perscent:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setExtraInfo(Ljava/lang/String;)V

    .line 189
    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 191
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 197
    .end local v0           #perscent:I
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setExtraInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextColor(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public updateBrightnessButton()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler;->getBrightness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, unknown brightness"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, v3, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    .line 177
    :goto_0
    return-void

    .line 154
    :pswitch_1
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, BRIGHTNESS_MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, BRIGHTNESS_MED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    goto :goto_0

    .line 162
    :pswitch_3
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, BRIGHTNESS_MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, v3, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, BRIGHTNESS_AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    goto :goto_0

    .line 170
    :pswitch_5
    const-string v0, "BrightHandler"

    const-string v1, "updateBrightnessButton, BRIGHTNESS_CUSTOM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->setButtonAs(IZ)V

    goto :goto_0

    .line 152
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
