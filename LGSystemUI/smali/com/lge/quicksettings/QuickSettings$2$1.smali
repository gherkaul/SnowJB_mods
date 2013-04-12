.class Lcom/lge/quicksettings/QuickSettings$2$1;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/QuickSettings$2;->onClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/quicksettings/QuickSettings$2;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/QuickSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettings$2$1;->this$1:Lcom/lge/quicksettings/QuickSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings$2$1;->this$1:Lcom/lge/quicksettings/QuickSettings$2;

    iget-object v0, v0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v0}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v0

    const v1, 0x7f02013b

    invoke-virtual {v0, v2, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setIcon(II)V

    .line 400
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettings$2$1;->this$1:Lcom/lge/quicksettings/QuickSettings$2;

    iget-object v0, v0, Lcom/lge/quicksettings/QuickSettings$2;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mEditButton:Lcom/lge/quicksettings/QuickSettingsButton;
    invoke-static {v0}, Lcom/lge/quicksettings/QuickSettings;->access$400(Lcom/lge/quicksettings/QuickSettings;)Lcom/lge/quicksettings/QuickSettingsButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 401
    return-void
.end method
