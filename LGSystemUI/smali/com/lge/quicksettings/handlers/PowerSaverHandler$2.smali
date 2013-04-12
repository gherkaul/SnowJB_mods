.class Lcom/lge/quicksettings/handlers/PowerSaverHandler$2;
.super Landroid/database/ContentObserver;
.source "PowerSaverHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/PowerSaverHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/PowerSaverHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/PowerSaverHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler$2;->this$0:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 93
    const-string v0, "PowerSaverHandler"

    const-string v1, "PowerSaverHandler.POWER_SAVER_URI changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/PowerSaverHandler$2;->this$0:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->refreshButton()V

    .line 97
    return-void
.end method
