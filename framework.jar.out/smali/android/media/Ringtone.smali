.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field public static final DEFAULT_ALARMS_FILEPATH:Ljava/lang/String; = null

.field public static final DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String; = null

.field public static final DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String; = null

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field public static final SILENT_RINGTONE_FILEPATH:Ljava/lang/String; = "/system/media/audio/ui/SilentRing.ogg"

.field public static final SILENT_RINGTONE_TAG:Ljava/lang/String; = "silent_ringtone"

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static mDrmManagerClient:Landroid/drm/DrmManagerClient;


# instance fields
.field private final mAllowRemote:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDrmConsume:Z

.field private mDrmFile:I

.field private mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

.field private mDrmValid:Z

.field private mIsSmartRingtoneOnNoiseEstimation:Z

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mSmartRingtone:Landroid/media/SmartRingtone;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Landroid/media/Ringtone;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "allowRemote"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 90
    iput v3, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 91
    iput-boolean v3, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 92
    iput-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 93
    iput-boolean v3, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 114
    iput-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    .line 115
    iput-boolean v3, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 120
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 121
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 123
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 124
    if-eqz p2, :cond_2

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :goto_1
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 127
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-nez v1, :cond_0

    .line 129
    :try_start_0
    new-instance v1, Landroid/media/SmartRingtone;

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v4}, Landroid/media/SmartRingtone;-><init>(Landroid/media/AudioManager;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v1, v2

    .line 123
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 124
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Ringtone"

    const-string v3, "Couldn\'t instantiate SmartRingtone"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iput-object v2, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 3
    .parameter "context"
    .parameter "allowRemote"
    .parameter "streamType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 90
    iput v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 91
    iput-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 92
    iput-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 93
    iput-boolean v2, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 114
    iput-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    .line 115
    iput-boolean v2, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 141
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 144
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 145
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 146
    iput p3, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 147
    return-void

    :cond_1
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method private checkDRM(Ljava/lang/String;)I
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 623
    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v1

    .line 627
    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 632
    iget v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    iget v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v5, 0x3000

    if-le v4, v5, :cond_3

    .line 633
    :cond_2
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    goto :goto_0

    .line 638
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 639
    .local v0, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_4

    move v1, v2

    .line 640
    goto :goto_0

    .line 643
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 644
    goto :goto_0

    .line 647
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 648
    goto :goto_0

    .line 651
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 652
    iput-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 653
    goto :goto_0

    .line 654
    .end local v0           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    move v1, v2

    .line 657
    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 542
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 543
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 546
    :cond_0
    return-void
.end method

.method private getDefaultAudioType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, audioType:Ljava/lang/String;
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v1, :pswitch_data_0

    .line 704
    :pswitch_0
    const-string v0, "is_ringtone"

    .line 708
    :goto_0
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAudioType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-object v0

    .line 695
    :pswitch_1
    const-string v0, "is_ringtone"

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    const-string v0, "is_notification"

    .line 699
    goto :goto_0

    .line 701
    :pswitch_3
    const-string v0, "is_alarm"

    .line 702
    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, defaultRingtone:Ljava/lang/String;
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v1, :pswitch_data_0

    .line 679
    :pswitch_0
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 683
    :goto_0
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ringtone path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-object v0

    .line 670
    :pswitch_1
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_RINGTONES_FILEPATH:Ljava/lang/String;

    .line 671
    goto :goto_0

    .line 673
    :pswitch_2
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATIONS_FILEPATH:Ljava/lang/String;

    .line 674
    goto :goto_0

    .line 676
    :pswitch_3
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_ALARMS_FILEPATH:Ljava/lang/String;

    .line 677
    goto :goto_0

    .line 668
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 716
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 717
    .local v9, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 718
    .local v8, defaultPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 720
    .local v7, defaultAudioType:Ljava/lang/String;
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    .line 721
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultAudioType()Ljava/lang/String;

    move-result-object v7

    .line 724
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_display_name =? AND mime_type =?  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v10, "application/ogg"

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 735
    :goto_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 737
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 738
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 744
    :goto_1
    if-eqz v6, :cond_0

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_0
    return-object v9

    .line 740
    :cond_1
    :try_start_2
    const-string v1, "Ringtone"

    const-string v2, "Default ringtone does NOT exist. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const v1, 0x1040432

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 744
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 730
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 206
    const/4 v9, 0x0

    .line 207
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 211
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    if-eqz p2, :cond_2

    .line 216
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 218
    .local v7, actualUri:Landroid/net/Uri;
    invoke-static {p0, v7, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, actualTitle:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v1, v11

    .line 267
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 222
    .restart local v6       #actualTitle:Ljava/lang/String;
    .restart local v7       #actualUri:Landroid/net/Uri;
    .restart local v8       #authority:Ljava/lang/String;
    :cond_1
    const v1, 0x104042f

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_2
    move-object v1, v10

    .line 267
    goto :goto_0

    .line 228
    .restart local v8       #authority:Ljava/lang/String;
    :cond_3
    :try_start_0
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 238
    :cond_4
    :goto_1
    if-eqz v9, :cond_6

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v12, :cond_6

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 248
    if-eqz v9, :cond_0

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 230
    :cond_5
    :try_start_2
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_1

    .line 248
    :cond_6
    if-eqz v9, :cond_7

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v1, v11

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 233
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 577
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 578
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 580
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 582
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 589
    if-ne p1, v0, :cond_2

    .line 591
    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-nez v2, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 595
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 597
    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x501

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x1800

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 600
    goto :goto_0

    :cond_4
    move v0, v1

    .line 604
    goto :goto_0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 179
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v1

    .line 184
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const v1, 0x1040430

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 195
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->getDefaultTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, actualTitle:Ljava/lang/String;
    const v1, 0x104042f

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 201
    .end local v0           #actualTitle:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 554
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 555
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 565
    :goto_0
    return v1

    .line 556
    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    .line 558
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->play(Z)V

    .line 458
    return-void
.end method

.method public play(Z)V
    .locals 8
    .parameter "loop"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 463
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->checkPlayConditions(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    iget-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    .line 475
    :cond_2
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    if-ne v1, v6, :cond_3

    .line 476
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v1}, Landroid/media/SmartRingtone;->onExitRecordingLoop()V

    .line 480
    :cond_3
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7

    .line 486
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eq v1, v7, :cond_5

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_5
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eq v1, v7, :cond_0

    .line 492
    :cond_6
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 493
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 495
    :cond_7
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_8

    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget v4, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_8
    const-string v1, "Ringtone"

    const-string v2, "Neither local nor remote playback available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 756
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "Ringtone"

    const-string/jumbo v1, "setOnCompletionListener!!!!!....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 760
    :cond_0
    return-void
.end method

.method public setProperty(Z)V
    .locals 1
    .parameter "consume"

    .prologue
    .line 612
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_0

    .line 613
    iput-boolean p1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 615
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 156
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 160
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 161
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 570
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 278
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 280
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 281
    iget-object v7, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_0

    .line 429
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 293
    .local v4, nStatus:I
    const/4 v7, 0x0

    :try_start_0
    iput v7, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 294
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 295
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 298
    iget-object v7, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v7, :cond_1

    .line 299
    const-string v7, "Ringtone"

    const-string/jumbo v8, "setStreamType: mSmartRingtone.onNoiseEstimation()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v7, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v7}, Landroid/media/SmartRingtone;->onNoiseEstimation()V

    .line 301
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 302
    iget-object v7, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    iget-object v8, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v8}, Landroid/media/SmartRingtone;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 306
    :cond_1
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v7, :cond_2

    .line 307
    iget-object v7, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 308
    if-eqz v5, :cond_2

    .line 309
    invoke-direct {p0, v5}, Landroid/media/Ringtone;->checkDRM(Ljava/lang/String;)I

    move-result v4

    .line 312
    :cond_2
    if-ne v4, v10, :cond_4

    .line 319
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 392
    :goto_1
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v8, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 394
    const-string v7, "DCM"

    const-string/jumbo v8, "ro.build.target_operator"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_c

    .line 396
    :try_start_1
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :cond_3
    :goto_2
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_d

    .line 424
    const-string v7, "Ringtone"

    const-string v8, "Successfully created local player"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_4
    if-ne v4, v9, :cond_5

    .line 322
    :try_start_2
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Ljava/lang/SecurityException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 412
    iget-boolean v7, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v7, :cond_3

    .line 413
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote playback not allowed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 329
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_5
    :try_start_3
    const-string v7, "DCM"

    const-string/jumbo v8, "ro.build.target_operator"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 330
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "~~~31> path is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v7, Landroid/media/Ringtone;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v7, :cond_6

    .line 332
    new-instance v7, Landroid/drm/DrmManagerClient;

    iget-object v8, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v7, Landroid/media/Ringtone;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 334
    :cond_6
    const/4 v0, 0x0

    .line 335
    .local v0, bCanHandle:Z
    sget-object v7, Landroid/media/Ringtone;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const-string v8, "audio/mp4"

    invoke-virtual {v7, v5, v8}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 336
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "~~~31> nCanHandle is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 337
    if-ne v0, v10, :cond_7

    .line 341
    :try_start_4
    sget-object v7, Landroid/media/Ringtone;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    const/4 v8, 0x2

    invoke-virtual {v7, v5, v8}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 342
    .local v3, nDrmStatus:I
    packed-switch v3, :pswitch_data_0

    .line 357
    const-string v7, "Ringtone"

    const-string/jumbo v8, "~~~31> default"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 358
    const/4 v5, 0x0

    .line 368
    .end local v0           #bCanHandle:Z
    .end local v3           #nDrmStatus:I
    :cond_7
    :goto_3
    :try_start_5
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ringtone uri :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  path :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-nez v5, :cond_9

    .line 370
    iget-object v7, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, scheme:Ljava/lang/String;
    if-eqz v6, :cond_8

    const-string v7, "android.resource"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 373
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 386
    .end local v6           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 387
    .local v2, ex:Ljava/io/IOException;
    :try_start_6
    const-string v7, "Ringtone"

    const-string v8, "Problem setDataSource; try to play default ringtone"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 415
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 416
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 417
    iget-boolean v7, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v7, :cond_3

    .line 418
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote playback not allowed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 344
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bCanHandle:Z
    .restart local v3       #nDrmStatus:I
    :pswitch_0
    :try_start_7
    const-string v7, "Ringtone"

    const-string/jumbo v8, "~~~31>  mDrmStore.RightsStatus.RIGHTS_VALID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 361
    .end local v3           #nDrmStatus:I
    :catch_3
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/Exception;
    :try_start_8
    const-string v7, "Ringtone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception is occured during checkRightsStatus"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 347
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #nDrmStatus:I
    :pswitch_1
    :try_start_9
    const-string v7, "Ringtone"

    const-string/jumbo v8, "~~~31>  mDrmStore.RightsStatus.RIGHTS_INVALID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :pswitch_2
    const-string v7, "Ringtone"

    const-string/jumbo v8, "~~~31>  mDrmStore.RightsStatus.RIGHTS_EXPIRED "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :pswitch_3
    const-string v7, "Ringtone"

    const-string/jumbo v8, "~~~31>  mDrmStore.RightsStatus.RIGHTS_NOT_ACQUIRED "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_0

    .line 354
    const/4 v5, 0x0

    .line 355
    goto/16 :goto_3

    .line 377
    .end local v0           #bCanHandle:Z
    .end local v3           #nDrmStatus:I
    .restart local v6       #scheme:Ljava/lang/String;
    :cond_8
    :try_start_a
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 379
    .end local v6           #scheme:Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "silent_ringtone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 381
    :cond_a
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const-string v8, "/system/media/audio/ui/SilentRing.ogg"

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 384
    :cond_b
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 397
    :catch_4
    move-exception v2

    .line 398
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_b
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    .line 399
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 400
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 401
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 402
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v8, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 403
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_2

    .line 406
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_c
    iget-object v7, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 426
    :cond_d
    const-string v7, "Ringtone"

    const-string v8, "Problem opening; delegating to remote player"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 448
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "Ringtone"

    const-string/jumbo v1, "setVolume() fail - mLocalPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 512
    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    invoke-virtual {v1, v3}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    .line 515
    iput v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 516
    iput-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 517
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 522
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    if-ne v1, v3, :cond_1

    .line 523
    iget-object v1, p0, Landroid/media/Ringtone;->mSmartRingtone:Landroid/media/SmartRingtone;

    invoke-virtual {v1}, Landroid/media/SmartRingtone;->restoreVolumeAfterStop()V

    .line 524
    iput-boolean v2, p0, Landroid/media/Ringtone;->mIsSmartRingtoneOnNoiseEstimation:Z

    .line 528
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 529
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 537
    :cond_2
    :goto_0
    return-void

    .line 530
    :cond_3
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_2

    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
