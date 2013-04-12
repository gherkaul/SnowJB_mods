.class Lcom/lge/debug/DebugAgent$6;
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
    .line 204
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1008(Lcom/lge/debug/DebugAgent;)I

    .line 207
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mStrengthCount:I
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1000(Lcom/lge/debug/DebugAgent;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Strength 0"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 210
    iget-object v14, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, -0x8c

    const/4 v10, -0x1

    const/16 v11, -0xc8

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    #setter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v14, v0}, Lcom/lge/debug/DebugAgent;->access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 211
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Strength 1"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 215
    iget-object v14, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, -0x73

    const/4 v10, -0x1

    const/16 v11, -0x1e

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    #setter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v14, v0}, Lcom/lge/debug/DebugAgent;->access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 216
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Strength 2"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 220
    iget-object v14, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, -0x69

    const/4 v10, -0x1

    const/16 v11, 0xa

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    #setter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v14, v0}, Lcom/lge/debug/DebugAgent;->access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 221
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Strength 3"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 225
    iget-object v14, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, -0x5f

    const/4 v10, -0x1

    const/16 v11, 0x2d

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    #setter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v14, v0}, Lcom/lge/debug/DebugAgent;->access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 226
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    .line 229
    :pswitch_4
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Strength 4"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 230
    iget-object v14, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, -0x55

    const/4 v10, -0x1

    const/16 v11, 0x82

    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    #setter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v14, v0}, Lcom/lge/debug/DebugAgent;->access$1102(Lcom/lge/debug/DebugAgent;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 231
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$6;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1100(Lcom/lge/debug/DebugAgent;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
