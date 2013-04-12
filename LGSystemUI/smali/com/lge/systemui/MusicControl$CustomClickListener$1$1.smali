.class Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;
.super Ljava/lang/Object;
.source "MusicControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/MusicControl$CustomClickListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;


# direct methods
.method constructor <init>(Lcom/lge/systemui/MusicControl$CustomClickListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 795
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v6}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 798
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    #getter for: Lcom/lge/systemui/MusicControl$CustomClickListener;->mControlFlag:I
    invoke-static {v6}, Lcom/lge/systemui/MusicControl$CustomClickListener;->access$1500(Lcom/lge/systemui/MusicControl$CustomClickListener;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 818
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget v6, v6, Lcom/lge/systemui/Component;->mComponentType:I

    if-ne v6, v9, :cond_4

    .line 863
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 800
    .restart local v1       #intent:Landroid/content/Intent;
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.previous"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    move-object v1, v2

    .line 841
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Lcom/lge/systemui/Utils;->getLockStatus()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/lge/systemui/MusicControl;->access$1600()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 842
    invoke-static {}, Lcom/lge/systemui/MusicControl;->access$1600()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 845
    :cond_1
    invoke-static {}, Lcom/lge/systemui/Utils;->getLockStatus()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const-string v7, "com.lge.pa.activity.LocalListViewActivity"

    invoke-static {v6, v7}, Lcom/lge/systemui/Utils;->isCurrentActivityOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v9, :cond_7

    .line 846
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v7, v7, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v7, v7, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v7, v7, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-wide/16 v9, 0x7d0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v6, "MusicControl"

    const-string v7, "== Runnable Run Exception =="

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 803
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    .line 804
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lge/systemui/MusicControl;->isCalling(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/lge/systemui/Utils;->isVTActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 805
    :cond_2
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v7, v7, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v7, v7, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v7, v7, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const v8, 0x7f09011e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const-wide/16 v9, 0x7d0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto/16 :goto_0

    .line 810
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v1, v2

    .line 811
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 813
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.next"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v1, v2

    .line 814
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 821
    :cond_4
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    #getter for: Lcom/lge/systemui/MusicControl;->mMediaPlayBackService:Lcom/lge/music/IMediaPlaybackService;
    invoke-static {v6}, Lcom/lge/systemui/MusicControl;->access$000(Lcom/lge/systemui/MusicControl;)Lcom/lge/music/IMediaPlaybackService;

    move-result-object v6

    invoke-interface {v6}, Lcom/lge/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, path:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 823
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 824
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_2
    const-string v6, "com.lge.music"

    const-string v7, "com.lge.music.MusicBrowserActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 828
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_3
    const v6, 0x4008000

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 829
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 830
    .local v5, pi:Landroid/app/PendingIntent;
    if-eqz v5, :cond_5

    .line 831
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V

    .line 833
    :cond_5
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 835
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 836
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 826
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_6
    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 853
    .end local v3           #path:Ljava/lang/String;
    :cond_7
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.lge.music"

    const-string v8, "com.lge.music.MediaPlaybackService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 854
    iget-object v6, p0, Lcom/lge/systemui/MusicControl$CustomClickListener$1$1;->this$2:Lcom/lge/systemui/MusicControl$CustomClickListener$1;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener$1;->this$1:Lcom/lge/systemui/MusicControl$CustomClickListener;

    iget-object v6, v6, Lcom/lge/systemui/MusicControl$CustomClickListener;->this$0:Lcom/lge/systemui/MusicControl;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 855
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 856
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 859
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #path:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
