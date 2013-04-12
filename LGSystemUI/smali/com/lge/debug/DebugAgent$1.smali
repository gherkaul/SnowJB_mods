.class Lcom/lge/debug/DebugAgent$1;
.super Ljava/lang/Object;
.source "DebugAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/debug/DebugAgent;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, bConnect:Z
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDDSvcIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/lge/debug/DebugAgent;->access$000(Lcom/lge/debug/DebugAgent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 92
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$100(Lcom/lge/debug/DebugAgent;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDDSvcIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/lge/debug/DebugAgent;->access$000(Lcom/lge/debug/DebugAgent;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/lge/debug/DebugAgent;->access$200(Lcom/lge/debug/DebugAgent;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 99
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$300(Lcom/lge/debug/DebugAgent;)Lcom/lge/debug/IDebugDisplay_Svc;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v0, v5, :cond_0

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$300(Lcom/lge/debug/DebugAgent;)Lcom/lge/debug/IDebugDisplay_Svc;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDisplayMode:I
    invoke-static {v3}, Lcom/lge/debug/DebugAgent;->access$400(Lcom/lge/debug/DebugAgent;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/debug/IDebugDisplay_Svc;->registerDisplay(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :goto_2
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 110
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "DebugAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display() ---> mDDSvc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/debug/DebugAgent$1;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDDSvc:Lcom/lge/debug/IDebugDisplay_Svc;
    invoke-static {v4}, Lcom/lge/debug/DebugAgent;->access$300(Lcom/lge/debug/DebugAgent;)Lcom/lge/debug/IDebugDisplay_Svc;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bConnect ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 93
    :catch_1
    move-exception v2

    goto :goto_0

    .line 100
    :catch_2
    move-exception v2

    goto :goto_1
.end method
