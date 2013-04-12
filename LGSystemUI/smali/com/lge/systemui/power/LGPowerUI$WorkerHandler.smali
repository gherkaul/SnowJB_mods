.class final Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;
.super Landroid/os/Handler;
.source "LGPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/power/LGPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/power/LGPowerUI;


# direct methods
.method private constructor <init>(Lcom/lge/systemui/power/LGPowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/systemui/power/LGPowerUI;Lcom/lge/systemui/power/LGPowerUI$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;-><init>(Lcom/lge/systemui/power/LGPowerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 674
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 680
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$502(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 686
    :pswitch_1
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 688
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$502(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$600(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$600(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 692
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mPowerDownDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$602(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$700(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$700(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 696
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mCPUThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$702(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #calls: Lcom/lge/systemui/power/LGPowerUI;->wakeLockShutdown()V
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$800(Lcom/lge/systemui/power/LGPowerUI;)V

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$900(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$900(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 705
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mBatteryIdDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$902(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #calls: Lcom/lge/systemui/power/LGPowerUI;->wakeLockShutdown()V
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$800(Lcom/lge/systemui/power/LGPowerUI;)V

    goto :goto_0

    .line 711
    :pswitch_3
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$1000(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$1000(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 713
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$WorkerHandler;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$1002(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
