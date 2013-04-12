.class Lcom/lge/quicksettings/handlers/WiFiHandler$1;
.super Ljava/lang/Object;
.source "WiFiHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/WiFiHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/WiFiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$1;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "wifi_p2p_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$1;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    #setter for: Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z
    invoke-static {v1, v3}, Lcom/lge/quicksettings/handlers/WiFiHandler;->access$102(Lcom/lge/quicksettings/handlers/WiFiHandler;Z)Z

    .line 104
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0       #state:I
    :cond_1
    if-ne v0, v3, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$1;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    const/4 v2, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/WiFiHandler;->mWiFiDirectEnable:Z
    invoke-static {v1, v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;->access$102(Lcom/lge/quicksettings/handlers/WiFiHandler;Z)Z

    goto :goto_0

    .line 102
    .end local v0           #state:I
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/WiFiHandler$1;->this$0:Lcom/lge/quicksettings/handlers/WiFiHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/WiFiHandler;->refreshButton()V

    goto :goto_0
.end method
