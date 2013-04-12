.class Lcom/lge/quicksettings/handlers/HotspotHandler$4;
.super Ljava/lang/Object;
.source "HotspotHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/HotspotHandler;->createWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 349
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    const/4 v1, 0x2

    #calls: Lcom/lge/quicksettings/handlers/HotspotHandler;->SetUserResponse(I)V
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$200(Lcom/lge/quicksettings/handlers/HotspotHandler;I)V

    .line 350
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #setter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z
    invoke-static {v0, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$002(Lcom/lge/quicksettings/handlers/HotspotHandler;Z)Z

    .line 351
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #getter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$300(Lcom/lge/quicksettings/handlers/HotspotHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 352
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #calls: Lcom/lge/quicksettings/handlers/HotspotHandler;->isCheckBoxChecked()Z
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$400(Lcom/lge/quicksettings/handlers/HotspotHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$4;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_use_first_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    :cond_0
    return-void
.end method
