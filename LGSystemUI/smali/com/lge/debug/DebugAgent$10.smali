.class Lcom/lge/debug/DebugAgent$10;
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
    .line 302
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x7d0

    const/4 v2, 0x1

    .line 304
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1608(Lcom/lge/debug/DebugAgent;)I

    .line 305
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDataActivityCount:I
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$1600(Lcom/lge/debug/DebugAgent;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 308
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_ACTIVITY_IN"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 312
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_ACTIVITY_OUT"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 316
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_ACTIVITY_INOUT"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 319
    :pswitch_3
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 320
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$10;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DATA_ACTIVITY_NONE"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
