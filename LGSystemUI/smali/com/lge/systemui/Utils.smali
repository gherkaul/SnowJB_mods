.class public Lcom/lge/systemui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Lcom/lge/systemui/LGPhoneStatusBar;)V
    .locals 0
    .parameter "lgPhoneStatusBar"

    .prologue
    .line 47
    sput-object p0, Lcom/lge/systemui/Utils;->sLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    .line 48
    return-void
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strPackageName"

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 100
    .local v1, nStrLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 101
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 104
    :cond_0
    sub-int v2, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 167
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 168
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLockStatus()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, lockStatus:I
    const-string v1, "service.keyguard.status"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    return v0
.end method

.method public static getRecnetPanelNum()I
    .locals 5

    .prologue
    .line 155
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 156
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 158
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x20000000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/16 v1, 0x8

    .line 159
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x14

    goto :goto_0
.end method

.method public static getResolution(Landroid/content/Context;)F
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCurrentActivityOnTop(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "activityName"

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 61
    const-string v3, "Utils"

    const-string v5, "isCurrentActivityOnTop(): activityManager is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 77
    :goto_0
    return v3

    .line 65
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, task:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_1

    .line 67
    const-string v3, "Utils"

    const-string v5, "isCurrentActivityOnTop(): task is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 72
    .local v1, currentActivity:Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 73
    const-string v3, "Utils"

    const-string v5, "isCurrentActivityOnTop(): currentActivity is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public static isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 129
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVTActive()Z
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 89
    :cond_0
    const-string v1, "net.ims.vt.incall"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, result:Ljava/lang/String;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLTEVTActive() result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 1
    .parameter "context"
    .parameter "strText"
    .parameter "gravity"
    .parameter "delayMillis"

    .prologue
    .line 55
    sget-object v0, Lcom/lge/systemui/Utils;->sLGPhoneStatusBar:Lcom/lge/systemui/LGPhoneStatusBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/systemui/LGPhoneStatusBar;->showToast(Ljava/lang/String;IJ)V

    .line 56
    return-void
.end method

.method public static writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4
    .parameter "strText"
    .parameter "x"
    .parameter "y"
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .local v0, paintPen1:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .local v1, paintPen2:Landroid/graphics/Paint;
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    sget v2, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    sget v2, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, p2, -0x1

    int-to-float v3, v3

    invoke-virtual {p3, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    invoke-virtual {p3, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 121
    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, p2, -0x1

    int-to-float v3, v3

    invoke-virtual {p3, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    invoke-virtual {p3, p0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {p3, p0, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method
