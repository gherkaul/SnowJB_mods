.class Lcom/lge/debug/DebugAgent$9;
.super Ljava/lang/Object;
.source "DebugAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/debug/DebugAgent;->createDebugButton()V
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
    .line 294
    iput-object p1, p0, Lcom/lge/debug/DebugAgent$9;->this$0:Lcom/lge/debug/DebugAgent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lge/debug/DebugAgent$9;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/lge/debug/DebugAgent;->access$900(Lcom/lge/debug/DebugAgent;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/lge/debug/DebugAgent$9;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDataState:I
    invoke-static {v1}, Lcom/lge/debug/DebugAgent;->access$1300(Lcom/lge/debug/DebugAgent;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/debug/DebugAgent$9;->this$0:Lcom/lge/debug/DebugAgent;

    #getter for: Lcom/lge/debug/DebugAgent;->mDataNetType:I
    invoke-static {v2}, Lcom/lge/debug/DebugAgent;->access$1500(Lcom/lge/debug/DebugAgent;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 297
    return-void
.end method
