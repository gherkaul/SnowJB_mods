.class public Lcom/lge/quicksettings/handlers/SyncHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "SyncHandler.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mSyncStatusChangeListener:Ljava/lang/Object;

.field private final mSyncStatusHandler:Landroid/os/Handler;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "SyncHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/SyncHandler;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/SyncHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mSyncStatusHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/lge/quicksettings/handlers/SyncHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/SyncHandler$1;-><init>(Lcom/lge/quicksettings/handlers/SyncHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 37
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mSyncStatusChangeListener:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/SyncHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mSyncStatusHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick()Z
    .locals 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/lge/quicksettings/handlers/SyncHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/lge/quicksettings/handlers/SyncHandler;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/SyncHandler;->onSyncButtonClick()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 65
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSyncButtonClick()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 84
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LGMDMEmailUIAdapter"

    invoke-virtual {v1, v2, v3}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/SyncHandler;->mContext:Landroid/content/Context;

    const v3, 0x20c0023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 91
    sget-object v1, Lcom/lge/quicksettings/handlers/SyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "onSyncButtonClick() MDM Block"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 98
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setButtonStatus(I)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setTextColor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/lge/quicksettings/handlers/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setButtonStatus(I)V

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setTextColor(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/lge/quicksettings/handlers/SyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setButtonStatus(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/lge/quicksettings/handlers/SyncHandler;->setTextColor(Z)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/SyncHandler;->setButtonStatus(I)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/SyncHandler;->setTextColor(Z)V

    goto :goto_0
.end method
