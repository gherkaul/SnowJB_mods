.class public Lcom/lge/systemui/BrightnessSlider;
.super Lcom/lge/systemui/AbstractBrightness;
.source "BrightnessSlider.java"


# static fields
.field private static final SEEK_BAR_RANGE:I


# instance fields
.field private mAutoChcekFrm:Landroid/view/ViewGroup;

.field private mAutoCheck:Landroid/widget/ToggleButton;

.field private mAutoText:Landroid/widget/TextView;

.field private mBrightInfo:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMainFrm:Landroid/view/ViewGroup;

.field public mObservers:Lcom/lge/systemui/BrightnessObservers;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MAX_VALUE:I

    sget v1, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/lge/systemui/BrightnessSlider;->SEEK_BAR_RANGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 3
    .parameter "context"
    .parameter "statusBarWindowView"
    .parameter "quicksettings"

    .prologue
    const/16 v2, 0x8

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/lge/systemui/AbstractBrightness;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 54
    iput-object p2, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 56
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mMainFrm:Landroid/view/ViewGroup;

    .line 57
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mBrightInfo:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    .line 59
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoChcekFrm:Landroid/view/ViewGroup;

    .line 60
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoText:Landroid/widget/TextView;

    .line 62
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_AUTOBRIGHTNESS_AVAILABLE:Z

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoChcekFrm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    :goto_0
    sget-boolean v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mMainFrm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->isAutoBrightnessMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/lge/systemui/BrightnessSlider$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/BrightnessSlider$1;-><init>(Lcom/lge/systemui/BrightnessSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/lge/systemui/BrightnessSlider$2;

    invoke-direct {v1, p0}, Lcom/lge/systemui/BrightnessSlider$2;-><init>(Lcom/lge/systemui/BrightnessSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    .line 87
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    sget v1, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MAX_VALUE:I

    sget v2, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->updateBrightness()V

    .line 89
    invoke-direct {p0}, Lcom/lge/systemui/BrightnessSlider;->setText()V

    .line 90
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lge/systemui/BrightnessSlider$3;

    invoke-direct {v1, p0}, Lcom/lge/systemui/BrightnessSlider$3;-><init>(Lcom/lge/systemui/BrightnessSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    new-instance v0, Lcom/lge/systemui/BrightnessSlider$4;

    invoke-direct {v0, p0}, Lcom/lge/systemui/BrightnessSlider$4;-><init>(Lcom/lge/systemui/BrightnessSlider;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mHandler:Landroid/os/Handler;

    .line 146
    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Lcom/lge/systemui/BrightnessObservers;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/lge/systemui/BrightnessObservers;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mObservers:Lcom/lge/systemui/BrightnessObservers;

    .line 148
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mObservers:Lcom/lge/systemui/BrightnessObservers;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessObservers;->registerObservers()Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/systemui/BrightnessSlider;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/BrightnessSlider;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/systemui/BrightnessSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lge/systemui/BrightnessSlider;->setText()V

    return-void
.end method

.method private setText()V
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    sget v2, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MAX_VALUE:I

    sget v3, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 174
    .local v0, percent:I
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider;->mBrightInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method


# virtual methods
.method public setBacklight(I)V
    .locals 7
    .parameter "brightness"

    .prologue
    .line 155
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 156
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->isAutoBrightnessMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    sget v4, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int v0, p1, v4

    .line 159
    .local v0, bValue:I
    int-to-float v4, v0

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    sget v5, Lcom/lge/systemui/BrightnessSlider;->SEEK_BAR_RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 160
    .local v3, valf:F
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setAutoBrightnessAdjustment(F)V

    .line 161
    const-string v4, "BrightnessSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAutoBrightnessAdjustment :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0           #bValue:I
    .end local v2           #power:Landroid/os/IPowerManager;
    .end local v3           #valf:F
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v2, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 164
    const-string v4, "BrightnessSlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BackLightBrightness set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 168
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "BrightnessSlider"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mMainFrm:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    return-void
.end method

.method public updateAutoText(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoText:Landroid/widget/TextView;

    const v1, 0x7f090149

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public updateBrightness()V
    .locals 4

    .prologue
    .line 178
    sget-boolean v1, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->getScreenBrightness()I

    move-result v1

    sget v2, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int v0, v1, v2

    .line 182
    .local v0, progress:I
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->getBrightness()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->getScreenBrightnessCustom()I

    move-result v1

    sget v2, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int v0, v1, v2

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->getThermalBrightMax()V

    .line 187
    sget v1, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    add-int/2addr v1, v0

    sget v2, Lcom/lge/systemui/BrightnessSlider;->mThermalMaxBrightness:I

    if-le v1, v2, :cond_2

    .line 188
    sget v1, Lcom/lge/systemui/BrightnessSlider;->mThermalMaxBrightness:I

    sget v2, Lcom/lge/systemui/BrightnessSlider;->BRIGHTNESS_MIN_VALUE:I

    sub-int v0, v1, v2

    .line 189
    const-string v1, "BrightnessSlider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBrightness() limited, progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThermalMaxBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/systemui/BrightnessSlider;->mThermalMaxBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/lge/systemui/BrightnessSlider;->isAutoBrightnessMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
