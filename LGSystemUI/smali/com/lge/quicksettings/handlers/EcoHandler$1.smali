.class Lcom/lge/quicksettings/handlers/EcoHandler$1;
.super Landroid/database/ContentObserver;
.source "EcoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/EcoHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/EcoHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/EcoHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/EcoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/EcoHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 55
    const-string v0, "EcoHandler"

    const-string v1, "EcoHandler.ECO_MODE_URI changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/EcoHandler$1;->this$0:Lcom/lge/quicksettings/handlers/EcoHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/EcoHandler;->refreshButton()V

    .line 59
    return-void
.end method
