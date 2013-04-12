.class Lcom/lge/quicksettings/handlers/QRemoteHandler$1;
.super Landroid/database/ContentObserver;
.source "QRemoteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/QRemoteHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 77
    const-string v0, "QRemoteHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QRemoteHandler.QREMOTE_COMPONENT_KEY changed. [selfChange] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->refreshButton()V

    .line 82
    :cond_0
    return-void
.end method
