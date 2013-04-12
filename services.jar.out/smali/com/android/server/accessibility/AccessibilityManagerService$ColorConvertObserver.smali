.class Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorConvertObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 388
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 389
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accessibility_color_config_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
    const-string v1, "accessibility_color_invert_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->update()V

    .line 412
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->update()V

    .line 416
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 419
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "accessibility_color_config_mode"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    #setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mColorConfigMode:Z
    invoke-static {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1402(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 421
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mColorConfigMode:Z
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 422
    const-string v5, "AccessibilityManagerService"

    const-string v8, "Color Config mode ON"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "accessibility_color_invert_enabled"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v6

    .line 425
    .local v3, isInvert:Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_color_hue"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 427
    .local v1, hue:I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_color_intensity"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 429
    .local v2, intensity:I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_color_sat"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 431
    .local v4, sat:F
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_color_contrast"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 434
    .local v0, contrast:F
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->setColorInvert(Z)Z
    invoke-static {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 435
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->setColorConvertForce(IIFF)Z
    invoke-static {v5, v1, v2, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;IIFF)Z

    .line 442
    .end local v0           #contrast:F
    .end local v1           #hue:I
    .end local v2           #intensity:I
    .end local v3           #isInvert:Z
    .end local v4           #sat:F
    :goto_2
    return-void

    :cond_0
    move v5, v7

    .line 419
    goto :goto_0

    :cond_1
    move v3, v7

    .line 423
    goto :goto_1

    .line 437
    :cond_2
    const-string v5, "AccessibilityManagerService"

    const-string v6, "Color Config mode OFF"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->setColorInvert(Z)Z
    invoke-static {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 439
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorConvertObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->setColorConvertForce(IIFF)Z
    invoke-static {v5, v7, v7, v10, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;IIFF)Z

    goto :goto_2
.end method
