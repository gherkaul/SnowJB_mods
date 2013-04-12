.class public abstract Lcom/lge/quicksettings/handlers/AbstractDataHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "AbstractDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;
    }
.end annotation


# instance fields
.field protected forceDisabledOnCalling:Z

.field protected keepPending:Z

.field protected keepPendingDuration:I

.field protected mAirplaneToggle:Ljava/lang/Boolean;

.field protected mAnimating:Ljava/lang/Boolean;

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field private mDataNetworkPopupShown:Z

.field protected mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

.field protected mHandler:Landroid/os/Handler;

.field protected mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field protected mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

.field protected mRoamingDataSettingObserver:Landroid/database/ContentObserver;

.field protected mServiceState:Landroid/telephony/ServiceState;

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 2
    .parameter "context"
    .parameter "quicksettings"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 51
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 54
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 55
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAirplaneToggle:Ljava/lang/Boolean;

    .line 62
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z

    .line 63
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPending:Z

    .line 64
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPendingDuration:I

    .line 66
    iput-boolean v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->forceDisabledOnCalling:Z

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkRoamingButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setPendingButtonStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->isDataRoamingAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z

    return p1
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    :pswitch_0
    const/4 v0, 0x1

    .line 590
    :cond_0
    :pswitch_1
    return v0

    .line 582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDataRoamingAllowed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 697
    :try_start_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 699
    :cond_0
    :goto_0
    return v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private setNetworkRoamingButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 704
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->isDataRoamingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 706
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 711
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 709
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method

.method private setPendingButtonStatus()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$6;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 459
    return-void
.end method

.method private showAlertDialogDocomo(I)V
    .locals 6
    .parameter "status"

    .prologue
    const v5, 0x7f0900a5

    const/4 v4, 0x1

    .line 595
    iput-boolean v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z

    .line 596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v3, 0x20a01cb

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 597
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 598
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 599
    const v2, 0x7f0900d4

    new-instance v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler$7;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$7;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 606
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$8;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$8;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    if-ne p1, v4, :cond_1

    .line 613
    const v2, 0x7f090141

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 614
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$9;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$9;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 641
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 642
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 643
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 644
    return-void

    .line 625
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 626
    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 627
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$10;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$10;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showAlertDialogSKT(I)V
    .locals 5
    .parameter "status"

    .prologue
    const v4, 0x7f0900a5

    .line 647
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v3, 0x20a01cb

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 648
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 649
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 651
    const v2, 0x7f0900d4

    new-instance v3, Lcom/lge/quicksettings/handlers/AbstractDataHandler$11;

    invoke-direct {v3, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$11;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$12;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$12;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 662
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 663
    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 664
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$13;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$13;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v2}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 690
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 691
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 692
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 693
    return-void

    .line 674
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 675
    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 676
    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$14;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method protected getStatus()I
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 565
    iget-boolean v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->forceDisabledOnCalling:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    const/4 v0, 0x3

    .line 571
    .local v0, status:I
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 572
    goto :goto_0

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public getStatusText(II)Ljava/lang/String;
    .locals 4
    .parameter "previous"
    .parameter "current"

    .prologue
    const/4 v3, 0x4

    .line 520
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f090189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, label:Ljava/lang/String;
    :goto_0
    const-string v1, "AbstractDataHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatusText [label]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v0

    .line 523
    .end local v0           #label:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 524
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #label:Ljava/lang/String;
    goto :goto_0

    .line 526
    .end local v0           #label:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #label:Ljava/lang/String;
    goto :goto_0
.end method

