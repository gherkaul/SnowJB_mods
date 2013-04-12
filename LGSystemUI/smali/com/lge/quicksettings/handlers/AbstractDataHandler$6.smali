.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setPendingButtonStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    .line 451
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->getButtonStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    :goto_1
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method
