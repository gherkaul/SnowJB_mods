.class Lcom/lge/systemui/power/LGPowerUI$3;
.super Ljava/lang/Object;
.source "LGPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/power/LGPowerUI;->showBatteryDialog(IIIJ)V
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
    .line 533
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI$3;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "d"
    .parameter "w"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$3;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mThermDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$500(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$3;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$100(Lcom/lge/systemui/power/LGPowerUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/power/LGPowerUI$3;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/power/LGPowerUI;->access$100(Lcom/lge/systemui/power/LGPowerUI;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    :cond_0
    return-void
.end method
