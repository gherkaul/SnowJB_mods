.class Lcom/android/internal/policy/impl/PhoneWindow$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->createOverlayReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 4088
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4090
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4091
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4154
    :cond_0
    :goto_0
    return-void

    .line 4093
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 4094
    .local v1, am:Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 4095
    .local v4, lpWindow:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getOverlayActivityName()Ljava/lang/String;

    move-result-object v7

    .line 4096
    .local v7, topActivityName:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4097
    .local v3, layoutTitle:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4098
    .local v5, myActivityName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4099
    .local v8, videoStopIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 4101
    .local v2, dmbStopIntent:Landroid/content/Intent;
    const-string v9, "com.lge.QuickClip.QuickClipActivity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "com.lge.Overlay.action.SHOW_STATUS_BAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4106
    :cond_2
    const-string v9, "com.lge.Overlay.action.STOP_MEDIA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4107
    const-string v9, "showOverlayClosetoast"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4108
    .local v6, need_toast:I
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isThereTopOverlay()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4109
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4110
    const-string v9, "com.lge.videoplayer.player.MediaView"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.lge.videoplayer.MediaView"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.lge.streamingplayer.StreamingPlayer"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.uplus.onphone.page.player"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4113
    :cond_3
    const-string v9, "PhoneWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[mTopOverlayReceiver] mContext.sendBroadcast- com.lge.Overlay.action.STOP_VIDEO need_toast : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    new-instance v8, Landroid/content/Intent;

    .end local v8           #videoStopIntent:Landroid/content/Intent;
    const-string v9, "com.lge.Overlay.action.STOP_VIDEO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4115
    .restart local v8       #videoStopIntent:Landroid/content/Intent;
    const-string v9, "showOverlayClosetoast"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4116
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4123
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->destroyOverlayReceiver()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4124
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 4125
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 4126
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1802(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 4117
    :cond_5
    const-string v9, "com.lge.tdmb.TdmbMainScreenActivity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "com.lge.oneseg.TdmbMainScreenActivity"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4118
    :cond_6
    const-string v9, "PhoneWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[mTopOverlayReceiver] mContext.sendBroadcast- com.lge.Overlay.action.STOP_TDMB need_toast : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    new-instance v2, Landroid/content/Intent;

    .end local v2           #dmbStopIntent:Landroid/content/Intent;
    const-string v9, "com.lge.Overlay.action.STOP_TDMB"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4120
    .restart local v2       #dmbStopIntent:Landroid/content/Intent;
    const-string v9, "showOverlayClosetoast"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4121
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 4131
    .end local v6           #need_toast:I
    :cond_7
    const-string v9, "com.lge.Overlay.action.SHOW_STATUS_BAR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4132
    const-string v9, "showStatusBar"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4133
    const-string v9, "showStatusBar"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4134
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->ShowStatusBarForOverlay(Z)V
    invoke-static {v9, v12}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    goto/16 :goto_0

    .line 4136
    :cond_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->ShowStatusBarForOverlay(Z)V
    invoke-static {v9, v11}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    goto/16 :goto_0

    .line 4140
    :cond_9
    const-string v9, "com.lge.Overlay.action.CLEAR_OVERLAYUI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4141
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isThereTopOverlay()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4142
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4143
    const-string v9, "com.lge.streamingplayer.StreamingPlayer"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4144
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mAlreayDisableOverlay:Z
    invoke-static {v9, v12}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2602(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 4145
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->quitUpdatAlphaTimer()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4146
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->clearOverlayUI()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4147
    new-instance v8, Landroid/content/Intent;

    .end local v8           #videoStopIntent:Landroid/content/Intent;
    const-string v9, "com.lge.Overlay.action.STOP_VIDEO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4148
    .restart local v8       #videoStopIntent:Landroid/content/Intent;
    const-string v9, "showOverlayClosetoast"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4149
    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
