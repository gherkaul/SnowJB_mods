.class Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherNetworkDataTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetherNetworkDataTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherNetworkDataReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;Lcom/android/server/connectivity/TetherNetworkDataTransition$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;-><init>(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    iget-object v5, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    #setter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$102(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 146
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    #getter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 148
    const-string v4, "TetherNetworkDataTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetworkInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    #getter for: Lcom/android/server/connectivity/TetherNetworkDataTransition;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$100(Lcom/android/server/connectivity/TetherNetworkDataTransition;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    #calls: Lcom/android/server/connectivity/TetherNetworkDataTransition;->notifyNetworkConnectivityChange()V
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$200(Lcom/android/server/connectivity/TetherNetworkDataTransition;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, state:Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, reason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$300()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "DISCONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    const-string v4, "connectionMipErrorCheck"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    #calls: Lcom/android/server/connectivity/TetherNetworkDataTransition;->readMipErrorCode()I
    invoke-static {v4}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$400(Lcom/android/server/connectivity/TetherNetworkDataTransition;)I

    move-result v1

    .line 165
    .local v1, mipErrCode:I
    const-string v4, "TetherNetworkDataTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TETHER data connection failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "errCode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v1, :cond_3

    .line 168
    const/16 v4, 0x43

    if-ne v1, v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/server/connectivity/TetherNetworkDataTransition$TetherNetworkDataReceiver;->this$0:Lcom/android/server/connectivity/TetherNetworkDataTransition;

    const-string v5, "com.lge.nai.Err.AuthFailed"

    #calls: Lcom/android/server/connectivity/TetherNetworkDataTransition;->sendTetherBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v4, p1, v5}, Lcom/android/server/connectivity/TetherNetworkDataTransition;->access$500(Lcom/android/server/connectivity/TetherNetworkDataTransition;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v4, "TetherNetworkDataTransition"

    const-string v5, "TETHER data connection keep cause : readMipErrorCode == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
