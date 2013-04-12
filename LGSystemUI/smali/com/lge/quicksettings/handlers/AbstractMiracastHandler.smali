.class public abstract Lcom/lge/quicksettings/handlers/AbstractMiracastHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "AbstractMiracastHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 0
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 16
    const/4 v0, 0x3

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public setWiFiScreenButton()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
