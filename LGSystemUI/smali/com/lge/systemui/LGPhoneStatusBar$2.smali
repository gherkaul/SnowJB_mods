.class Lcom/lge/systemui/LGPhoneStatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "LGPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/LGPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/LGPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/lge/systemui/LGPhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 125
    .local v2, slotId:I
    const-string v3, "LGPhoneStatusBar"

    const-string v4, "SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v3, "LGPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPN_STRINGS_UPDATED_ACTION slotId  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "spn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v2}, Lcom/lge/systemui/BAL;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 159
    .end local v2           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-static {p2}, Lcom/lge/systemui/BAL;->updateSimState(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v3, "dualdummy2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-static {v6, p1}, Lcom/lge/systemui/BAL;->updateCarrierSimState(ILandroid/content/Context;)V

    .line 136
    invoke-static {v7, p1}, Lcom/lge/systemui/BAL;->updateCarrierSimState(ILandroid/content/Context;)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v3, "com.lge.action.minicomponent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    const-string v3, "enable"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 139
    .local v1, enable:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/systemui/LGPhoneStatusBar;->makeMiniComponent(Z)V

    goto :goto_0

    .line 140
    .end local v1           #enable:Ljava/lang/Boolean;
    :cond_4
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    const-string v3, "LGPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simtest  ACTION_CONFIGURATION_CHANGED action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v6, p1}, Lcom/lge/systemui/BAL;->updateCarrierSimState(ILandroid/content/Context;)V

    .line 143
    invoke-static {v7, p1}, Lcom/lge/systemui/BAL;->updateCarrierSimState(ILandroid/content/Context;)V

    goto :goto_0

    .line 144
    :cond_5
    const-string v3, "com.lge.systemui.cleanview.hide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 146
    const-string v3, "LGPhoneStatusBar"

    const-string v4, "Hide Brightness slider for Clean view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-boolean v3, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    if-nez v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/lge/systemui/LGPhoneStatusBar;->access$600(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessSlider:Lcom/lge/systemui/BrightnessSlider;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lge/systemui/BrightnessSlider;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    const-string v4, "sender"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/lge/systemui/LGPhoneStatusBar;->mRequestedCleanViewPackage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/lge/systemui/LGPhoneStatusBar;->access$702(Lcom/lge/systemui/LGPhoneStatusBar;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #setter for: Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z
    invoke-static {v3, v7}, Lcom/lge/systemui/LGPhoneStatusBar;->access$802(Lcom/lge/systemui/LGPhoneStatusBar;Z)Z

    goto/16 :goto_0

    .line 152
    :cond_6
    const-string v3, "com.lge.systemui.cleanview.show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    sget-boolean v3, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    if-nez v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBar;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v3}, Lcom/lge/systemui/LGPhoneStatusBar;->access$600(Lcom/lge/systemui/LGPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessSlider:Lcom/lge/systemui/BrightnessSlider;

    invoke-virtual {v3, v6}, Lcom/lge/systemui/BrightnessSlider;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lcom/lge/systemui/LGPhoneStatusBar$2;->this$0:Lcom/lge/systemui/LGPhoneStatusBar;

    #setter for: Lcom/lge/systemui/LGPhoneStatusBar;->mIsHidedForCleanView:Z
    invoke-static {v3, v6}, Lcom/lge/systemui/LGPhoneStatusBar;->access$802(Lcom/lge/systemui/LGPhoneStatusBar;Z)Z

    goto/16 :goto_0
.end method
