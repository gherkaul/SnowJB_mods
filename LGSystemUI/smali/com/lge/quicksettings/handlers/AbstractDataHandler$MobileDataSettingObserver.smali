.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;
.super Landroid/database/ContentObserver;
.source "AbstractDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataSettingObserver"
.end annotation


# instance fields
.field observerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method public constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    .line 294
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 295
    iput-object p2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->observerHandler:Landroid/os/Handler;

    .line 296
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getButtonStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 301
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 302
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->observerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->observerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    return-void
.end method
