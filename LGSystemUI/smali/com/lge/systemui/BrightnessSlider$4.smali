.class Lcom/lge/systemui/BrightnessSlider$4;
.super Landroid/os/Handler;
.source "BrightnessSlider.java"


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
    .line 121
    iput-object p1, p0, Lcom/lge/systemui/BrightnessSlider$4;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$4;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessSlider;->getBrightness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lge/systemui/BrightnessSlider$4;->this$0:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v0}, Lcom/lge/systemui/BrightnessSlider;->updateBrightness()V

    .line 142
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 143
    return-void

    .line 126
    :pswitch_1
    const-string v0, "BrightnessSlider"

    const-string v1, "BrightnessObservers, Current is MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "BrightnessSlider"

    const-string v1, "BrightnessObservers, Current is MED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :pswitch_3
    const-string v0, "BrightnessSlider"

    const-string v1, "BrightnessObservers, Current is MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :pswitch_4
    const-string v0, "BrightnessSlider"

    const-string v1, "BrightnessObservers, Current is AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :pswitch_5
    const-string v0, "BrightnessSlider"

    const-string v1, "BrightnessObservers, Current is CUSOTM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
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
