.class Lcom/lge/quicksettings/handlers/LteHandler$1;
.super Landroid/database/ContentObserver;
.source "LteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/LteHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/LteHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/LteHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/LteHandler$1;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    const-string v0, "LteHandler"

    const-string v1, "LteHandler.PREFERRED_NETWORK_MODE changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/LteHandler$1;->this$0:Lcom/lge/quicksettings/handlers/LteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/LteHandler;->refreshButton()V

    .line 95
    return-void
.end method
