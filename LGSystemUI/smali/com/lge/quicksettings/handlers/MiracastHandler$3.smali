.class Lcom/lge/quicksettings/handlers/MiracastHandler$3;
.super Landroid/os/Handler;
.source "MiracastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/MiracastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/MiracastHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler$3;->this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler$3;->this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;

    #getter for: Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->access$000(Lcom/lge/quicksettings/handlers/MiracastHandler;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 304
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler$3;->this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;

    #getter for: Lcom/lge/quicksettings/handlers/MiracastHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->access$000(Lcom/lge/quicksettings/handlers/MiracastHandler;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
