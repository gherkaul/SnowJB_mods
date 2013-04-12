.class Lcom/lge/systemui/VoLteImageView$2;
.super Landroid/content/BroadcastReceiver;
.source "VoLteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/VoLteImageView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/VoLteImageView;


# direct methods
.method constructor <init>(Lcom/lge/systemui/VoLteImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/systemui/VoLteImageView$2;->this$0:Lcom/lge/systemui/VoLteImageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.ims.action.SVC_STATUS_IND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "svcType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, svcType:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "VoLTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/lge/systemui/VoLteImageView$2;->this$0:Lcom/lge/systemui/VoLteImageView;

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I
    invoke-static {v2, v3}, Lcom/lge/systemui/VoLteImageView;->access$302(Lcom/lge/systemui/VoLteImageView;I)I

    .line 92
    const-string v2, "VoLteImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BroadcastReceiver] : com.lge.ims.action.SVC_STATUS_IND [svcType]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [IMS_VoLTE]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/systemui/VoLteImageView$2;->this$0:Lcom/lge/systemui/VoLteImageView;

    #getter for: Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I
    invoke-static {v4}, Lcom/lge/systemui/VoLteImageView;->access$300(Lcom/lge/systemui/VoLteImageView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/lge/systemui/VoLteImageView$2;->this$0:Lcom/lge/systemui/VoLteImageView;

    #calls: Lcom/lge/systemui/VoLteImageView;->updateVoLteIcon()V
    invoke-static {v2}, Lcom/lge/systemui/VoLteImageView;->access$200(Lcom/lge/systemui/VoLteImageView;)V

    .line 96
    .end local v1           #svcType:Ljava/lang/String;
    :cond_0
    return-void
.end method
