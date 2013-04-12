.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_SPN:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SPN:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$102(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_PLMN:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$202(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_PLMN:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$302(Lcom/android/systemui/statusbar/phone/CarrierLabel;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_SPN:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SPN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_PLMN:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_PLMN:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_SPN:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SPN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_PLMN:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_PLMN:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
