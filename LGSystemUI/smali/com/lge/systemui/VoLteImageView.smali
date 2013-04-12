.class public Lcom/lge/systemui/VoLteImageView;
.super Landroid/widget/ImageView;
.source "VoLteImageView.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private IMS_VoLTE:I

.field private PhoneSetings_DB_VoLTE:Z

.field private VoLTEDBChangeObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://com.android.phone.CallSettingsProvider/callsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/VoLteImageView;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/systemui/VoLteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object v1, p0, Lcom/lge/systemui/VoLteImageView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object v1, p0, Lcom/lge/systemui/VoLteImageView;->VoLTEDBChangeObserver:Landroid/database/ContentObserver;

    .line 52
    iput v0, p0, Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I

    .line 53
    iput-boolean v0, p0, Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z

    .line 61
    iput-object p1, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/systemui/VoLteImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lge/systemui/VoLteImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/systemui/VoLteImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/systemui/VoLteImageView;->updateVoLteIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/systemui/VoLteImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/systemui/VoLteImageView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/systemui/VoLteImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/systemui/VoLteImageView;->checkInitDB()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkInitDB()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/systemui/VoLteImageView$3;

    invoke-direct {v1, p0}, Lcom/lge/systemui/VoLteImageView$3;-><init>(Lcom/lge/systemui/VoLteImageView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public static queryCallSettingValueByKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/systemui/VoLteImageView;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 180
    .local v8, value:I
    if-eqz v6, :cond_1

    .line 182
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    const-string v0, "value_int"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 190
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    .line 194
    :cond_1
    :goto_0
    const-string v0, "VoLteImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[queryCallSettingValueByKey] : return value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v8

    .line 185
    :catch_0
    move-exception v7

    .line 186
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v0, "VoLteImageView"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    .line 192
    goto :goto_0

    .line 187
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 188
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "VoLteImageView"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    .line 192
    goto :goto_0

    .line 190
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    throw v0
.end method

.method private showVoLteIcon()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/lge/systemui/VoLteImageView;->getId()I

    move-result v0

    .line 123
    .local v0, resId:I
    const v2, 0x7f0c0099

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 124
    const-string v2, "VoLteImageView"

    const-string v3, "showVoLteIcon() - OPERATOR_LGU"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v1

    .line 126
    :cond_0
    const v2, 0x7f0c0097

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 128
    :cond_1
    const-string v2, "VoLteImageView"

    const-string v3, "showVoLteIcon() - OPERATOR_KTF||OPERATOR_SKT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateVoLteIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 135
    const v0, 0x7f0203c8

    .line 137
    .local v0, voLteResourceId:I
    const-string v1, "VoLteImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateVoLteIcon] IMS_VoLTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", show_indicator_volte_icon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v1, p0, Lcom/lge/systemui/VoLteImageView;->IMS_VoLTE:I

    packed-switch v1, :pswitch_data_0

    .line 170
    invoke-virtual {p0, v5}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-eq v1, v6, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 141
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 143
    const v0, 0x7f0203ca

    .line 144
    invoke-virtual {p0, v0}, Lcom/lge/systemui/VoLteImageView;->setImageResource(I)V

    .line 145
    invoke-virtual {p0, v4}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 151
    iget-boolean v1, p0, Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z

    if-eqz v1, :cond_3

    .line 152
    const v0, 0x7f02038d

    .line 153
    invoke-virtual {p0, v0}, Lcom/lge/systemui/VoLteImageView;->setImageResource(I)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0, v5}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    goto :goto_0

    .line 159
    :cond_4
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 160
    const v0, 0x7f02038c

    .line 164
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/systemui/VoLteImageView;->setImageResource(I)V

    .line 165
    invoke-virtual {p0, v4}, Lcom/lge/systemui/VoLteImageView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_6
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 162
    const v0, 0x7f0203c8

    goto :goto_1

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 67
    invoke-direct {p0}, Lcom/lge/systemui/VoLteImageView;->showVoLteIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 69
    new-instance v1, Lcom/lge/systemui/VoLteImageView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/lge/systemui/VoLteImageView$1;-><init>(Lcom/lge/systemui/VoLteImageView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/systemui/VoLteImageView;->VoLTEDBChangeObserver:Landroid/database/ContentObserver;

    .line 81
    iget-object v1, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/systemui/VoLteImageView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lge/systemui/VoLteImageView;->VoLTEDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    invoke-direct {p0}, Lcom/lge/systemui/VoLteImageView;->checkInitDB()V

    .line 85
    :cond_0
    new-instance v1, Lcom/lge/systemui/VoLteImageView$2;

    invoke-direct {v1, p0}, Lcom/lge/systemui/VoLteImageView$2;-><init>(Lcom/lge/systemui/VoLteImageView;)V

    iput-object v1, p0, Lcom/lge/systemui/VoLteImageView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.ims.action.SVC_STATUS_IND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/systemui/VoLteImageView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 201
    invoke-direct {p0}, Lcom/lge/systemui/VoLteImageView;->showVoLteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/systemui/VoLteImageView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->VoLTEDBChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/systemui/VoLteImageView;->VoLTEDBChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    :cond_1
    return-void
.end method
