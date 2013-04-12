.class Lcom/lge/quicksettings/handlers/RotationHandler$1;
.super Landroid/database/ContentObserver;
.source "RotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/RotationHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/RotationHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/RotationHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/RotationHandler$1;->this$0:Lcom/lge/quicksettings/handlers/RotationHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 69
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/RotationHandler$1;->this$0:Lcom/lge/quicksettings/handlers/RotationHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/RotationHandler;->updateButton()V

    .line 70
    return-void
.end method
