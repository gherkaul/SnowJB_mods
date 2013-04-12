.class Lcom/android/systemui/statusbar/phone/CarrierLabel$2;
.super Landroid/telephony/PhoneStateListener;
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
    .line 229
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #setter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$402(Lcom/android/systemui/statusbar/phone/CarrierLabel;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_SPN:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SPN:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_SHOW_PLMN:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mEXTRA_PLMN:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 234
    return-void
.end method
