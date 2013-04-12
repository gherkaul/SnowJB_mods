.class Lcom/lge/quicksettings/handlers/QVoiceHandler$4;
.super Ljava/lang/Object;
.source "QVoiceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/QVoiceHandler;->executeQuickVoice()Z
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
    .line 116
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QVoiceHandler$4;->this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QVoiceHandler$4;->this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/handlers/QVoiceHandler;->setButtonStatus(I)V

    .line 119
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QVoiceHandler$4;->this$0:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/handlers/QVoiceHandler;->setTextColor(Z)V

    .line 120
    return-void
.end method
