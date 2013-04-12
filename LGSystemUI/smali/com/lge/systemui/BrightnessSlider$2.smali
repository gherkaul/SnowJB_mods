.class Lcom/lge/systemui/BrightnessSlider$2;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 74
    iput-object p1, p0, Lcom/lge/systemui/BrightnessSlider$2;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$2;->this$0:Lcom/lge/systemui/BrightnessSlider;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessSlider$2;->this$0:Lcom/lge/systemui/BrightnessSlider;

    #getter for: Lcom/lge/systemui/BrightnessSlider;->mAutoCheck:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/lge/systemui/BrightnessSlider;->access$100(Lcom/lge/systemui/BrightnessSlider;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/BrightnessSlider;->setScreenBrightnessMode(Z)Z

    .line 78
    return-void
.end method
