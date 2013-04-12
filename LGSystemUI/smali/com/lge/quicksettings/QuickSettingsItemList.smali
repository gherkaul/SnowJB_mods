.class public Lcom/lge/quicksettings/QuickSettingsItemList;
.super Ljava/lang/Object;
.source "QuickSettingsItemList.java"


# instance fields
.field private mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

.field private mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

.field private mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

.field private mContext:Landroid/content/Context;

.field private mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

.field private mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

.field private mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

.field private mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

.field private mItem:[Lcom/lge/systemui/ButtonItem;

.field private mItemCount:I

.field private mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

.field private mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

.field private mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

.field private mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

.field private mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

.field public mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

.field private mQVoiceHandler:Lcom/lge/quicksettings/handlers/QVoiceHandler;

.field private mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

.field private mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

.field private mRotationHandler:Lcom/lge/quicksettings/handlers/RotationHandler;

.field private mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

.field private mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

.field private mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

.field private mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 1
    .parameter "context"
    .parameter "quickSettings"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    .line 78
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    .line 79
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

    .line 80
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

    .line 81
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

    .line 82
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

    .line 83
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

    .line 84
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

    .line 85
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

    .line 86
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

    .line 87
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

    .line 88
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    .line 89
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

    .line 90
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQVoiceHandler:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    .line 91
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    .line 92
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mRotationHandler:Lcom/lge/quicksettings/handlers/RotationHandler;

    .line 93
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    .line 94
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

    .line 95
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

    .line 96
    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;

    .line 98
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/lge/systemui/ButtonItem;

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    .line 104
    iput-object p2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    .line 105
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->initHandler()V

    .line 108
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->createItems()V

    .line 109
    invoke-direct {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->createItemList()V

    .line 110
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->loadFromPreferences()Z

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/quicksettings/QuickSettingsItemList;->refreshButton(Z)V

    .line 112
    return-void
.end method

.method private addItem(IZ)V
    .locals 4
    .parameter "itemIndex"
    .parameter "isDefaultItem"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 617
    packed-switch p1, :pswitch_data_0

    .line 704
    const-string v0, "QuickSettingsItemList"

    const-string v1, "invalid id : error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 619
    :pswitch_0
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_AIRPLANE:Z

    if-ne v0, v2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto :goto_0

    .line 624
    :pswitch_1
    sget-boolean v0, Lcom/lge/systemui/OperatorFeature;->OPERATORFEATURE_QUICKSETTING_BRIGHTNESS:Z

    if-ne v0, v2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto :goto_0

    .line 629
    :pswitch_2
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_ECO_MODE:Z

    if-ne v0, v2, :cond_0

    .line 630
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto :goto_0

    .line 634
    :pswitch_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto :goto_0

    .line 644
    :pswitch_4
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 645
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 649
    :pswitch_5
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_DUALDISPLAY:Z

    if-ne v0, v2, :cond_0

    .line 650
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 654
    :pswitch_6
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_NFC:Z

    if-ne v0, v2, :cond_0

    .line 655
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 657
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 662
    :pswitch_7
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_QUICK_NOTE:Z

    if-ne v0, v2, :cond_0

    .line 663
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 667
    :pswitch_8
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_REMOTE_CONTROL:Z

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 672
    :pswitch_9
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_QUIET_MODE:Z

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 677
    :pswitch_a
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_QUICK_VOICE:Z

    if-ne v0, v2, :cond_0

    .line 678
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 686
    :pswitch_b
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 689
    :pswitch_c
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_SCREEN_TIMEOUT:Z

    if-ne v0, v2, :cond_0

    .line 690
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 701
    :pswitch_d
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    invoke-direct {p0, v0, v1, p2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(Lcom/lge/systemui/ButtonItem;IZ)V

    goto/16 :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_d
        :pswitch_1
        :pswitch_d
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private addItem(Lcom/lge/systemui/ButtonItem;IZ)V
    .locals 1
    .parameter "item"
    .parameter "count"
    .parameter "isDefaultItem"

    .prologue
    .line 710
    invoke-virtual {p1, p2}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V

    .line 711
    if-eqz p3, :cond_0

    .line 712
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 714
    :cond_0
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    return-void
.end method

.method private createItemList()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 418
    iput v3, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItemCount:I

    .line 419
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 420
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 421
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 422
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 423
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 424
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 425
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 426
    invoke-direct {p0, v6, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 427
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 428
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 429
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 430
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 431
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 432
    const/16 v0, 0x10

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 433
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 434
    const/16 v0, 0x13

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 435
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 436
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 437
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 438
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 439
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 588
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 441
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 442
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 443
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 444
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 445
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 446
    invoke-direct {p0, v6, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 447
    const/16 v0, 0x13

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 448
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 449
    const/16 v0, 0x10

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 450
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 451
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 452
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 453
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 454
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 455
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 456
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 457
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 458
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 459
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 460
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto :goto_0

    .line 461
    :cond_1
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-nez v0, :cond_2

    .line 462
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 463
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 464
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 465
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 466
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 467
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 468
    invoke-direct {p0, v6, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 469
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 470
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 471
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 472
    const/16 v0, 0x10

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 473
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 474
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 475
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 476
    const/16 v0, 0x13

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 477
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 478
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 479
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 480
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 481
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0

    .line 482
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 483
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 484
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 485
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 486
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 487
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 488
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 489
    const/4 v0, 0x7

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 490
    const/16 v0, 0x10

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 491
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 492
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 493
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 494
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 495
    const/16 v0, 0x13

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 496
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 497
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 498
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 499
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 500
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 501
    invoke-direct {p0, v6, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 502
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0

    .line 503
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 504
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 505
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 506
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 507
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 508
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 509
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 510
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 511
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 512
    const/16 v0, 0x12

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 513
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 514
    invoke-direct {p0, v6, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 515
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 516
    const/16 v0, 0x10

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 517
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 518
    const/16 v0, 0x13

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 519
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 520
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 521
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 522
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 523
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0

    .line 524
    :cond_4
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 525
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 526
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 527
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 528
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 529
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 530
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 531
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 532
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 533
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 534
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 535
    invoke-direct {p0, v6, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 536
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 537
    const/16 v0, 0x10

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 538
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 539
    const/16 v0, 0x13

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 540
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 541
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 542
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 543
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 544
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0

    .line 545
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_6

    .line 546
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 547
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 548
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 549
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 550
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 551
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 552
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 553
    invoke-direct {p0, v6, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 554
    const/16 v0, 0xf

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 555
    const/16 v0, 0xd

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 556
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 557
    invoke-direct {p0, v4, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 558
    const/16 v0, 0x10

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 559
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 560
    const/16 v0, 0x13

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 561
    const/4 v0, 0x7

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 562
    invoke-direct {p0, v5, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 563
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 564
    const/16 v0, 0x8

    invoke-direct {p0, v0, v3}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 565
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0

    .line 567
    :cond_6
    const/16 v0, 0xc

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 568
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 569
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 570
    const/16 v0, 0x12

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 571
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 572
    invoke-direct {p0, v6, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 573
    invoke-direct {p0, v4, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 574
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 575
    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 576
    const/16 v0, 0x14

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 577
    const/16 v0, 0x10

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 578
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 579
    const/16 v0, 0x13

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 580
    const/4 v0, 0x7

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 581
    invoke-direct {p0, v5, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 582
    const/16 v0, 0xb

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 583
    invoke-direct {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 584
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 585
    const/16 v0, 0xe

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    .line 586
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->addItem(IZ)V

    goto/16 :goto_0
.end method

.method private createItems()V
    .locals 11

    .prologue
    .line 139
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x1

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x1

    const v2, 0x7f0900b6

    const v3, 0x7f090015

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 150
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x2

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x2

    const v2, 0x7f0900af

    const v3, 0x7f0900af

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 160
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x3

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x3

    const v2, 0x7f0900b7

    const v3, 0x7f0900b7

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 178
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x4

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x4

    const v2, 0x7f0900b0

    const v3, 0x7f0900b1

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 189
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 190
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemShortNameId(I)V

    .line 192
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemLongNameId(I)V

    .line 200
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x5

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x5

    const v2, 0x7f0900c7

    const v3, 0x7f0900c7

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 210
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x6

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x6

    const v2, 0x7f0900b4

    const v3, 0x7f0900b4

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 220
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v10, 0x7

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x7

    const v2, 0x7f0900c1

    const v3, 0x7f0900c2

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_6

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 231
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x8

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x8

    const v2, 0x7f0900cd

    const v3, 0x7f0900ce

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 243
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x9

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x9

    const v2, 0x7f0900c4

    const v3, 0x7f0900c4

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_8

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 254
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xa

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xa

    const v2, 0x7f0900b8

    const v3, 0x7f0900b8

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 266
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 269
    :cond_1
    const/4 v0, 0x6

    new-array v7, v0, [I

    fill-array-data v7, :array_a

    .line 277
    .local v7, koreanIcons:[I
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/lge/systemui/ButtonItem;->setItemIcons([I)V

    .line 295
    .end local v7           #koreanIcons:[I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xc

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_b

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 303
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateQMemoLabel()V

    .line 304
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    const-string v1, "com.lge.QuickClip"

    invoke-static {v0, v1}, Lcom/lge/systemui/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, label:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 306
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Lcom/lge/systemui/ButtonItem;->setItemShortName(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 313
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xd

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 320
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateQRemoteLabel()V

    .line 323
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xe

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xe

    const v2, 0x7f0900ef

    const v3, 0x7f0900ef

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 334
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xf

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xf

    const v2, 0x7f0900c9

    const v3, 0x7f0900c9

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQVoiceHandler:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 344
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x10

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x10

    const v2, 0x7f0900b5

    const v3, 0x7f090016

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mRotationHandler:Lcom/lge/quicksettings/handlers/RotationHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_f

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 355
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0xb

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xb

    const v2, 0x7f0900c6

    const v3, 0x7f0900c6

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_10

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 372
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x11

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x11

    const v2, 0x7f0900d1

    const v3, 0x7f0900d1

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_11

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 384
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x12

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x12

    const v2, 0x7f0900aa

    const v3, 0x7f0900ab

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_12

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 396
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x13

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x13

    const v2, 0x7f0900bf

    const v3, 0x7f0900c0

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_13

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 407
    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v10, 0x14

    new-instance v0, Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0x14

    const v2, 0x7f0900ae

    const v3, 0x7f0900ae

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_14

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    aput-object v0, v9, v10

    .line 415
    return-void

    .line 194
    .end local v8           #label:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemLongNameId(I)V

    goto/16 :goto_0

    .line 278
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 283
    :cond_6
    const/4 v0, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_15

    .line 291
    .local v6, forumIcons:[I
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Lcom/lge/systemui/ButtonItem;->setItemIcons([I)V

    goto/16 :goto_1

    .line 139
    :array_0
    .array-data 0x4
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data

    .line 150
    :array_1
    .array-data 0x4
        0xa8t 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 160
    :array_2
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 178
    :array_3
    .array-data 0x4
        0xaft 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 200
    :array_4
    .array-data 0x4
        0xbat 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
    .end array-data

    .line 210
    :array_5
    .array-data 0x4
        0xc3t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
    .end array-data

    .line 220
    :array_6
    .array-data 0x4
        0xc5t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 231
    :array_7
    .array-data 0x4
        0xdbt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
    .end array-data

    .line 243
    :array_8
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x5ct 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 254
    :array_9
    .array-data 0x4
        0xe6t 0x0t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
    .end array-data

    .line 269
    :array_a
    .array-data 0x4
        0xf3t 0x0t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0xf2t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 295
    :array_b
    .array-data 0x4
        0x37t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
    .end array-data

    .line 313
    :array_c
    .array-data 0x4
        0x3dt 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 323
    :array_d
    .array-data 0x4
        0x39t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
    .end array-data

    .line 334
    :array_e
    .array-data 0x4
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x28t 0x1t 0x2t 0x7ft
    .end array-data

    .line 344
    :array_f
    .array-data 0x4
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 355
    :array_10
    .array-data 0x4
        0x32t 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x32t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
    .end array-data

    .line 372
    :array_11
    .array-data 0x4
        0x3ft 0x1t 0x2t 0x7ft
        0x3ft 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x41t 0x1t 0x2t 0x7ft
        0x41t 0x1t 0x2t 0x7ft
    .end array-data

    .line 384
    :array_12
    .array-data 0x4
        0x47t 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x50t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
    .end array-data

    .line 396
    :array_13
    .array-data 0x4
        0x49t 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
        0x4at 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
    .end array-data

    .line 407
    :array_14
    .array-data 0x4
        0x53t 0x1t 0x2t 0x7ft
        0x55t 0x1t 0x2t 0x7ft
        0x53t 0x1t 0x2t 0x7ft
        0x54t 0x1t 0x2t 0x7ft
    .end array-data

    .line 283
    :array_15
    .array-data 0x4
        0xe7t 0x0t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/lge/quicksettings/handlers/AirplaneHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/AirplaneHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    .line 116
    new-instance v0, Lcom/lge/quicksettings/handlers/BluetoothHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/BluetoothHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    .line 117
    new-instance v0, Lcom/lge/quicksettings/handlers/BrightHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/BrightHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

    .line 118
    new-instance v0, Lcom/lge/quicksettings/handlers/DataHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/DataHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

    .line 119
    new-instance v0, Lcom/lge/quicksettings/handlers/EcoHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/EcoHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

    .line 120
    new-instance v0, Lcom/lge/quicksettings/handlers/GpsHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/GpsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

    .line 121
    new-instance v0, Lcom/lge/quicksettings/handlers/HotspotHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/HotspotHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

    .line 122
    new-instance v0, Lcom/lge/quicksettings/handlers/LteHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/LteHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

    .line 123
    new-instance v0, Lcom/lge/quicksettings/handlers/MiracastHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/MiracastHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

    .line 124
    new-instance v0, Lcom/lge/quicksettings/handlers/NFCHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/NFCHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

    .line 125
    new-instance v0, Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    .line 126
    new-instance v0, Lcom/lge/quicksettings/handlers/QMemoHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/QMemoHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

    .line 127
    new-instance v0, Lcom/lge/quicksettings/handlers/QRemoteHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/QRemoteHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    .line 128
    new-instance v0, Lcom/lge/quicksettings/handlers/QuietHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/QuietHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

    .line 129
    new-instance v0, Lcom/lge/quicksettings/handlers/QVoiceHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/QVoiceHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQVoiceHandler:Lcom/lge/quicksettings/handlers/QVoiceHandler;

    .line 130
    new-instance v0, Lcom/lge/quicksettings/handlers/RotationHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/RotationHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mRotationHandler:Lcom/lge/quicksettings/handlers/RotationHandler;

    .line 131
    new-instance v0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    .line 132
    new-instance v0, Lcom/lge/quicksettings/handlers/SoundHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/SoundHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

    .line 133
    new-instance v0, Lcom/lge/quicksettings/handlers/SyncHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/SyncHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

    .line 134
    new-instance v0, Lcom/lge/quicksettings/handlers/WiFiHandler;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct {v0, v1, v2}, Lcom/lge/quicksettings/handlers/WiFiHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;

    .line 135
    return-void
.end method

.method private refreshButton(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mAirplaneHandler:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->refreshButton()V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBluetoothHandler:Lcom/lge/quicksettings/handlers/BluetoothHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/BluetoothHandler;->refreshButton()V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mBrightHandler:Lcom/lge/quicksettings/handlers/BrightHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/BrightHandler;->updateBrightnessButton()V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mEcoHandler:Lcom/lge/quicksettings/handlers/EcoHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/EcoHandler;->refreshButton()V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mGpsHandler:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->refreshButton()V

    .line 596
    :cond_4
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mHotspotHandler:Lcom/lge/quicksettings/handlers/HotspotHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->refreshButton()V

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mLteHandler:Lcom/lge/quicksettings/handlers/LteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/LteHandler;->refreshButton()V

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mPowerSaverHandler:Lcom/lge/quicksettings/handlers/PowerSaverHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/PowerSaverHandler;->refreshButton()V

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQuietHandler:Lcom/lge/quicksettings/handlers/QuietHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QuietHandler;->refreshButton()V

    .line 600
    :cond_8
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQMemoHandler:Lcom/lge/quicksettings/handlers/QMemoHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QMemoHandler;->refreshButton()V

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    if-eqz v0, :cond_a

    .line 602
    if-eqz p1, :cond_f

    .line 603
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->refreshButton()V

    .line 610
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mScreenTimeoutHandler:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->refreshButton()V

    .line 611
    :cond_b
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSoundHandler:Lcom/lge/quicksettings/handlers/SoundHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/SoundHandler;->refreshButton()V

    .line 612
    :cond_c
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mSyncHandler:Lcom/lge/quicksettings/handlers/SyncHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/SyncHandler;->refreshButton()V

    .line 613
    :cond_d
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mWiFiHandler:Lcom/lge/quicksettings/handlers/WiFiHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/WiFiHandler;->refreshButton()V

    .line 614
    :cond_e
    return-void

    .line 605
    :cond_f
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->isItemEnabled(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 606
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mQRemoteHandler:Lcom/lge/quicksettings/handlers/QRemoteHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/QRemoteHandler;->refreshButton()V

    goto :goto_0
.end method


# virtual methods
.method public getEnabledItemCount(Ljava/util/ArrayList;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    const/4 v0, 0x0

    .line 729
    .local v0, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/ButtonItem;

    .line 730
    .local v2, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v2           #item:Lcom/lge/systemui/ButtonItem;
    :cond_1
    return v0
.end method

.method public isItemEnabled(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemui/ButtonItem;

    .line 719
    .local v1, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 720
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v2

    .line 723
    .end local v1           #item:Lcom/lge/systemui/ButtonItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadFromPreferences()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 867
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    const-string v2, "quicksettings_setting"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 872
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.systemui/shared_prefs/quicksettings_setting.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 893
    :goto_0
    return v0

    .line 877
    :cond_0
    const-string v3, "quicksettings_version"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 879
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 880
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 886
    :cond_1
    const-string v0, "quicksettings_item_list"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    const-string v1, "QuickSettingsItemList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromPreferences(): data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateItem(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    .line 893
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveToPreferences()V
    .locals 5

    .prologue
    .line 842
    const-string v0, ""

    .line 843
    sget-object v1, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 846
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/ButtonItem;

    .line 848
    const-string v3, ""

    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 856
    goto/16 :goto_0

    .line 852
    :cond_0
    const-string v0, "false"

    goto :goto_1

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    const-string v2, "quicksettings_setting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 860
    const-string v2, "quicksettings_version"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 861
    const-string v2, "quicksettings_item_list"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 862
    const-string v2, "QuickSettingsItemList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveToPreferences(): data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 864
    return-void
.end method

.method public updateAllButtons()V
    .locals 3

    .prologue
    .line 819
    const-string v1, "QuickSettingsItemList"

    const-string v2, "setAllButtonsStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateQMemoLabel()V

    .line 822
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsItemList;->updateQRemoteLabel()V

    .line 824
    sget-object v0, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    .line 826
    .local v0, curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->isItemEnabled(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mDataHandler:Lcom/lge/quicksettings/handlers/DataHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/DataHandler;->setNetworkButton()V

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->isItemEnabled(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mMiracastHandler:Lcom/lge/quicksettings/handlers/MiracastHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/MiracastHandler;->setWiFiScreenButton()V

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->isItemEnabled(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mNFCHandler:Lcom/lge/quicksettings/handlers/NFCHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/handlers/NFCHandler;->setNFCButton()V

    .line 838
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/quicksettings/QuickSettingsItemList;->refreshButton(Z)V

    .line 839
    return-void
.end method

.method public updateItem(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    if-nez p2, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ":"

    invoke-direct {v6, p2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .local v6, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 744
    .local v3, id:I
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 745
    .local v5, order:I
    const-string v7, "true"

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 748
    .local v1, enabled:Z
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/systemui/ButtonItem;

    .line 749
    .local v4, item:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v7

    if-ne v7, v3, :cond_2

    .line 750
    invoke-virtual {v4, v1}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 751
    invoke-virtual {v4, v5}, Lcom/lge/systemui/ButtonItem;->setItemOrder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    .end local v1           #enabled:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    .end local v4           #item:Lcom/lge/systemui/ButtonItem;
    .end local v5           #order:I
    .end local v6           #tokenizer:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #id:I
    .restart local v5       #order:I
    .restart local v6       #tokenizer:Ljava/util/StringTokenizer;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateQMemoLabel()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    .line 762
    const/4 v4, 0x0

    .line 764
    .local v4, label:Ljava/lang/String;
    const/4 v2, 0x0

    .line 766
    .local v2, context:Landroid/content/Context;
    :try_start_0
    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    const-string v8, "com.lge.QuickClip"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 767
    if-eqz v2, :cond_0

    .line 768
    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 771
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 772
    .local v1, applicationLabelResourceId:I
    :try_start_1
    const-string v7, "com.lge.QuickClip"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 773
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 774
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 775
    const-string v7, "QuickSettingsItemList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applicationLabelResourceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 778
    .local v6, res:Landroid/content/res/Resources;
    if-eqz v6, :cond_0

    .line 780
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 781
    const-string v7, "QuickSettingsItemList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applicationLabelResourceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", label: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationLabelResourceId:I
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 796
    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 800
    :cond_1
    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v7, v7, v10

    invoke-virtual {v7, v4}, Lcom/lge/systemui/ButtonItem;->setItemShortName(Ljava/lang/String;)V

    .line 801
    iget-object v7, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v7, v7, v10

    invoke-virtual {v7, v4}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 802
    return-void

    .line 782
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #applicationLabelResourceId:I
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    .restart local v6       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 783
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 787
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    .line 788
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 791
    .end local v1           #applicationLabelResourceId:I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v3

    .line 792
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateQRemoteLabel()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, label:Ljava/lang/String;
    sget-boolean v1, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_REMOTE_CONTROL:Z

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    const-string v2, "com.lge.qremote"

    invoke-static {v1, v2}, Lcom/lge/systemui/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    :cond_0
    if-nez v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/lge/systemui/ButtonItem;->setItemShortName(Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsItemList;->mItem:[Lcom/lge/systemui/ButtonItem;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 816
    return-void
.end method
