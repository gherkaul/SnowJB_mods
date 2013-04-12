.class public Lcom/lge/quicksettings/handlers/GpsHandler;
.super Lcom/lge/quicksettings/QuickSettingsHandler;
.source "GpsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGPSContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGpsPopupCheckbox:Landroid/widget/CheckBox;

.field private mGpsPopupCheckboxChecked:I

.field private mGpsPopupShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "GpsHandler"

    sput-object v0, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/quicksettings/handlers/GpsHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
    .locals 10
    .parameter "context"
    .parameter "aQuickSettings"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V

    .line 50
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object v2, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    iput-boolean v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z

    .line 63
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, gpsCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 75
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v9, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGPSContentQueryMap:Landroid/content/ContentQueryMap;

    .line 76
    new-instance v7, Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;

    invoke-direct {v7, p0, v2}, Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;Lcom/lge/quicksettings/handlers/GpsHandler$1;)V

    .line 77
    .local v7, gpsStatusObserver:Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGPSContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v7}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 80
    .end local v7           #gpsStatusObserver:Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/lge/quicksettings/handlers/GpsHandler;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/quicksettings/handlers/GpsHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/lge/quicksettings/handlers/GpsHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z

    return p1
.end method

.method private isGpsLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onGPSButtonClick()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const-wide/16 v12, 0x7d0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 137
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/lge/mdm/uimanager/LGMDMUIManager;->getUIAdapterSystemUI()Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;

    move-result-object v6

    const-string v9, "LGMDMGPSUIAdpater"

    invoke-virtual {v6, v11, v9}, Lcom/lge/mdm/uimanager/adapter/LGMDMUISystemUIAdapter;->checkOnClick(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/lge/cappuccino/IMdm;->getAllowGPSLocation(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 142
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const v9, 0x20c001d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7, v12, v13}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 150
    :cond_0
    :goto_0
    sget-object v6, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    const-string v7, "mGPSButtonHandler:onClick() MDM Block"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 145
    :cond_2
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v6

    invoke-interface {v6, v11}, Lcom/lge/cappuccino/IMdm;->getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 146
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const v9, 0x20c00be

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7, v12, v13}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/16 v9, 0xc

    if-ne v6, v9, :cond_5

    .line 158
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "gps_device_managerment_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, GPSstatus:I
    sget-object v6, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SPR_DM , GPSstatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-ne v0, v7, :cond_4

    .line 162
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const v9, 0x20c001d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7, v12, v13}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 165
    sget-object v6, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPR_DM , DeviceManagement - GpsState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :cond_4
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 169
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const v9, 0x20c00be

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7, v12, v13}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 172
    sget-object v6, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPR_DM , DeviceManagement - GpsState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 178
    .end local v0           #GPSstatus:I
    :cond_5
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "usc_gps_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupCheckboxChecked:I

    .line 180
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/4 v9, 0x5

    if-eq v6, v9, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/4 v9, 0x7

    if-eq v6, v9, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/16 v9, 0x9

    if-eq v6, v9, :cond_6

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/16 v9, 0xa

    if-ne v6, v9, :cond_d

    iget v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupCheckboxChecked:I

    if-nez v6, :cond_d

    .line 185
    :cond_6
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 186
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const v8, 0x20a01cb

    invoke-direct {v2, v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    if-nez v6, :cond_7

    .line 191
    const v6, 0x7f090097

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    const v6, 0x7f090098

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 218
    :goto_2
    iget-boolean v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z

    if-nez v6, :cond_1

    .line 219
    iput-boolean v7, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z

    .line 220
    const v6, 0x7f0900a3

    new-instance v7, Lcom/lge/quicksettings/handlers/GpsHandler$2;

    invoke-direct {v7, p0}, Lcom/lge/quicksettings/handlers/GpsHandler$2;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v6, 0x7f0900a2

    new-instance v7, Lcom/lge/quicksettings/handlers/GpsHandler$3;

    invoke-direct {v7, p0}, Lcom/lge/quicksettings/handlers/GpsHandler$3;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    new-instance v6, Lcom/lge/quicksettings/handlers/GpsHandler$4;

    invoke-direct {v6, p0}, Lcom/lge/quicksettings/handlers/GpsHandler$4;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v6}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 248
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 249
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 250
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 193
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_7
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_8

    .line 194
    const v6, 0x7f090099

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 195
    const v6, 0x7f09009a

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 196
    :cond_8
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_9

    .line 197
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 199
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03003e

    invoke-virtual {v4, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 200
    .local v5, inputView:Landroid/view/View;
    const v6, 0x7f090136

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 203
    const v6, 0x7f0c0122

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupCheckbox:Landroid/widget/CheckBox;

    .line 204
    iget-object v6, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupCheckbox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/lge/quicksettings/handlers/GpsHandler$1;

    invoke-direct {v8, p0}, Lcom/lge/quicksettings/handlers/GpsHandler$1;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 214
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #inputView:Landroid/view/View;
    :cond_9
    const v6, 0x7f09012c

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const v6, 0x7f090113

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 253
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_a
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z

    move-result v3

    .line 255
    .local v3, gpsEnable:Z
    iget-object v9, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "gps"

    if-nez v3, :cond_b

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 258
    if-nez v3, :cond_c

    .line 259
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 260
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    goto/16 :goto_1

    :cond_b
    move v6, v8

    .line 255
    goto :goto_3

    .line 262
    :cond_c
    invoke-virtual {p0, v14}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 263
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    goto/16 :goto_1

    .line 268
    .end local v3           #gpsEnable:Z
    :cond_d
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z

    move-result v3

    .line 270
    .restart local v3       #gpsEnable:Z
    iget-object v9, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "gps"

    if-nez v3, :cond_e

    move v6, v7

    :goto_4
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 273
    if-nez v3, :cond_f

    .line 274
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 275
    invoke-virtual {p0, v7}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    goto/16 :goto_1

    :cond_e
    move v6, v8

    .line 270
    goto :goto_4

    .line 277
    :cond_f
    invoke-virtual {p0, v14}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 278
    invoke-virtual {p0, v8}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick()Z
    .locals 2

    .prologue
    .line 90
    sget-boolean v0, Lcom/lge/quicksettings/handlers/GpsHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->onGPSButtonClick()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
    .locals 1
    .parameter "data"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/GpsHandler;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettings;->animateCollapse()V

    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 105
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    sget-boolean v0, Lcom/lge/quicksettings/handlers/GpsHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/lge/quicksettings/handlers/GpsHandler;->TAG:Ljava/lang/String;

    const-string v1, "setGPSButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->setButtonStatus(I)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->setTextColor(Z)V

    goto :goto_0
.end method
