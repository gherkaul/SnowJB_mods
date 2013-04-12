.class public abstract Lcom/lge/quicksettings/QuickSettingsHandler;
.super Ljava/lang/Object;
.source "QuickSettingsHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field public mQuickSettings:Lcom/lge/quicksettings/QuickSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    .line 24
    return-void
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public refreshButton()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public setButtonStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public setTextColor(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 61
    :cond_0
    return-void
.end method
