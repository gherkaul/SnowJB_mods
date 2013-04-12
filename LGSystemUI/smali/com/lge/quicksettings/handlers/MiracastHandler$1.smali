.class Lcom/lge/quicksettings/handlers/MiracastHandler$1;
.super Ljava/lang/Object;
.source "MiracastHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/MiracastHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/MiracastHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/MiracastHandler$1;->this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/MiracastHandler$1;->this$0:Lcom/lge/quicksettings/handlers/MiracastHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/MiracastHandler;->setWiFiScreenButton()V

    .line 76
    return-void
.end method
