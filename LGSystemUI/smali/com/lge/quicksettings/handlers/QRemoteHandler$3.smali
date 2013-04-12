.class Lcom/lge/quicksettings/handlers/QRemoteHandler$3;
.super Ljava/lang/Object;
.source "QRemoteHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/QRemoteHandler;->onClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler$3;->this$0:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->enableRemoteControl()V

    .line 129
    return-void
.end method
