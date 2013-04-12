.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->showAlertDialogSKT(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 681
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 682
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    #calls: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setPendingButtonStatus()V
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$200(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    .line 683
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 684
    return-void
.end method
