.class Lcom/lge/quicksettings/handlers/AirplaneHandler$2;
.super Ljava/lang/Object;
.source "AirplaneHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AirplaneHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->refreshButton()V

    .line 118
    invoke-static {}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received Broadcast ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$200(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$200(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    const/4 v2, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$202(Lcom/lge/quicksettings/handlers/AirplaneHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->airplaneModePopup()V

    goto :goto_0

    .line 130
    :cond_3
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$400(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #setter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$402(Lcom/lge/quicksettings/handlers/AirplaneHandler;Z)Z

    .line 135
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    #calls: Lcom/lge/quicksettings/handlers/AirplaneHandler;->setAirplaneModeOn(Z)V
    invoke-static {v4, v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$500(Lcom/lge/quicksettings/handlers/AirplaneHandler;Z)V

    .line 137
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 139
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 135
    goto :goto_1

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setButtonStatus(I)V

    .line 142
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$2;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v1, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->setTextColor(Z)V

    goto :goto_0
.end method
