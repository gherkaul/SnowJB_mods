.class public final Lcom/lge/lgdrm/DrmContentSession;
.super Ljava/lang/Object;
.source "DrmContentSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntSes"


# instance fields
.field private contentList:[Lcom/lge/lgdrm/DrmContent;

.field private context:Landroid/content/Context;

.field private defaultContent:Lcom/lge/lgdrm/DrmContent;

.field private nativeSession:I

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private selectedContent:Lcom/lge/lgdrm/DrmContent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 550
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .locals 0
    .parameter "content"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 564
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    .line 565
    return-void
.end method

.method private activateContent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "url"
    .parameter "resultReceiver"

    .prologue
    const/high16 v8, 0x1000

    const/16 v7, 0x9

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1524
    const/4 v3, 0x0

    .line 1526
    .local v3, lguDRM:Z
    invoke-virtual {p0, v5}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v1

    .line 1527
    .local v1, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v4

    .line 1531
    :cond_1
    if-nez p1, :cond_2

    iget v6, v1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v6, v7, :cond_0

    .line 1535
    :cond_2
    iget v6, v1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v6, v7, :cond_4

    .line 1536
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.lgdrm.action.DRM_LGU_ACTIVATION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1537
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1541
    const-string v4, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v6, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    const-string v4, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    const-string v4, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_3

    .line 1547
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1549
    :cond_3
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1551
    goto :goto_0

    .line 1554
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_5

    .line 1555
    const-string v6, "DrmCntSes"

    const-string v7, "Use activity context instead"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_5
    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v6

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 1565
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lge.lgdrm.action.DRM_ACTIVATION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .restart local v2       #intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1570
    const-string v4, "com.lge.lgdrm.extra.ACTIVATION_URL"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    const-string v4, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v6, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    const-string v4, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    const-string v4, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1574
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1576
    goto/16 :goto_0

    .line 1580
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .restart local v2       #intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1586
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1587
    const-string v6, "com.android.browser"

    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmContentSession;->isPackageExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1588
    const-string v6, "com.android.browser"

    const-string v7, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    :cond_7
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1593
    const-string v6, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v7, v1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    if-eqz p2, :cond_8

    .line 1597
    const-string v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, component:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1602
    const-string v4, "com.lge.lgdrm.extra.RECEIVER_NAME"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    .end local v0           #component:[Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1609
    goto/16 :goto_0
.end method

.method public static getDrmTimeStatus(I)Z
    .locals 4
    .parameter "agentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 888
    sget-boolean v3, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v3, :cond_0

    .line 897
    :goto_0
    return v2

    .line 892
    :cond_0
    if-lt p0, v1, :cond_1

    const/16 v3, 0x8

    if-le p0, v3, :cond_2

    .line 893
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid agentType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_2
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTimeStatus(I)I

    move-result v0

    .line 897
    .local v0, status:I
    if-nez v0, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private isPackageExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1613
    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1614
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 1623
    :goto_0
    return v2

    .line 1619
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1623
    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private native nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeConsumeRight(Ljava/lang/String;IIIJJ)I
.end method

.method private native nativeDestroySession(II)V
.end method

.method private native nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I
.end method

.method private static native nativeDrmOpen(Ljava/lang/String;II[B)I
.end method

.method private native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private native nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;
.end method

.method private native nativeGetDecryptionInfo(ILjava/lang/String;II)[B
.end method

.method private native nativeGetDrmTime()J
.end method

.method private static native nativeGetDrmTimeStatus(I)I
.end method

.method private native nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I
.end method

.method private native nativeIsSettingsAvailable(Ljava/lang/String;II)I
.end method

.method private native nativeJudgeRight(Ljava/lang/String;III)I
.end method

.method private native nativeSetDecryptionInfo(ZILjava/lang/String;II)I
.end method

.method private static native nativeSetDrmTime(IJ)I
.end method

.method private native nativeSyncDrmTime(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;
    .locals 4
    .parameter "filename"
    .parameter "decInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1322
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-object v1

    .line 1326
    :cond_1
    if-nez p0, :cond_2

    .line 1327
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1329
    :cond_2
    if-nez p1, :cond_3

    .line 1330
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter decInfo is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1333
    :cond_3
    invoke-static {p0, v3, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v0

    .line 1334
    .local v0, nativeHandle:I
    if-eqz v0, :cond_0

    .line 1338
    new-instance v1, Lcom/lge/lgdrm/DrmStream;

    invoke-direct {v1, p0, v0}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setDrmTime(IJ)I
    .locals 2
    .parameter "agentType"
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 983
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 984
    const/4 v0, -0x1

    .line 998
    :goto_0
    return v0

    .line 987
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/16 v0, 0x8

    if-le p0, v0, :cond_3

    .line 992
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid agentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDrmTime(IJ)I

    move-result v0

    goto :goto_0
.end method

.method private setNextRequest(IIILjava/lang/String;[B)I
    .locals 1
    .parameter "session"
    .parameter "requestType"
    .parameter "httpMethod"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 1643
    iput p1, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1646
    new-instance v0, Lcom/lge/lgdrm/DrmDldRequest;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmDldRequest;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1647
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-nez v0, :cond_0

    .line 1648
    const/4 v0, -0x1

    .line 1655
    :goto_0
    return v0

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p2, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    .line 1651
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput p3, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    .line 1652
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p4, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    .line 1653
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iput-object p5, v0, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    .line 1655
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDldClient(Lcom/lge/lgdrm/DrmContent;)I
    .locals 9
    .parameter "content"

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 1670
    iget v6, p1, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move v1, v3

    .line 1672
    .local v1, downloadAgent:I
    :goto_0
    new-instance v2, Lcom/lge/lgdrm/DrmObjectSession;

    iget-object v6, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    iget v7, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {v2, v1, v6, v7}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    .line 1673
    .local v2, session:Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v2, :cond_1

    .line 1674
    iget v6, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v6, v3}, Lcom/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1675
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1676
    iput-object v8, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    move v3, v4

    .line 1699
    :goto_1
    return v3

    .line 1670
    .end local v1           #downloadAgent:I
    .end local v2           #session:Lcom/lge/lgdrm/DrmObjectSession;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 1683
    .restart local v1       #downloadAgent:I
    .restart local v2       #session:Lcom/lge/lgdrm/DrmObjectSession;
    :cond_1
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient;

    iget-object v6, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v7, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v6, v7}, Lcom/lge/lgdrm/DrmDldClient;-><init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V

    .line 1684
    .local v0, dldClient:Lcom/lge/lgdrm/DrmDldClient;
    if-nez v0, :cond_2

    .line 1686
    iget v6, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    invoke-direct {p0, v6, v3}, Lcom/lge/lgdrm/DrmContentSession;->nativeDestroySession(II)V

    .line 1687
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1688
    iput-object v8, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    move v3, v4

    .line 1689
    goto :goto_1

    .line 1693
    :cond_2
    iput v5, p0, Lcom/lge/lgdrm/DrmContentSession;->nativeSession:I

    .line 1694
    iput-object v8, p0, Lcom/lge/lgdrm/DrmContentSession;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 1697
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmDldClient;->start()V

    move v3, v5

    .line 1699
    goto :goto_1
.end method


# virtual methods
.method public consumeRight(JJ)I
    .locals 10
    .parameter "startTime"
    .parameter "usedTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1152
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    cmp-long v1, p3, v2

    if-gez v1, :cond_1

    .line 1153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_1
    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    .line 1156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v9

    .line 1160
    .local v9, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v9, :cond_4

    .line 1161
    const/4 v0, -0x1

    .line 1173
    :cond_3
    :goto_0
    return v0

    .line 1164
    :cond_4
    iget v1, v9, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget v1, v9, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 1168
    iget v0, v9, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_5

    iget-boolean v0, v9, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_5

    .line 1170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_5
    iget-object v1, v9, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, v9, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v3, v9, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v4, v9, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/lge/lgdrm/DrmContentSession;->nativeConsumeRight(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_0
.end method

.method public destroySession()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public getContent(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContent;
    .locals 5
    .parameter "cid"

    .prologue
    const/4 v2, 0x0

    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter cid is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 628
    :cond_1
    :goto_0
    return-object v0

    .line 606
    :cond_2
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v3, v3, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    move-object v0, v2

    .line 607
    goto :goto_0

    .line 610
    :cond_3
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetIndexByCID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 611
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    move-object v0, v2

    .line 612
    goto :goto_0

    .line 619
    :cond_4
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v4, v4, Lcom/lge/lgdrm/DrmContent;->contentType:I

    invoke-direct {v0, v3, v1, v4}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 620
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_5

    move-object v0, v2

    .line 621
    goto :goto_0

    .line 624
    :cond_5
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v3, v3, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 625
    goto :goto_0
.end method

.method public getContentList()[Lcom/lge/lgdrm/DrmContent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 639
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 682
    :goto_0
    return-object v0

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v2

    new-array v0, v2, [Lcom/lge/lgdrm/DrmContent;

    .line 646
    .local v0, list:[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 648
    goto :goto_0

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 656
    .end local v0           #list:[Lcom/lge/lgdrm/DrmContent;
    :cond_2
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget v2, v2, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 657
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/lge/lgdrm/DrmContent;

    .line 658
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    move-object v0, v1

    .line 660
    goto :goto_0

    .line 662
    :cond_3
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v1, v0, v4

    goto :goto_0

    .line 667
    .end local v0           #list:[Lcom/lge/lgdrm/DrmContent;
    :cond_4
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    iget-object v2, v2, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetContentList(Ljava/lang/String;)[Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 668
    .restart local v0       #list:[Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_5

    move-object v0, v1

    .line 669
    goto :goto_0

    .line 672
    :cond_5
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    aput-object v2, v0, v4

    .line 674
    array-length v2, v0

    new-array v2, v2, [Lcom/lge/lgdrm/DrmContent;

    iput-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    .line 675
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    if-nez v2, :cond_6

    move-object v0, v1

    .line 676
    goto :goto_0

    .line 680
    :cond_6
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->contentList:[Lcom/lge/lgdrm/DrmContent;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getDecryptionInfo()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1356
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need proper permission to access drm"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1359
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1360
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1

    .line 1361
    const/4 v1, 0x0

    .line 1369
    :goto_0
    return-object v1

    .line 1364
    :cond_1
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v1, :cond_2

    .line 1366
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_2
    iget v1, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v2, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDecryptionInfo(ILjava/lang/String;II)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getDrmTime()J
    .locals 2

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetDrmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRightList(I)[Lcom/lge/lgdrm/DrmRight;
    .locals 2
    .parameter "permission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rights selection is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;
    .locals 2
    .parameter "defaults"

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, temp:Lcom/lge/lgdrm/DrmContent;
    if-eqz p1, :cond_0

    .line 734
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    .line 743
    :goto_0
    return-object v0

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v1, :cond_1

    .line 737
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    goto :goto_0
.end method

.method public getSelectedRight(Z)Lcom/lge/lgdrm/DrmRight;
    .locals 8
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 841
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_1

    move-object v1, v7

    .line 860
    :cond_0
    :goto_0
    return-object v1

    .line 845
    :cond_1
    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2

    .line 847
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Select Right first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_2
    new-instance v1, Lcom/lge/lgdrm/DrmRight;

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-direct {v1, v6, v0}, Lcom/lge/lgdrm/DrmRight;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    .line 851
    .local v1, right:Lcom/lge/lgdrm/DrmRight;
    if-nez v1, :cond_3

    move-object v1, v7

    .line 852
    goto :goto_0

    .line 855
    :cond_3
    iget-object v2, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->permisson:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeGetRightInfo(Lcom/lge/lgdrm/DrmRight;Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v7

    .line 857
    goto :goto_0
.end method

.method public isActionSupported(I)Z
    .locals 8
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1195
    const/4 v1, -0x1

    .line 1198
    .local v1, retVal:I
    if-lt p1, v3, :cond_0

    const/16 v4, 0x8

    if-le p1, v4, :cond_1

    .line 1199
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid action"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1202
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1203
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    .line 1270
    :cond_2
    :goto_0
    :pswitch_0
    return v2

    .line 1207
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 1266
    :cond_4
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    move v2, v3

    .line 1270
    goto :goto_0

    .line 1209
    :pswitch_1
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v7, :cond_6

    .line 1211
    :cond_5
    const/4 v1, -0x1

    goto :goto_1

    .line 1212
    :cond_6
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 1214
    const/4 v1, 0x0

    goto :goto_1

    .line 1221
    :pswitch_2
    iget-object v4, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v4, v5, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeIsSettingsAvailable(Ljava/lang/String;II)I

    move-result v1

    .line 1222
    if-nez v1, :cond_4

    .line 1223
    if-eq p1, v6, :cond_7

    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 1224
    :cond_7
    iput v3, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1228
    :cond_8
    :goto_2
    iput-boolean v3, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    goto :goto_1

    .line 1225
    :cond_9
    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    .line 1226
    iput v6, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    goto :goto_2

    .line 1233
    :pswitch_3
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v4, v3, :cond_a

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v4, v6, :cond_a

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v7, :cond_d

    .line 1236
    :cond_a
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v3, :cond_c

    .line 1237
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v5, 0x300

    if-eq v4, v5, :cond_b

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v5, 0x301

    if-ne v4, v5, :cond_4

    .line 1239
    :cond_b
    const/4 v1, 0x0

    goto :goto_1

    .line 1242
    :cond_c
    const/4 v1, 0x0

    goto :goto_1

    .line 1244
    :cond_d
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_e

    .line 1245
    const/4 v1, 0x0

    goto :goto_1

    .line 1246
    :cond_e
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 1247
    const/4 v1, -0x1

    goto :goto_1

    .line 1252
    :pswitch_4
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v4, v3, :cond_4

    .line 1253
    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    const/16 v5, 0x51

    if-eq v4, v5, :cond_f

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    .line 1255
    :cond_f
    const/4 v1, 0x0

    goto :goto_1

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public isValidSession()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public judgeRight(IZ)I
    .locals 5
    .parameter "permission"
    .parameter "checkPreviewURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1091
    const/4 v1, 0x0

    .line 1094
    .local v1, preview:I
    if-lt p1, v2, :cond_0

    const/16 v3, 0x80

    if-le p1, v3, :cond_1

    .line 1095
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid permission"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1098
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1099
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    .line 1100
    const/4 v2, -0x1

    .line 1116
    :cond_2
    :goto_0
    return v2

    .line 1103
    :cond_3
    if-eqz p2, :cond_4

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1108
    :cond_4
    if-nez p2, :cond_5

    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    if-ne v3, v2, :cond_6

    .line 1109
    :cond_5
    const/4 v1, 0x1

    .line 1112
    :cond_6
    iput p1, v0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 1113
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v4, v1, p1}, Lcom/lge/lgdrm/DrmContentSession;->nativeJudgeRight(Ljava/lang/String;III)I

    move-result v2

    .line 1114
    .local v2, retVal:I
    iput v2, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    goto :goto_0
.end method

.method public obtainNewRight(ILandroid/content/ComponentName;)I
    .locals 7
    .parameter "type"
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1429
    const/4 v2, 0x0

    .line 1433
    .local v2, retVal:I
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1434
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Rights renewal is not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1436
    :cond_0
    if-nez p2, :cond_1

    .line 1437
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Parameter resultReceiver is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1439
    :cond_1
    iget-object v5, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 1440
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1443
    :cond_2
    invoke-virtual {p0, v4}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1444
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_3

    move v3, v4

    .line 1474
    :goto_0
    return v3

    .line 1448
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, intentReceiver:Ljava/lang/String;
    if-nez v1, :cond_4

    move v3, v4

    .line 1450
    goto :goto_0

    .line 1453
    :cond_4
    if-ne p1, v3, :cond_7

    .line 1454
    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_6

    .line 1455
    const/4 v5, 0x0

    invoke-direct {p0, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->activateContent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1456
    if-nez v2, :cond_5

    move v2, v3

    .line 1470
    :cond_5
    :goto_1
    if-gtz v2, :cond_8

    move v3, v4

    .line 1471
    goto :goto_0

    .line 1458
    :cond_6
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v5, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v6, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v3, v5, v6, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeActivateContent(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 1460
    :cond_7
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 1461
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, p1, v3, v5, v1}, Lcom/lge/lgdrm/DrmContentSession;->nativeDoRoap(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1462
    if-lez v2, :cond_5

    .line 1464
    const/4 v3, -0x1

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->startDldClient(Lcom/lge/lgdrm/DrmContent;)I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 1465
    const/4 v2, -0x1

    goto :goto_1

    :cond_8
    move v3, v2

    .line 1474
    goto :goto_0
.end method

.method public openDrmStream()Lcom/lge/lgdrm/DrmStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1287
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1288
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1291
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1292
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2

    .line 1306
    :cond_1
    :goto_0
    return-object v2

    .line 1296
    :cond_2
    iget v3, v0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_3

    iget-boolean v3, v0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v3, :cond_3

    .line 1298
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Select Right first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1301
    :cond_3
    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {v3, v4, v5, v2}, Lcom/lge/lgdrm/DrmContentSession;->nativeDrmOpen(Ljava/lang/String;II[B)I

    move-result v1

    .line 1302
    .local v1, nativeHandle:I
    if-eqz v1, :cond_1

    .line 1306
    new-instance v2, Lcom/lge/lgdrm/DrmStream;

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/lge/lgdrm/DrmStream;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public selectContent(Lcom/lge/lgdrm/DrmContent;)I
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 704
    if-nez p1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter content is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    if-nez v0, :cond_1

    .line 709
    const/4 v0, -0x1

    .line 718
    :goto_0
    return v0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentSession;->defaultContent:Lcom/lge/lgdrm/DrmContent;

    invoke-virtual {v0, p1}, Lcom/lge/lgdrm/DrmContent;->isSibling(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid content to this session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_2
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentSession;->selectedContent:Lcom/lge/lgdrm/DrmContent;

    .line 718
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectRight(Lcom/lge/lgdrm/DrmRight;)I
    .locals 3
    .parameter "right"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter right is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 804
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_1

    .line 805
    const/4 v1, -0x1

    return v1

    .line 808
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lge/lgdrm/DrmRight;->isMatched(Lcom/lge/lgdrm/DrmContent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid right to this session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights selection is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDecryptionInfo(Z)I
    .locals 7
    .parameter "reset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v6

    .line 1390
    .local v6, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v6, :cond_0

    .line 1391
    const/4 v0, -0x1

    .line 1405
    :goto_0
    return v0

    .line 1394
    :cond_0
    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_1

    .line 1395
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1396
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_1
    if-nez p1, :cond_2

    iget v0, v6, Lcom/lge/lgdrm/DrmContent;->rightState:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    iget-boolean v0, v6, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    if-nez v0, :cond_2

    .line 1402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Select Right first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_2
    iget v2, v6, Lcom/lge/lgdrm/DrmContent;->agentType:I

    iget-object v3, v6, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v4, v6, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v5, v6, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lge/lgdrm/DrmContentSession;->nativeSetDecryptionInfo(ZILjava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public syncDrmTime(Landroid/content/ComponentName;)I
    .locals 5
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 922
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Need proper permission to access drm"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 926
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 927
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Time sync is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_1
    if-nez p1, :cond_2

    .line 930
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameter resultReceiver is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 932
    :cond_2
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v3, :cond_3

    .line 933
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_3
    iget-object v3, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_5

    .line 937
    const-string v3, "DrmCntSes"

    const-string v4, "Use activity context instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_4
    :goto_0
    return v2

    .line 942
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.lgdrm.action.DRM_SYNC_TIME"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 947
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 948
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_4

    .line 952
    const-string v2, "com.lge.lgdrm.extra.FILE_NAME"

    iget-object v3, v0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    const-string v2, "com.lge.lgdrm.extra.CONTENT_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    const-string v2, "com.lge.lgdrm.extra.DRM_TYPE"

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getDrmContentType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 957
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public uploadRight(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "resultReceiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1495
    if-nez p1, :cond_0

    .line 1496
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter resultReceiver is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1498
    :cond_0
    iget-object v1, p0, Lcom/lge/lgdrm/DrmContentSession;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1499
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 1503
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-nez v0, :cond_2

    .line 1504
    return v2

    .line 1507
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Rights upload is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
