.class Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;
.super Ljava/lang/Object;
.source "NFCAddonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/NFCAddonHelper;->turnOn()Z
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
    .line 128
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "turnOn, Runnable executed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcCard()Z

    .line 133
    invoke-static {}, Lcom/lge/quicksettings/handlers/NFCHelperAbstract;->isKoreanOperator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCAddonHelper$3;->this$0:Lcom/lge/quicksettings/handlers/NFCAddonHelper;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/NFCAddonHelper;->nfcAdapaterAddon:Lcom/lge/quicksettings/handlers/NFCAdapterAddon;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCAdapterAddon;->enableNfcDiscovery()Z

    .line 136
    :cond_0
    return-void
.end method
