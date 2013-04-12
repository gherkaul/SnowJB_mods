.class public Lcom/lge/systemui/BrightnessObservers;
.super Ljava/lang/Object;
.source "BrightnessObservers.java"


# instance fields
.field private final CUSTOM_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_BRIGHTNESS_CUSTOM_URI:Landroid/net/Uri;

.field private final SCREEN_BRIGHTNESS_MODE_CUSTOM_URI:Landroid/net/Uri;

.field private final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

.field private mCustomScreenBrightnessObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenBrightnessCustomObserver:Landroid/database/ContentObserver;

.field private mScreenBrightnessModeCustomObserver:Landroid/database/ContentObserver;

.field private mScreenBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mScreenBrightnessObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "onChangeHandler"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 24
    const-string v0, "custom_screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->CUSTOM_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "screen_brightness_custom"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_CUSTOM_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "screen_brightness_mode_custom"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_MODE_CUSTOM_URI:Landroid/net/Uri;

    .line 36
    if-nez p1, :cond_0

    .line 37
    const-string v0, "BrightnessObservers"

    const-string v1, "BrightnessObservers needs Context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    .line 43
    new-instance v0, Lcom/lge/systemui/BrightnessObservers$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/lge/systemui/BrightnessObservers$1;-><init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    .line 51
    new-instance v0, Lcom/lge/systemui/BrightnessObservers$2;

    invoke-direct {v0, p0, v1, p2}, Lcom/lge/systemui/BrightnessObservers$2;-><init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 59
    new-instance v0, Lcom/lge/systemui/BrightnessObservers$3;

    invoke-direct {v0, p0, v1, p2}, Lcom/lge/systemui/BrightnessObservers$3;-><init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mCustomScreenBrightnessObserver:Landroid/database/ContentObserver;

    .line 67
    new-instance v0, Lcom/lge/systemui/BrightnessObservers$4;

    invoke-direct {v0, p0, v1, p2}, Lcom/lge/systemui/BrightnessObservers$4;-><init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessCustomObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/lge/systemui/BrightnessObservers$5;

    invoke-direct {v0, p0, v1, p2}, Lcom/lge/systemui/BrightnessObservers$5;-><init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeCustomObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method


# virtual methods
.method public registerObservers()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lge/systemui/BrightnessObservers;->CUSTOM_SCREEN_BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/BrightnessObservers;->mCustomScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_CUSTOM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessCustomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lge/systemui/BrightnessObservers;->SCREEN_BRIGHTNESS_MODE_CUSTOM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeCustomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v0, "BrightnessObservers"

    const-string v1, "ContentResolver must be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterObservers()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mCustomScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessCustomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lge/systemui/BrightnessObservers;->mScreenBrightnessModeCustomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    const-string v0, "BrightnessObservers"

    const-string v1, "ContentResolver must be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method
