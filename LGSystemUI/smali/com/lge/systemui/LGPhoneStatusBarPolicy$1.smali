.class Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "LGPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/LGPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xa

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateHeadset(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$000(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v5, "android.location.GPS_PRIVACY_ICON_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateGPSPrivacySetting()V
    invoke-static {v5}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$100(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v5, "lge.intent.action.DMB_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateDmb(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$200(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v5, "android.intent.action.FELICA_LOCK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 75
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateFeliCaLock(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$300(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v5, "lge.intent.action.common_dialog"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 77
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "lge.intent.action.common_dialog is deprecated."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "Use AlertDialogEx. (android.app.AlertDialogEx.*)."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_5
    const-string v5, "lge.intent.action.toast"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 80
    const-string v5, "text"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, strText:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 82
    const-string v5, "gravity"

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 83
    .local v3, gravity:I
    const-string v5, "delay"

    const-wide/16 v6, 0x7d0

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 84
    .local v1, delay:J
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #getter for: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$400(Lcom/lge/systemui/LGPhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v3, v1, v2}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 86
    .end local v1           #delay:J
    .end local v3           #gravity:I
    .end local v4           #strText:Ljava/lang/String;
    :cond_6
    const-string v5, "com.lge.ims.action.SVC_STATUS_IND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateVT(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$500(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_7
    const-string v5, "com.lge.vt.action.NOTIFICATION_ICON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 89
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateVTEnable(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$600(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 90
    :cond_8
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 91
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "ACTION_SERVICE_STATE_CHANGED!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 94
    :cond_9
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateCdmaRoamingIcon(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$700(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    :cond_a
    const-string v5, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    const-string v5, "LGPhoneStatusBarPolicy"

    const-string v6, "ACTION_SIGNAL_STRENGTH_CHANGED!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 100
    :cond_b
    iget-object v5, p0, Lcom/lge/systemui/LGPhoneStatusBarPolicy$1;->this$0:Lcom/lge/systemui/LGPhoneStatusBarPolicy;

    #calls: Lcom/lge/systemui/LGPhoneStatusBarPolicy;->updateSignalStrength(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/lge/systemui/LGPhoneStatusBarPolicy;->access$800(Lcom/lge/systemui/LGPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
