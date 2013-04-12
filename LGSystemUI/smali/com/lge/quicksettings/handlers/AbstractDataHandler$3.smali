.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;
.super Landroid/telephony/PhoneStateListener;
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
    .line 131
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 175
    if-eqz p1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 177
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 178
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iput-boolean v3, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->forceDisabledOnCalling:Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iput-boolean v2, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->forceDisabledOnCalling:Z

    .line 182
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 186
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->getStatus()I

    move-result v0

    .line 187
    .local v0, status:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v0}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 189
    if-ne v0, v3, :cond_2

    .line 190
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 210
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 201
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 138
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iput-object p1, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mServiceState:Landroid/telephony/ServiceState;

    .line 139
    const-string v3, "AbstractDataHandler"

    const-string v4, "onServiceStateChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_5

    .line 141
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkRoamingButton()V
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$000(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    .line 170
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAirplaneToggle:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->hasService()Z
    invoke-static {v3}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$100(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_3

    .line 147
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAirplaneToggle:Ljava/lang/Boolean;

    .line 148
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v4, v4, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->getStatus()I

    move-result v0

    .line 153
    .local v0, status:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v0}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 155
    if-ne v0, v2, :cond_4

    .line 156
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v5}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 163
    .end local v0           #status:I
    :cond_5
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAirplaneToggle:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->hasService()Z
    invoke-static {v3}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$100(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAirplaneToggle:Ljava/lang/Boolean;

    .line 165
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v3, v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v4, v4, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v3, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkButton()V

    goto/16 :goto_0

    :cond_7
    move v2, v1

    .line 165
    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "signalStrength"

    .prologue
    .line 134
    return-void
.end method
