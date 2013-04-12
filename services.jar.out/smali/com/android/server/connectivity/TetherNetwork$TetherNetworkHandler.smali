.class Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;
.super Landroid/os/Handler;
.source "TetherNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetwork;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/TetherNetwork;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    .line 666
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 667
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3fe

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 672
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 675
    :sswitch_0
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 677
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    const-string v0, "TetherNetwork"

    const-string v1, "LTE, EHRPD : MSG_START_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobileCheck()Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK connectMobileCheck error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 691
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->disconnectMobile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 692
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK disconnectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 703
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK connectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$600()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 706
    invoke-static {}, Lcom/android/server/connectivity/TetherNetwork;->access$400()Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 709
    :cond_5
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK TetherNetwork Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 715
    :cond_6
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_START_TETHER_NETWORK mTetherNetworkDataTrans error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 722
    :sswitch_1
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->getTetherNetworkDataFlagSet()Z

    move-result v0

    if-ne v0, v2, :cond_a

    .line 725
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->isLteOrEhrpdNetwork()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 726
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const-string v0, "TetherNetwork"

    const-string v1, "LTE, EHRPD : MSG_STOP_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 734
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->disconnectMobile()Z

    move-result v0

    if-nez v0, :cond_8

    .line 735
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK disconnectMobile error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyPhoneTetherStatus(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 739
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK notifyPhoneTetherStatus error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mTetherNetworkDataTrans:Lcom/android/server/connectivity/TetherNetworkDataTransition;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$500(Lcom/android/server/connectivity/TetherNetwork;)Lcom/android/server/connectivity/TetherNetworkDataTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->connectMobile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK connectMobileCheck error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :cond_a
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_STOP_TETHER_NETWORK mTetherNetworkDataTrans error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :sswitch_2
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_MIP_ERR_DLG show Dialog for Mip Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V
    invoke-static {v0, v1, v6}, Lcom/android/server/connectivity/TetherNetwork;->access$300(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 765
    :sswitch_3
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_REJECT_ERR_DLG show Dialog for Network Reject Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 770
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showDialog(Landroid/content/Context;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/TetherNetwork;->access$300(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 775
    :sswitch_4
    const-string v0, "TetherNetwork"

    const-string v1, "MSG_SHOW_NET_ERR_TOAST show Toast for Network Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/server/connectivity/TetherNetwork;->removeTetherDevices(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/TetherNetwork;->access$200(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    iget-object v1, p0, Lcom/android/server/connectivity/TetherNetwork$TetherNetworkHandler;->this$0:Lcom/android/server/connectivity/TetherNetwork;

    #getter for: Lcom/android/server/connectivity/TetherNetwork;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/TetherNetwork;->access$100(Lcom/android/server/connectivity/TetherNetwork;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/server/connectivity/TetherNetwork;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/TetherNetwork;->access$700(Lcom/android/server/connectivity/TetherNetwork;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_1
        0x3fc -> :sswitch_2
        0x3fd -> :sswitch_3
        0x3fe -> :sswitch_4
    .end sparse-switch
.end method
