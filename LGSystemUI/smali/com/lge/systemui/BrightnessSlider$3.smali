.class Lcom/lge/systemui/BrightnessSlider$3;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/BrightnessSlider;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/lge/quicksettings/QuickSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/BrightnessSlider;


# direct methods
.method constructor <init>(Lcom/lge/systemui/BrightnessSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 105
    if-eqz p3, :cond_1

    .line 106
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessSlider;->getThermalBrightMax()V

    .line 107
    sget v0, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    add-int/2addr v0, p2

    sget v1, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I

    if-le v0, v1, :cond_0

    .line 108
    sget v0, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I

    sget v1, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    #calls: Lcom/lge/systemui/BrightnessSlider;->setText()V
    invoke-static {v0}, Lcom/lge/systemui/BrightnessSlider;->access$200(Lcom/lge/systemui/BrightnessSlider;)V

    .line 110
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    iget-object v0, v0, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    iget-object v1, v1, Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;

    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 111
    const-string v0, "BrightnessSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged() limited, progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mThermalMaxBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/systemui/AbstractBrightness;->mThermalMaxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    sget v1, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/systemui/BrightnessSlider;->setBacklight(I)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    #calls: Lcom/lge/systemui/BrightnessSlider;->setText()V
    invoke-static {v0}, Lcom/lge/systemui/BrightnessSlider;->access$200(Lcom/lge/systemui/BrightnessSlider;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 101
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sget v2, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    add-int v0, v1, v2

    .line 94
    .local v0, bValue:I
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v1, v0}, Lcom/lge/systemui/BrightnessSlider;->setScreenBrightness(I)Z

    .line 95
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v1, v0}, Lcom/lge/systemui/BrightnessSlider;->setScreenBrightnessCustom(I)Z

    .line 96
    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$3;->this$0:Lcom/lge/systemui/BrightnessSlider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/systemui/BrightnessSlider;->setCustomScreenBrightness(Z)Z

    .line 97
    return-void
.end method
