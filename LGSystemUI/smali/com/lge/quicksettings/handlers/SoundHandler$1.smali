.class Lcom/lge/quicksettings/handlers/SoundHandler$1;
.super Ljava/lang/Object;
.source "SoundHandler.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/SoundHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/SoundHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/SoundHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/SoundHandler$1;->this$0:Lcom/lge/quicksettings/handlers/SoundHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SoundHandler$1;->this$0:Lcom/lge/quicksettings/handlers/SoundHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/SoundHandler;->refreshButton()V

    .line 75
    return-void
.end method
