.class Lcom/lge/systemui/OperatorTextView$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 71
    iput-object p1, p0, Lcom/lge/systemui/OperatorTextView$1;->this$0:Lcom/lge/systemui/OperatorTextView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/systemui/OperatorTextView$1;->this$0:Lcom/lge/systemui/OperatorTextView;

    iget-object v1, p0, Lcom/lge/systemui/OperatorTextView$1;->this$0:Lcom/lge/systemui/OperatorTextView;

    #getter for: Lcom/lge/systemui/OperatorTextView;->mPlmn:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/systemui/OperatorTextView;->access$000(Lcom/lge/systemui/OperatorTextView;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lge/systemui/OperatorTextView;->updateNetworkName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lge/systemui/OperatorTextView;->access$100(Lcom/lge/systemui/OperatorTextView;Ljava/lang/String;)V

    .line 75
    return-void
.end method
