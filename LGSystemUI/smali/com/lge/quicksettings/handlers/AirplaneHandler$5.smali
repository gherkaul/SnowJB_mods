.class Lcom/lge/quicksettings/handlers/AirplaneHandler$5;
.super Ljava/lang/Object;
.source "AirplaneHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AirplaneHandler;->airplaneModePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 399
    .local v0, airplaneModeStatus:Z
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    const-string v2, "state"

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #getter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$300(Lcom/lge/quicksettings/handlers/AirplaneHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$5;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    const/4 v3, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$202(Lcom/lge/quicksettings/handlers/AirplaneHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 407
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v4

    .line 399
    goto :goto_0

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    move v3, v4

    .line 404
    goto :goto_1
.end method
