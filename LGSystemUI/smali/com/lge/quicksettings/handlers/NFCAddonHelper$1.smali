.class Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NFCAddonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/NFCAddonHelper;->registerBroadcastReceiver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/NFCAddonHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 42
    .local v4, systemStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, cardStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, discoveryStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 46
    .local v3, p2pStateExtra:I
    sget v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_ON:I

    if-ne v4, v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    iget-object v5, v5, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nextHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    iget-object v6, v6, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$1;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOnRunnable:Ljava/lang/Runnable;

    .line 52
    .end local v1           #cardStateExtra:I
    .end local v2           #discoveryStateExtra:I
    .end local v3           #p2pStateExtra:I
    .end local v4           #systemStateExtra:I
    :cond_0
    return-void
.end method
