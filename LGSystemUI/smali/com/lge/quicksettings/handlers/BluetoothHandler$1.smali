.class Lcom/lge/quicksettings/handlers/BluetoothHandler$1;
.super Ljava/lang/Object;
.source "BluetoothHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/BluetoothHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/BluetoothHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/BluetoothHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler$1;->this$0:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, state:I
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/BluetoothHandler$1;->this$0:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    #calls: Lcom/lge/quicksettings/handlers/BluetoothHandler;->setHandlerButton(I)V
    invoke-static {v1, v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->access$000(Lcom/lge/quicksettings/handlers/BluetoothHandler;I)V

    .line 61
    return-void
.end method
