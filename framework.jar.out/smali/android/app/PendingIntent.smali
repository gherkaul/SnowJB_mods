.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 690
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 731
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 733
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 735
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 736
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 737
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, packageName:Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 329
    .local v7, resolvedTypes:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, p2

    if-ge v10, v0, :cond_0

    .line 330
    aget-object v0, p2, v10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 331
    aget-object v0, p2, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    .line 329
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 334
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 338
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 338
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 339
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 225
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v7, v5

    :goto_1
    move v5, p1

    move v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 231
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 221
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 225
    .restart local v10       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 231
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 233
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 235
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 232
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 370
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v7, v5

    :goto_1
    const/4 v9, 0x0

    move v5, p1

    move v8, p3

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 376
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 366
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 370
    .restart local v10       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 376
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 377
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 379
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 408
    .local v10, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 409
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v7, v5

    :goto_1
    const/4 v9, 0x0

    move v5, p1

    move v8, p3

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 415
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 405
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 409
    .restart local v10       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 415
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 416
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 418
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "in"

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 728
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 1
    .parameter "sender"
    .parameter "out"

    .prologue
    .line 712
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 714
    return-void

    .line 712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "otherObj"

    .prologue
    .line 659
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 663
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    .line 614
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActivity()Z
    .locals 3

    .prologue
    .line 640
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 644
    :goto_0
    return v1

    .line 642
    :catch_0
    move-exception v0

    .line 644
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTargetedToPackage()Z
    .locals 3

    .prologue
    .line 626
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 630
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public send()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 451
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public send(I)V
    .locals 7
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 465
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "code"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 506
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 485
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .parameter "requiredPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 585
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, resolvedType:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p4, :cond_0

    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I

    move-result v7

    .line 593
    .local v7, res:I
    if-gez v7, :cond_2

    .line 594
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v3           #resolvedType:Ljava/lang/String;
    .end local v7           #res:I
    :catch_0
    move-exception v6

    .line 597
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0, v6}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v3, v4

    .line 585
    goto :goto_0

    .line 599
    .restart local v3       #resolvedType:Ljava/lang/String;
    .restart local v7       #res:I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 674
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 678
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 677
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 687
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 688
    return-void
.end method
