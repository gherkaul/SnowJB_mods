.class Lcom/lge/systemui/OperatorTextView$2;
.super Landroid/content/BroadcastReceiver;
.source "OperatorTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/OperatorTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/OperatorTextView;


# direct methods
.method constructor <init>(Lcom/lge/systemui/OperatorTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lge/systemui/OperatorTextView;->access$002(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    iget-object v2, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    #getter for: Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/systemui/OperatorTextView;->access$000(Lcom/lge/systemui/OperatorTextView;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lge/systemui/OperatorTextView;->updateNetworkName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/systemui/OperatorTextView;->access$100(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    iget-object v2, p0, Lcom/lge/systemui/OperatorTextView$2;->this$0:Lcom/lge/systemui/OperatorTextView;

    #getter for: Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/systemui/OperatorTextView;->access$000(Lcom/lge/systemui/OperatorTextView;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/lge/systemui/OperatorTextView;->updateNetworkName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/systemui/OperatorTextView;->access$100(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)V

    goto :goto_0
.end method
