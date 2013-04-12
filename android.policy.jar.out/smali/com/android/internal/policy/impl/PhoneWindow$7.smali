.class Lcom/android/internal/policy/impl/PhoneWindow$7;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->showOverlayCtrDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 4417
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v8, 0x0

    .line 4431
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4432
    .local v2, lpWindow:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4433
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isThereTopOverlay()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4434
    if-eqz p3, :cond_1

    .line 4435
    const v4, 0x3dcccccd

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->getReverseUSLAlphaValue(I)D
    invoke-static {v5, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300(Lcom/android/internal/policy/impl/PhoneWindow;I)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4436
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "overlay-alphablending-settings"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 4437
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4438
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "overlay-alpha-value"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4439
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4443
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->setAlphaOverlay(Landroid/view/ViewGroup;FI)V
    invoke-static {v4, v5, v6, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3500(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/ViewGroup;FI)V

    .line 4444
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4446
    :cond_0
    return-void

    .line 4441
    :cond_1
    int-to-double v4, p2

    const-wide v6, 0x3f847ae147ae147bL

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 4426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->quitUpdatAlphaTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4427
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$7;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->quitUpdatAlphaTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4422
    return-void
.end method
