.class public Lcom/lge/quicksettings/handlers/HotspotHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "HotspotHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

.field private mAlertDialogView:Landroid/view/View;

.field private mAttentionView:Landroid/webkit/WebView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckTethering:Z

.field private mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field private mHotSpotDialog:Landroid/app/AlertDialog;

.field private mIsSelected:Z

.field private mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "HotspotHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 64
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 65
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 67
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    .line 68
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAlertDialogView:Landroid/view/View;

    .line 83
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    .line 85
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z

    .line 87
    new-instance v0, Lcom/lge/quicksettings/handlers/HotspotHandler$1;

    invoke-direct {v0, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$1;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    .line 100
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    return-void
.end method

.method private SetUserResponse(I)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 375
    sget-object v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 377
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setCheckTethering(Z)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->onHotspotButtonClick(Z)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-ne p1, v3, :cond_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/HotspotHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/quicksettings/handlers/HotspotHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/HotspotHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/HotspotHandler;->SetUserResponse(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/handlers/HotspotHandler;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/quicksettings/handlers/HotspotHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->isCheckBoxChecked()Z

    move-result v0

    return v0
.end method

.method private createWarningDialog()V
    .locals 4

    .prologue
    .line 320
    sget-object v2, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v3, "start Create WaringDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, v:Landroid/view/View;
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->makeDCMView()Landroid/view/View;

    move-result-object v1

    .line 330
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const v3, 0x20a01cb

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 332
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 333
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 334
    const v2, 0x7f090127

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 336
    const v2, 0x7f090129

    new-instance v3, Lcom/lge/quicksettings/handlers/HotspotHandler$3;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$3;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    const v2, 0x7f090128

    new-instance v3, Lcom/lge/quicksettings/handlers/HotspotHandler$4;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$4;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    new-instance v2, Lcom/lge/quicksettings/handlers/HotspotHandler$5;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$5;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;

    .line 367
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 368
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 370
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 371
    sget-object v2, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v3, "Ask for answer for HotSpot"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 325
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->makeKDDIView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getHotspotStatus()I
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x3

    .line 260
    .local v0, status:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 262
    .local v1, wifiState:I
    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    return v0

    .line 264
    :pswitch_0
    const/4 v0, 0x1

    .line 265
    goto :goto_0

    .line 268
    :pswitch_1
    const/4 v0, 0x3

    .line 269
    goto :goto_0

    .line 272
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 496
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method private makeDCMView()Landroid/view/View;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 389
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 391
    .local v4, locale:Ljava/util/Locale;
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 392
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v10, "html/%y%z/tether_attention_%x.html"

    const-string v11, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, path:Ljava/lang/String;
    const-string v10, "%z"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 395
    const-string v10, "%x"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 397
    const/4 v8, 0x1

    .line 398
    .local v8, useCountry:Z
    const/4 v3, 0x0

    .line 401
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 405
    if-eqz v3, :cond_0

    .line 407
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 412
    :cond_0
    :goto_0
    const-string v10, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v11, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, url:Ljava/lang/String;
    const-string v11, "%z"

    if-eqz v8, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 416
    const-string v10, "%x"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 418
    const-string v10, "html/%y%z/tether_attention_%x.html"

    const-string v11, "%y"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, tmpUrl:Ljava/lang/String;
    :try_start_2
    const-string v11, "%z"

    if-eqz v8, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 423
    const-string v10, "%x"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 433
    if-eqz v3, :cond_1

    .line 435
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 441
    :cond_1
    :goto_3
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 443
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f03003c

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAlertDialogView:Landroid/view/View;

    .line 445
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAlertDialogView:Landroid/view/View;

    const v11, 0x7f0c0120

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    iput-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAttentionView:Landroid/webkit/WebView;

    .line 447
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAttentionView:Landroid/webkit/WebView;

    if-eqz v10, :cond_2

    .line 448
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 449
    .local v9, ws:Landroid/webkit/WebSettings;
    if-eqz v9, :cond_7

    .line 450
    invoke-virtual {v9, v13}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 451
    invoke-virtual {v9, v13}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 455
    :goto_4
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAttentionView:Landroid/webkit/WebView;

    invoke-virtual {v10, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 456
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAttentionView:Landroid/webkit/WebView;

    new-instance v11, Lcom/lge/quicksettings/handlers/HotspotHandler$6;

    invoke-direct {v11, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$6;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 465
    .end local v9           #ws:Landroid/webkit/WebSettings;
    :cond_2
    iget-object v10, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mAlertDialogView:Landroid/view/View;

    return-object v10

    .line 402
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #tmpUrl:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 403
    .local v1, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 405
    if-eqz v3, :cond_0

    .line 407
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 408
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 405
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v3, :cond_3

    .line 407
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 409
    :cond_3
    :goto_5
    throw v10

    .line 414
    .restart local v7       #url:Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto/16 :goto_1

    .line 421
    .restart local v6       #tmpUrl:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v10, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 426
    :catch_2
    move-exception v1

    .line 427
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_7
    sget-object v10, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v10, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asset File is not exists, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v7, "file:///android_asset/html/en_us/tether_attention_en.html"

    .line 431
    sget-object v10, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load default(english, us) resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 433
    if-eqz v3, :cond_1

    .line 435
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 436
    :catch_3
    move-exception v10

    goto/16 :goto_3

    .line 433
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    if-eqz v3, :cond_6

    .line 435
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 437
    :cond_6
    :goto_6
    throw v10

    .line 453
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #ws:Landroid/webkit/WebSettings;
    :cond_7
    sget-object v10, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v11, "WebSettings of WebView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 408
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #tmpUrl:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    .end local v9           #ws:Landroid/webkit/WebSettings;
    :catch_4
    move-exception v10

    goto/16 :goto_0

    :catch_5
    move-exception v11

    goto :goto_5

    .line 436
    .restart local v6       #tmpUrl:Ljava/lang/String;
    .restart local v7       #url:Ljava/lang/String;
    :catch_6
    move-exception v10

    goto/16 :goto_3

    :catch_7
    move-exception v11

    goto :goto_6
.end method

.method private makeKDDIView()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 469
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, linearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 475
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 476
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 477
    const/16 v2, 0x8

    invoke-virtual {v1, v5, v2, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 478
    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    .line 481
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 482
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/lge/quicksettings/handlers/HotspotHandler$7;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$7;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 490
    return-object v0
.end method

.method private setSoftapEnabled(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 279
    sget-boolean v3, Lcom/lge/quicksettings/handlers/HotspotHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 280
    sget-object v3, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v4, "setSoftapEnabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 288
    .local v2, wifiState:I
    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 291
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 299
    if-nez p1, :cond_3

    .line 300
    const/4 v1, 0x0

    .line 303
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :goto_0
    if-ne v1, v5, :cond_3

    .line 308
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 309
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    .end local v1           #wifiSavedState:I
    :cond_3
    return-void

    .line 304
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    sget-object v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;->onHotspotButtonClick(Z)V

    .line 140
    return v2
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 4
    .parameter "data"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 107
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 108
    new-instance v0, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v0}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 109
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v1, Lcom/lge/quicksettings/handlers/HotspotHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/HotspotHandler$2;-><init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 122
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 124
    const/4 v0, 0x3

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onDestroy()V

    .line 134
    return-void
.end method

.method public onHotspotButtonClick(Z)V
    .locals 10
    .parameter "bClick"

    .prologue
    const-wide/16 v8, 0x7d0

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 178
    sget-boolean v2, Lcom/lge/quicksettings/handlers/HotspotHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 179
    sget-object v2, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v3, "onHotspotButtonClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "LGMDMHotspotUIAdapter"

    invoke-virtual {v2, v3, v4}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const v4, 0x20c0040

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5, v8, v9}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 190
    sget-object v2, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v3, "onHotspotButtonClick() MDM Block"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f09010f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5, v8, v9}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->getHotspotStatus()I

    move-result v2

    if-ne v2, v7, :cond_3

    iget-boolean v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    if-nez v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 206
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->createWarningDialog()V

    goto :goto_0

    .line 209
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->getHotspotStatus()I

    move-result v2

    if-ne v2, v7, :cond_4

    iget-boolean v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    if-nez v2, :cond_4

    .line 212
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tether_use_first_time"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    .line 213
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 214
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->createWarningDialog()V

    goto :goto_0

    .line 221
    :cond_4
    const-string v2, "service.btui.ampstate"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.action.WIFI_BT_HS_COEX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, appDetails:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->getHotspotStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setSoftapEnabled(Z)V

    .line 235
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setButtonStatus(I)V

    .line 236
    invoke-virtual {p0, v6}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setTextColor(Z)V

    .line 237
    iput-boolean v6, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    goto/16 :goto_0

    .line 240
    :pswitch_2
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    .line 241
    invoke-direct {p0, v5}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setSoftapEnabled(Z)V

    .line 242
    invoke-virtual {p0, v5}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setButtonStatus(I)V

    .line 243
    invoke-virtual {p0, v5}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setTextColor(Z)V

    .line 244
    if-eqz p1, :cond_6

    .line 245
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f090143

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5, v8, v9}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 252
    :cond_6
    :goto_1
    iput-boolean v6, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    goto/16 :goto_0

    .line 248
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v1       #intent:Landroid/content/Intent;
    aget-object v2, v0, v6

    aget-object v3, v0, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aDialog"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 150
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    sget-boolean v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/lge/quicksettings/handlers/HotspotHandler;->TAG:Ljava/lang/String;

    const-string v1, "setHotspotButton:: !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->getHotspotStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setButtonStatus(I)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setTextColor(Z)V

    goto :goto_0

    .line 167
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setButtonStatus(I)V

    .line 168
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setTextColor(Z)V

    goto :goto_0

    .line 171
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setButtonStatus(I)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;->setTextColor(Z)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCheckTethering(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler;->mCheckTethering:Z

    .line 386
    return-void
.end method
