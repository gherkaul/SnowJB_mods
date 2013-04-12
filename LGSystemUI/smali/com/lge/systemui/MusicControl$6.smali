.class Lcom/lge/systemui/MusicControl$6;
.super Landroid/content/BroadcastReceiver;
.source "MusicControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/MusicControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/MusicControl;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 993
    const-string v1, "MusicControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const-string v1, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 999
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v1}, Lcom/lge/systemui/MusicControl;->addComponent()V

    .line 1004
    :cond_2
    const-string v1, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.lge.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.lge.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.lge.music.refreshalbumart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1008
    :cond_3
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    invoke-virtual {v1}, Lcom/lge/systemui/MusicControl;->isPlayingMusic()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1009
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableFMRadioControl()V

    .line 1011
    :cond_4
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1012
    :cond_5
    const-string v1, "com.android.server.status.unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1013
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1014
    :cond_6
    const-string v1, "com.lge.music.saveNoDisplay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1015
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1016
    :cond_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1017
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1018
    :cond_8
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1019
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1020
    :cond_9
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/MusicControl$6;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lge/systemui/MusicControl;->access$1700(Lcom/lge/systemui/MusicControl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
