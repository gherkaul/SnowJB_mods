.class Lcom/lge/quicksettings/handlers/BrightHandler$1;
.super Landroid/os/Handler;
.source "BrightHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/BrightHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/BrightHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/BrightHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BrightHandler$1;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/BrightHandler$1;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler$1;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    #calls: Lcom/lge/quicksettings/handlers/BrightHandler;->getBrightness()I
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$000(Lcom/lge/quicksettings/handlers/BrightHandler;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/BrightHandler$1;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->updateBrightnessButton()V

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 72
    return-void

    .line 53
    :pswitch_1
    const-string v0, "BrightHandler"

    const-string v1, "BrightnessObservers, Current is MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "BrightHandler"

    const-string v1, "BrightnessObservers, Current is MED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "BrightHandler"

    const-string v1, "BrightnessObservers, Current is MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "BrightHandler"

    const-string v1, "BrightnessObservers, Current is AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :pswitch_5
    const-string v0, "BrightHandler"

    const-string v1, "BrightnessObservers, Current is CUSOTM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
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
