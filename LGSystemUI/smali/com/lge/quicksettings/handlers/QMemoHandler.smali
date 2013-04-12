.class public Lcom/lge/quicksettings/handlers/QMemoHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "QMemoHandler.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQNotePopupShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z

    .line 45
    new-instance v0, Lcom/lge/quicksettings/handlers/QMemoHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/QMemoHandler$1;-><init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/lge/quicksettings/handlers/QMemoHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z

    return p1
.end method

.method private executeQuickMemo()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 99
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 103
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.lge.QuickClip"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 109
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z

    if-nez v8, :cond_0

    .line 110
    iput-boolean v6, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    const v9, 0x20a01cb

    invoke-direct {v0, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 113
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f09012c

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    const v8, 0x7f09014a

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 115
    const v8, 0x1010355

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 116
    const v8, 0x7f0900a5

    new-instance v9, Lcom/lge/quicksettings/handlers/QMemoHandler$2;

    invoke-direct {v9, p0}, Lcom/lge/quicksettings/handlers/QMemoHandler$2;-><init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    const v8, 0x7f0900d4

    new-instance v9, Lcom/lge/quicksettings/handlers/QMemoHandler$3;

    invoke-direct {v9, p0}, Lcom/lge/quicksettings/handlers/QMemoHandler$3;-><init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v8, Lcom/lge/quicksettings/handlers/QMemoHandler$4;

    invoke-direct {v8, p0}, Lcom/lge/quicksettings/handlers/QMemoHandler$4;-><init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 143
    .local v3, mQVoiceDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 145
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 147
    .end local v0           #ab:Landroid/app/AlertDialog$Builder;
    .end local v3           #mQVoiceDialog:Landroid/app/AlertDialog;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setButtonStatus(I)V

    .line 148
    invoke-virtual {p0, v6}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setTextColor(Z)V

    .line 150
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 151
    .local v2, handler:Landroid/os/Handler;
    new-instance v8, Lcom/lge/quicksettings/handlers/QMemoHandler$5;

    invoke-direct {v8, p0}, Lcom/lge/quicksettings/handlers/QMemoHandler$5;-><init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    const/high16 v9, 0x40a0

    invoke-virtual {v8, v7, v9}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse(IF)V

    .line 161
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_0
    iget-object v8, p0, Lcom/lge/quicksettings/handlers/QMemoHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x96

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    .end local v2           #handler:Landroid/os/Handler;
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    return v6

    .line 105
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v7

    .line 106
    goto :goto_1

    .line 162
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #handler:Landroid/os/Handler;
    .restart local v4       #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public onClick()Z
    .locals 2

    .prologue
    .line 77
    const-string v0, "QMemoHandler"

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->executeQuickMemo()Z

    move-result v0

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 70
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setTextColor(Z)V

    .line 71
    return v0
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->executeQuickMemo()Z

    move-result v0

    return v0
.end method

.method public refreshButton()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsButton;->updateButtonLabel()V

    .line 93
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setButtonStatus(I)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setTextColor(Z)V

    .line 95
    const-string v0, "QMemoHandler"

    const-string v1, "refreshButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
