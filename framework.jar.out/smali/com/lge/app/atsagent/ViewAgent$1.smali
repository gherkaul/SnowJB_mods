.class Lcom/lge/app/atsagent/ViewAgent$1;
.super Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;
.source "ViewAgent.java"


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
    .line 102
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    invoke-direct {p0}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeAction(ILcom/lge/app/atsagent/ActionRequest;)I
    .locals 7
    .parameter "target"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->hasPermission()Z
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$000(Lcom/lge/app/atsagent/ViewAgent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    const/4 v3, 0x2

    .line 155
    :goto_0
    return v3

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    new-instance v4, Lcom/lge/app/atsagent/UiElement;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3, v4}, Lcom/lge/app/atsagent/ViewAgent;->access$202(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;)Lcom/lge/app/atsagent/UiElement;

    .line 137
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    const/16 v4, 0x64

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->actionResult:I
    invoke-static {v3, v4}, Lcom/lge/app/atsagent/ViewAgent;->access$402(Lcom/lge/app/atsagent/ViewAgent;I)I

    .line 138
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v4

    monitor-enter v4

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 141
    .local v2, msg:Landroid/os/Message;
    add-int/lit16 v3, p1, 0x12c

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "request"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 145
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    const-string v3, "ViewAgent"

    const-string v5, "Start waiting"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    const-wide/16 v5, 0x9c4

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 148
    const-string v3, "ViewAgent"

    const-string v5, "Invoking finished"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->actionResult:I
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$400(Lcom/lge/app/atsagent/ViewAgent;)I

    move-result v3

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ViewAgent"

    const-string v5, "Interrupt exception"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public invokeMethod(ILcom/lge/app/atsagent/MethodDescription;)Lcom/lge/app/atsagent/ActionResponse;
    .locals 9
    .parameter "target"
    .parameter "methodDescr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 160
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->hasPermission()Z
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$000(Lcom/lge/app/atsagent/ViewAgent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    new-instance v0, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v6, v4, v5}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .line 185
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v4, p2}, Lcom/lge/app/atsagent/ViewAgent;->access$602(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/MethodDescription;)Lcom/lge/app/atsagent/MethodDescription;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, ar:Lcom/lge/app/atsagent/ActionResponse;
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v5

    monitor-enter v5

    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 168
    .local v3, m:Landroid/os/Message;
    add-int/lit16 v4, p1, 0xc8

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 169
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    const-string v4, "ViewAgent"

    const-string v6, "Start waiting"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v4

    const-wide/16 v6, 0x9c4

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 172
    const-string v4, "ViewAgent"

    const-string v6, "Invoking finished"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    const-string v4, "ViewAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method returns: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "ViewAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .end local v3           #m:Landroid/os/Message;
    .local v1, ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_1
    move-object v0, v1

    .line 185
    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    .line 186
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ViewAgent"

    const-string v6, "Interrupt exception"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :try_start_3
    const-string v4, "ViewAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method returns: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "ViewAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Method error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    const-string v6, "ViewAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method returns: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v6, "ViewAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v1       #ar:Lcom/lge/app/atsagent/ActionResponse;
    move-object v0, v1

    .line 178
    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_3
    throw v4

    .line 183
    :cond_1
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v6, -0x1

    const/16 v7, 0x64

    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v1       #ar:Lcom/lge/app/atsagent/ActionResponse;
    move-object v0, v1

    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    goto :goto_3

    .restart local v2       #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v4, -0x1

    const/16 v6, 0x64

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_4
    move-object v0, v1

    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    goto/16 :goto_2

    .restart local v3       #m:Landroid/os/Message;
    :cond_3
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v4, -0x1

    const/16 v6, 0x64

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$500(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public invokeScript(IILjava/lang/String;)Lcom/lge/app/atsagent/ActionResponse;
    .locals 9
    .parameter "target"
    .parameter "hashId"
    .parameter "script"

    .prologue
    const/4 v7, -0x1

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, ar:Lcom/lge/app/atsagent/ActionResponse;
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->hasPermission()Z
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$000(Lcom/lge/app/atsagent/ViewAgent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    new-instance v4, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v5, 0x2

    const-string v6, ""

    invoke-direct {v4, v7, v5, v6}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .line 216
    :goto_0
    return-object v4

    .line 194
    :cond_0
    const/4 v4, 0x1

    if-lt p2, v4, :cond_1

    if-nez p3, :cond_2

    .line 195
    :cond_1
    new-instance v4, Lcom/lge/app/atsagent/ActionResponse;

    const/4 v5, 0x4

    const-string v6, ""

    invoke-direct {v4, v7, v5, v6}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v5

    monitor-enter v5

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    iput p2, v4, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 200
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    const/16 v6, 0x64

    iput v6, v4, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 201
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    iput-object p3, v4, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 202
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 203
    .local v3, m:Landroid/os/Message;
    add-int/lit8 v4, p1, 0x64

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 204
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    const-string v4, "ViewAgent"

    const-string v6, "Start waiting"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 207
    const-string v4, "ViewAgent"

    const-string v6, "Invoking finished"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    iget v4, v4, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    iget-object v6, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v6}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v6

    iget v6, v6, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .local v1, ar:Lcom/lge/app/atsagent/ActionResponse;
    move-object v0, v1

    .line 216
    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .end local v3           #m:Landroid/os/Message;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ViewAgent"

    const-string v6, "Interrupt exception"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v4

    iget v4, v4, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    iget-object v6, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v6}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v6

    iget v6, v6, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v7

    iget-object v7, v7, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v7}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v1       #ar:Lcom/lge/app/atsagent/ActionResponse;
    move-object v0, v1

    .line 215
    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    goto :goto_1

    .line 213
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    new-instance v1, Lcom/lge/app/atsagent/ActionResponse;

    iget-object v6, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v6}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v6

    iget v6, v6, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v7

    iget v7, v7, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v8}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v8

    iget-object v8, v8, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    invoke-direct {v1, v6, v7, v8}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v0           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v1       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #ar:Lcom/lge/app/atsagent/ActionResponse;
    .restart local v0       #ar:Lcom/lge/app/atsagent/ActionResponse;
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :catchall_2
    move-exception v4

    goto :goto_2
.end method

.method public runUICommand(IZ)Lcom/lge/app/atsagent/UiElement;
    .locals 6
    .parameter "cmdCode"
    .parameter "fullListView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v3, "ViewAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runUICommand("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->hasPermission()Z
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$000(Lcom/lge/app/atsagent/ViewAgent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    :goto_0
    return-object v2

    .line 109
    :cond_0
    if-ltz p1, :cond_1

    const/4 v3, 0x5

    if-le p1, v3, :cond_2

    .line 110
    :cond_1
    const-string v3, "ViewAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " received. Ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    new-instance v4, Lcom/lge/app/atsagent/UiElement;

    invoke-direct {v4, v2}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3, v4}, Lcom/lge/app/atsagent/ViewAgent;->access$202(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;)Lcom/lge/app/atsagent/UiElement;

    .line 116
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, m:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 120
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->handlerUI:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$300(Lcom/lge/app/atsagent/ViewAgent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    const-string v2, "ViewAgent"

    const-string v4, "Start waiting"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v2

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 123
    const-string v2, "ViewAgent"

    const-string v4, "Invoking finished"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #m:Landroid/os/Message;
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$1;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v2

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ViewAgent"

    const-string v4, "Interrupt exception"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
