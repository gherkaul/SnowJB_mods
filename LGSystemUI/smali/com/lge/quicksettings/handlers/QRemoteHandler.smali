.class public Lcom/lge/quicksettings/handlers/QRemoteHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "QRemoteHandler.java"


# static fields
.field private static onChangeObserver:Landroid/database/ContentObserver;


# instance fields
.field private final QREMOTE_COMPONENT_KEY:Ljava/lang/String;

.field private final QREMOTE_COMPONENT_NAME:Ljava/lang/String;

.field private final QREMOTE_URI:Landroid/net/Uri;

.field private final STATUS_COLLAPSED_ACTION:Ljava/lang/String;

.field private final STATUS_EXPANDED_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mStatusBarExpanded:Z

.field private onChangeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 44
    sget-object v0, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "display"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_COMPONENT_KEY:Ljava/lang/String;

    .line 46
    const-string v0, "QREMOTE"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_COMPONENT_NAME:Ljava/lang/String;

    .line 47
    const-string v0, "com.lge.statusbar.expanded"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->STATUS_EXPANDED_ACTION:Ljava/lang/String;

    .line 48
    const-string v0, "com.lge.statusbar.collapsed"

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->STATUS_COLLAPSED_ACTION:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 54
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 56
    iput-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z

    .line 62
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/QRemoteHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/quicksettings/handlers/QRemoteHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z

    return p1
.end method


# virtual methods
.method enableRemoteControl()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v0, values:Landroid/content/ContentValues;
    const-string v3, "display"

    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->isRemoteControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    const-string v4, "name=\'QREMOTE\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    sget-object v1, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 207
    return-void

    :cond_0
    move v1, v2

    .line 204
    goto :goto_0
.end method

.method public isRemoteControlEnabled()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 210
    const/4 v9, 0x0

    .line 211
    .local v9, enabled:Z
    const/4 v6, 0x0

    .line 212
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "QREMOTE"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 217
    if-nez v6, :cond_1

    .line 233
    if-eqz v6, :cond_0

    .line 235
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v0, v11

    .line 242
    :goto_1
    return v0

    .line 236
    :catch_0
    move-exception v10

    .line 237
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "QRemoteHandler"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 221
    .local v7, dbcount:I
    if-lez v7, :cond_2

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 224
    .local v8, display:I
    if-ne v8, v12, :cond_4

    move v9, v12

    .line 226
    :goto_2
    const-string v0, "QRemoteHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    .end local v8           #display:I
    :cond_2
    if-eqz v6, :cond_3

    .line 235
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v7           #dbcount:I
    :cond_3
    :goto_3
    move v0, v9

    .line 242
    goto :goto_1

    .restart local v7       #dbcount:I
    .restart local v8       #display:I
    :cond_4
    move v9, v11

    .line 224
    goto :goto_2

    .line 236
    .end local v8           #display:I
    :catch_1
    move-exception v10

    .line 237
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "QRemoteHandler"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 230
    .end local v7           #dbcount:I
    .end local v10           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 233
    if-eqz v6, :cond_3

    .line 235
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 236
    :catch_3
    move-exception v10

    .line 237
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v0, "QRemoteHandler"

    const-string v1, "=====  Cursor Close Exception  ====="

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 233
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 235
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 238
    :cond_5
    :goto_4
    throw v0

    .line 236
    :catch_4
    move-exception v10

    .line 237
    .restart local v10       #ex:Ljava/lang/Exception;
    const-string v1, "QRemoteHandler"

    const-string v2, "=====  Cursor Close Exception  ====="

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public onClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 117
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "QRemoteHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onClick]  [getOrientation]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 120
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f09016b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v6, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 132
    :goto_0
    return v5

    .line 125
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lge/quicksettings/handlers/QRemoteHandler$3;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/QRemoteHandler$3;-><init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 69
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/lge/quicksettings/handlers/QRemoteHandler$1;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lge/quicksettings/handlers/QRemoteHandler$1;-><init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;Landroid/os/Handler;)V

    sput-object v0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    .line 84
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->QREMOTE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 88
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.lge.statusbar.expanded"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "com.lge.statusbar.collapsed"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/QRemoteHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/QRemoteHandler$2;-><init>(Lcom/lge/quicksettings/handlers/QRemoteHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 101
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 102
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/quicksettings/handlers/QRemoteHandler;->onChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 109
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 113
    return-void
.end method

.method public onLongClick()Z
    .locals 5

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.qremote.intent.action.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 143
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QRemoteHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLongClick Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->updateButtonLabel()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setRemoteControlButton()V

    .line 157
    return-void
.end method

.method public setButtonStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setRemoteControlButton()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->isRemoteControlEnabled()Z

    move-result v0

    .line 166
    .local v0, enabled:Z
    const/4 v1, 0x1

    .line 167
    .local v1, orientationValue:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->getOrientation()I

    move-result v1

    .line 170
    :cond_0
    const-string v2, "QRemoteHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRemoteControlButton]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [orientationValue]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [mStatusBarExpanded]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-ne v1, v7, :cond_2

    if-eqz v0, :cond_2

    .line 173
    iget-boolean v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mStatusBarExpanded:Z

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f09016b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-static {v2, v3, v7, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 176
    :cond_1
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setButtonStatus(I)V

    .line 177
    invoke-virtual {p0, v6}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setTextColor(Z)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_2
    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0, v5}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setButtonStatus(I)V

    .line 183
    invoke-virtual {p0, v5}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setTextColor(Z)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setButtonStatus(I)V

    .line 186
    invoke-virtual {p0, v6}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->setTextColor(Z)V

    goto :goto_0
.end method

.method public setTextColor(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QRemoteHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 200
    :cond_0
    return-void
.end method
