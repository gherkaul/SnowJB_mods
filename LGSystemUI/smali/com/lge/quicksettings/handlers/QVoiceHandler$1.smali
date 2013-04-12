.class Lcom/lge/quicksettings/handlers/QVoiceHandler$1;
.super Landroid/os/Handler;
.source "QVoiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/QVoiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QVoiceHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QVoiceHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.pa.ACTION_LAUNCH_HOME_LONG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QVoiceHandler$1;->this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
