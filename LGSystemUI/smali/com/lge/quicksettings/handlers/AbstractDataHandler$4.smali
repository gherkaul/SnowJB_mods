.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 221
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setPendingButtonStatus()V
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$200(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v2, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    .line 228
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    const-string v1, "AbstractDataHandler"

    const-string v2, "handleMEssage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const-string v1, "AbstractDataHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call setNetworkRoamingButton : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->isDataRoamingAllowed()Z
    invoke-static {v3}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$300(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkRoamingButton()V
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$000(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkButton()V

    goto :goto_0

    .line 241
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 243
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataNetworkModeRoamingQueryPopupLGT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :goto_1
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 249
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 250
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 251
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto/16 :goto_0

    .line 245
    :cond_2
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataRoamingSettingsSKT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
