.class final Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;
.super Landroid/os/Handler;
.source "WiFiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/WiFiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WiFiDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;


# direct methods
.method private constructor <init>(Lcom/lge/quicksettings/handlers/WiFiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/quicksettings/handlers/WiFiHandler;Lcom/lge/quicksettings/handlers/WiFiHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;-><init>(Lcom/lge/quicksettings/handlers/WiFiHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 285
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    #getter for: Lcom/lge/quicksettings/handlers/WiFiHandler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;->access$200(Lcom/lge/quicksettings/handlers/WiFiHandler;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 288
    .local v1, state:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 289
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsDialogActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    #getter for: Lcom/lge/quicksettings/handlers/WiFiHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;->access$300(Lcom/lge/quicksettings/handlers/WiFiHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$WiFiDialogHandler;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    iget-object v2, v2, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    goto :goto_0

    .line 296
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/lge/quicksettings/handlers/WiFiHandler;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wi-fi is not ready for displaying AP search list."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
