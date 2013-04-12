.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;
.super Landroid/database/ContentObserver;
.source "AbstractDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 267
    const-string v0, "AbstractDataHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming Data is changed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v2, v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettingsButton;->getButtonStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getButtonStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 270
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 271
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    return-void
.end method
