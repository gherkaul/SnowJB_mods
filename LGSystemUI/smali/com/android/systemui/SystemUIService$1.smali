.class Lcom/android/systemui/SystemUIService$1;
.super Landroid/os/Handler;
.source "SystemUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    #calls: Lcom/android/systemui/SystemUIService;->createService()V
    invoke-static {v0}, Lcom/android/systemui/SystemUIService;->access$000(Lcom/android/systemui/SystemUIService;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
