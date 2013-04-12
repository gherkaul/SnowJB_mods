.class Lcom/lge/quicksettings/handlers/DataHandler$1;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/DataHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/DataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/DataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/DataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    #calls: Lcom/lge/quicksettings/handlers/DataHandler;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lge/quicksettings/handlers/DataHandler;->access$000(Lcom/lge/quicksettings/handlers/DataHandler;Landroid/content/Intent;)V

    .line 39
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 41
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$1;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 43
    :cond_0
    return-void
.end method
