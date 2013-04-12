.class Lcom/lge/systemui/power/LGPowerUI$2;
.super Ljava/lang/Object;
.source "LGPowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/power/LGPowerUI;->showSlowCharginNotification()V
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
    .line 248
    iput-object p1, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$200(Lcom/lge/systemui/power/LGPowerUI;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$200(Lcom/lge/systemui/power/LGPowerUI;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$300(Lcom/lge/systemui/power/LGPowerUI;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power_ui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_slow_charge"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$400(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    #getter for: Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/systemui/power/LGPowerUI;->access$400(Lcom/lge/systemui/power/LGPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 259
    iget-object v0, p0, Lcom/lge/systemui/power/LGPowerUI$2;->this$0:Lcom/lge/systemui/power/LGPowerUI;

    const/4 v1, 0x0

    #setter for: Lcom/lge/systemui/power/LGPowerUI;->mSlowChargingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/systemui/power/LGPowerUI;->access$402(Lcom/lge/systemui/power/LGPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 261
    :cond_1
    return-void
.end method
