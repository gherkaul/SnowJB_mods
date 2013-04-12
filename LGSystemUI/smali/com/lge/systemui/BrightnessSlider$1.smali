.class Lcom/lge/systemui/BrightnessSlider$1;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 68
    iput-object p1, p0, Lcom/lge/systemui/BrightnessSlider$1;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$1;->this$0:Lcom/lge/systemui/BrightnessSlider;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$1;->this$0:Lcom/lge/systemui/BrightnessSlider;

    #getter for: Lcom/lge/systemui/BrightnessSlider;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/lge/systemui/BrightnessSlider;->access$000(Lcom/lge/systemui/BrightnessSlider;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sget v2, Lcom/lge/systemui/AbstractBrightness;->BRIGHTNESS_MIN_VALUE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/systemui/BrightnessSlider;->setBacklight(I)V

    .line 72
    return-void
.end method
