.class Lcom/lge/debug/DebugAgent$5;
.super Ljava/lang/Object;
.source "DebugAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/debug/DebugAgent;->createDebugButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/debug/DebugAgent;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x1

    .line 180
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$808(Lcom/lge/debug/DebugAgent;)I

    .line 181
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 182
    .local v0, serviceState:Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mServiceCount:I
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$800(Lcom/lge/debug/DebugAgent;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 186
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "STATE_OUT_OF_SERVICE"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 190
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setState(I)V

    .line 191
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "STATE_EMERGENCY_ONLY"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 195
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setState(I)V

    .line 196
    iget-object v1, p0, Lcom/lge/debug/DebugAgent$5;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
