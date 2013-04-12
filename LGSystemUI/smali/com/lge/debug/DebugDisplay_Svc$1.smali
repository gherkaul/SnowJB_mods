.class Lcom/lge/debug/DebugDisplay_Svc$1;
.super Lcom/lge/debug/IDebugDisplay_Svc$Stub;
.source "DebugDisplay_Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/debug/DebugDisplay_Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/debug/DebugDisplay_Svc;


# direct methods
.method constructor <init>(Lcom/lge/debug/DebugDisplay_Svc;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    invoke-direct {p0}, Lcom/lge/debug/IDebugDisplay_Svc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerDisplay(I)V
    .locals 2
    .parameter "displaymode"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    const/4 v1, 0x0

    #setter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0, v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$002(Lcom/lge/debug/DebugDisplay_Svc;Lcom/lge/debug/IDebugDisplay;)Lcom/lge/debug/IDebugDisplay;

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mActList:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$200(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v1

    #setter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0, v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$002(Lcom/lge/debug/DebugDisplay_Svc;Lcom/lge/debug/IDebugDisplay;)Lcom/lge/debug/IDebugDisplay;

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mMemInfo:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$300(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v1

    #setter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0, v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$002(Lcom/lge/debug/DebugDisplay_Svc;Lcom/lge/debug/IDebugDisplay;)Lcom/lge/debug/IDebugDisplay;

    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc$1;->this$0:Lcom/lge/debug/DebugDisplay_Svc;

    #getter for: Lcom/lge/debug/DebugDisplay_Svc;->mLayoutGuide:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$400(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;

    move-result-object v1

    #setter for: Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;
    invoke-static {v0, v1}, Lcom/lge/debug/DebugDisplay_Svc;->access$002(Lcom/lge/debug/DebugDisplay_Svc;Lcom/lge/debug/IDebugDisplay;)Lcom/lge/debug/IDebugDisplay;

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
