.class Lcom/lge/quicksettings/handlers/NFCHandler$1;
.super Ljava/lang/Object;
.source "NFCHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/NFCHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/NFCHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/NFCHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCHandler$1;->this$0:Lcom/lge/quicksettings/handlers/NFCHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v5, "NFCHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_SYSTEM_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 68
    .local v4, systemStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_CARD_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_CARD_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, cardStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_DISCOVERY_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_DISCOVERY_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, discoveryStateExtra:I
    sget-object v5, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->EXTRA_ADAPTER_P2P_STATE:Ljava/lang/String;

    sget v6, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->STATE_P2P_OFF:I

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 72
    .local v3, p2pStateExtra:I
    const-string v5, "NFCHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "systemStateExtra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ncardStateExtra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ndiscoveryStateExtra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\np2pStateExtra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v1           #cardStateExtra:I
    .end local v2           #discoveryStateExtra:I
    .end local v3           #p2pStateExtra:I
    .end local v4           #systemStateExtra:I
    :cond_0
    iget-object v5, p0, Lcom/lge/quicksettings/handlers/NFCHandler$1;->this$0:Lcom/lge/quicksettings/handlers/NFCHandler;

    invoke-virtual {v5}, Lcom/lge/quicksettings/handlers/NFCHandler;->setNFCButton()V

    .line 76
    return-void
.end method
