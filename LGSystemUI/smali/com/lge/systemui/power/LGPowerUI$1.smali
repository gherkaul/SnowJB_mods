.class Lcom/lge/systemui/power/LGPowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "LGPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/power/LGPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/power/LGPowerUI;


# direct methods
.method constructor <init>(Lcom/lge/systemui/power/LGPowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-virtual {v2}, Lcom/lge/systemui/power/LGPowerUI;->isPowerDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "LGPowerUI"

    const-string v3, "Power down is ready..., all intent is blocked."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.intent.action.ACTION_THERMALDAEMON_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-virtual {v2}, Lcom/lge/systemui/power/LGPowerUI;->showCPUThermWarning()V

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    const-string v2, "value"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v1, v2, 0xa

    .line 120
    .local v1, xoTemperature:I
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-virtual {v2, v1}, Lcom/lge/systemui/power/LGPowerUI;->showXOThermWarning(I)V

    goto :goto_0

    .line 121
    .end local v1           #xoTemperature:I
    :cond_3
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/power/LGPowerUI;->access$100(Lcom/lge/systemui/power/LGPowerUI;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/systemui/power/LGPowerUI$1;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/systemui/power/LGPowerUI;->access$100(Lcom/lge/systemui/power/LGPowerUI;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
