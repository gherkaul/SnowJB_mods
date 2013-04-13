.class Lcom/lge/app/atsagent/ViewAgent$2;
.super Ljava/lang/Object;
.source "ViewAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/ViewAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/atsagent/ViewAgent;


# direct methods
.method constructor <init>(Lcom/lge/app/atsagent/ViewAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 225
    const-string v1, "ViewAgent"

    const-string/jumbo v2, "onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$900(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    invoke-static {p2}, Lcom/lge/app/atsagent/IEta2Service$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/app/atsagent/IEta2Service;

    move-result-object v2

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;
    invoke-static {v1, v2}, Lcom/lge/app/atsagent/ViewAgent;->access$1002(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/IEta2Service;)Lcom/lge/app/atsagent/IEta2Service;

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$1000(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/IEta2Service;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$1000(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/IEta2Service;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget-object v2, v2, Lcom/lge/app/atsagent/ViewAgent;->callback:Lcom/lge/app/atsagent/IEta2ServiceCallback;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->viewHolderType:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$1100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/app/atsagent/IEta2Service;->registerCallback(Lcom/lge/app/atsagent/IEta2ServiceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ViewAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 239
    const-string v0, "ViewAgent"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/app/atsagent/ViewAgent;->access$900(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    iget-object v0, p0, Lcom/lge/app/atsagent/ViewAgent$2;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    const/4 v1, 0x0

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->service:Lcom/lge/app/atsagent/IEta2Service;
    invoke-static {v0, v1}, Lcom/lge/app/atsagent/ViewAgent;->access$1002(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/IEta2Service;)Lcom/lge/app/atsagent/IEta2Service;

    .line 242
    return-void
.end method