.method public onClick()Z
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 340
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 438
    :goto_0
    return v1

    .line 344
    :cond_0
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_2

    .line 345
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x20c00b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    move v1, v2

    .line 349
    goto :goto_0

    .line 350
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getAllowMobileNetwork(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 351
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x20c0054

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    move v1, v2

    .line 354
    goto :goto_0

    .line 359
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 361
    goto :goto_0

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 365
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 366
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f090125

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_1
    move v1, v2

    .line 370
    goto :goto_0

    .line 368
    :cond_4
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f090126

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_1

    .line 373
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-eq v3, v8, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-ne v3, v5, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 376
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v2

    .line 377
    goto/16 :goto_0

    .line 380
    :cond_7
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    monitor-enter v3

    .line 381
    :try_start_0
    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mAnimating:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 382
    monitor-exit v3

    move v1, v2

    goto/16 :goto_0

    .line 383
    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v3, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 387
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v3, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->getStatus()I

    move-result v0

    .line 391
    .local v0, status:I
    if-ne v0, v7, :cond_b

    .line 392
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 393
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900da

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-static {v3, v4, v2, v5, v6}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 409
    :cond_9
    :goto_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_e

    iget-boolean v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z

    if-nez v3, :cond_e

    .line 410
    if-eq v0, v2, :cond_d

    if-eq v0, v7, :cond_d

    .line 411
    const-string v1, "AbstractDataHandler"

    const-string v3, "showAlertDialogDOCOMO, invalid status"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 412
    goto/16 :goto_0

    .line 383
    .end local v0           #status:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 394
    .restart local v0       #status:I
    :cond_a
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-eq v3, v8, :cond_9

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-eq v3, v7, :cond_9

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    .line 397
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-static {v3, v4, v2, v5, v6}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 399
    :cond_b
    if-ne v0, v2, :cond_9

    .line 400
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 401
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-static {v3, v4, v2, v5, v6}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 402
    :cond_c
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-eq v3, v8, :cond_9

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-eq v3, v7, :cond_9

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    .line 405
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-static {v3, v4, v2, v5, v6}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_2

    .line 416
    :cond_d
    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->showAlertDialogDocomo(I)V

    :goto_3
    move v1, v2

    .line 438
    goto/16 :goto_0

    .line 417
    :cond_e
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    if-ne v3, v8, :cond_10

    .line 418
    if-eq v0, v2, :cond_f

    if-eq v0, v7, :cond_f

    .line 419
    const-string v1, "AbstractDataHandler"

    const-string v3, "showAlertDialogSKT, invalid status"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 420
    goto/16 :goto_0

    .line 422
    :cond_f
    invoke-direct {p0, v0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->showAlertDialogSKT(I)V

    goto :goto_3

    .line 425
    :cond_10
    if-ne v0, v2, :cond_12

    .line 426
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 432
    :cond_11
    :goto_4
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 427
    :cond_12
    if-ne v0, v7, :cond_11

    .line 428
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_network_wait_for_paypopup_response"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_4
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettingsButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 77
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 81
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$1;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 109
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 111
    new-instance v1, Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-direct {v1}, Lcom/lge/quicksettings/QuickSettingsReceiver;-><init>()V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 113
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setAction([Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    new-instance v2, Lcom/lge/quicksettings/handlers/AbstractDataHandler$2;

    invoke-direct {v2, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$2;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsReceiver;->setHandler(Lcom/lge/quicksettings/QuickSettingsReceiver$Handler;)V

    .line 129
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 131
    new-instance v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$3;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 213
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    .line 214
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 218
    new-instance v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;

    invoke-direct {v1, p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$4;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    .line 259
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    new-instance v1, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;

    iget-object v2, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/lge/quicksettings/handlers/AbstractDataHandler$5;-><init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mRoamingDataSettingObserver:Landroid/database/ContentObserver;

    .line 276
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mRoamingDataSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->getStatus()I

    move-result v0

    .line 280
    .local v0, status:I
    if-ne v0, v5, :cond_0

    .line 281
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v5}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    .line 286
    :goto_0
    return v0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, v4}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 317
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 318
    iput-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverData:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 319
    iput-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mReceiverAirplane:Lcom/lge/quicksettings/QuickSettingsReceiver;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 326
    iput-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mMobileDataSettingObserver:Lcom/lge/quicksettings/handlers/AbstractDataHandler$MobileDataSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mRoamingDataSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mRoamingDataSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 336
    :cond_3
    return-void
.end method

.method public onLongClick()Z
    .locals 6

    .prologue
    const/high16 v5, 0x1400

    .line 463
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 464
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    const-string v3, "com.lge.roamingsettings"

    const-string v4, "com.lge.roamingsettings.troaming.TRoamingonLTE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :goto_0
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 471
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 510
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 468
    :cond_0
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.lgesetting.wireless.DataNetworkModeSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 473
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lge/systemui/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 475
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    :try_start_1
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    :goto_3
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "AbstractDataHandler"

    const-string v4, "com.android.settings.Settings$WirelessSettingsActivity not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 485
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 487
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.lge.roamingsettings"

    const-string v4, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.Roaming"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 489
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 490
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_1

    .line 492
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 493
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings.gemini"

    invoke-static {v3, v4}, Lcom/lge/systemui/Utils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 495
    .local v2, isInstalledGemini:Z
    invoke-static {}, Lcom/lge/systemui/BAL;->isDualSimSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 496
    if-eqz v2, :cond_4

    .line 497
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SimManagementActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    :goto_4
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 505
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 506
    iget-object v3, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettings;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto/16 :goto_1

    .line 499
    :cond_4
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.DualSim"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 502
    :cond_5
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 511
    .end local v2           #isInstalledGemini:Z
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method public setNetworkButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    iget-boolean v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPending:Z

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->setNetworkRoamingButton()V

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 555
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 550
    :pswitch_2
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 551
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 558
    :pswitch_3
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 559
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mEventData:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v0, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->setTextColor(Z)V

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
