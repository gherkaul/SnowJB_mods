.class Lcom/android/server/LGSDEncService;
.super Landroid/app/ILGSDEnc$Stub;
.source "LGSDEncService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LGSDEncService$VoldResponseCode;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = false

.field private static final ENCRYPTION_WARNING_MSG:Ljava/lang/String; = "com.android.settings.EncryptWarningDialogActivity"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final OTHER_DEVICE_MSG:Ljava/lang/String; = "com.android.settings.OtherDeviceDialogActivity"

.field private static final TAG:Ljava/lang/String; = "LGSDEncService"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector2"


# instance fields
.field WarningDialogHandler:Landroid/os/Handler;

.field private isSDcardEncryption:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field mountService:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/ILGSDEnc$Stub;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LGSDEncService;->isSDcardEncryption:Z

    .line 42
    new-instance v0, Lcom/android/server/LGSDEncService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LGSDEncService$1;-><init>(Lcom/android/server/LGSDEncService;)V

    iput-object v0, p0, Lcom/android/server/LGSDEncService;->WarningDialogHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LGSDEncService;->mVolumes:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/android/server/LGSDEncService;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/server/LGSDEncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x206000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LGSDEncService;->isSDcardEncryption:Z

    .line 96
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector2"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/LGSDEncService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 97
    new-instance v6, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/LGSDEncService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector2"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LGSDEncService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/LGSDEncService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public MDMStorageEncryptionStatus()Z
    .locals 5

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, intPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 183
    .local v0, extPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 186
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    const-string v3, "persist.sdcrypto.enabled"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const/4 v2, 0x1

    .line 205
    :cond_0
    :goto_0
    return v2

    .line 202
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public StorageEncryptionStatus()I
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, ret:I
    const-string v1, "persist.insdcrypto.enabled"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    or-int/lit8 v0, v0, 0x1

    .line 174
    :goto_0
    const-string v1, "persist.sdcrypto.enabled"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    or-int/lit8 v0, v0, 0x4

    .line 177
    :cond_0
    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, intPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 228
    .local v1, extPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 230
    .local v3, ret:I
    iget-object v4, p0, Lcom/android/server/LGSDEncService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the SD Encryption"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v4, "internalStorage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getInternalSDCardMountPath()Ljava/lang/String;

    move-result-object v2

    .line 247
    :goto_0
    if-eqz v2, :cond_0

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LGSDEncService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "sdcryptfs"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 257
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LGSDEncService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "sdcryptfs"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :cond_1
    :goto_2
    const-string v4, "LGSDEncService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdcryptfs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 264
    :goto_3
    return v4

    .line 235
    :cond_2
    const-string v4, "externalStorage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 237
    :cond_3
    const-string v4, "AllStorage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getInternalSDCardMountPath()Ljava/lang/String;

    move-result-object v2

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getExternalSDCardMountPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 243
    :cond_5
    const-string v4, "LGSDEncService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Wrong path name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v4, -0x1

    goto :goto_3

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    goto :goto_1

    .line 258
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0       #e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    goto :goto_2
.end method

.method public externalSDCardDisableEncryption(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 213
    const-string v0, "disablecrypto"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LGSDEncService;->doCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public externalSDCardEnableEncryption(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 209
    const-string v0, "enablecrypto"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LGSDEncService;->doCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public externalSDCardMountComplete(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 217
    const-string v0, "complete"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LGSDEncService;->doCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExternalSDCardMountPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 150
    .local v4, mVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v4

    .line 152
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 153
    aget-object v3, v4, v1

    .line 154
    .local v3, mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 155
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 162
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mStorageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #mVolumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    return-object v5

    .line 152
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #mStorageVolume:Landroid/os/storage/StorageVolume;
    .restart local v4       #mVolumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mStorageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #mVolumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LGSDEncService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExternalSDCardMountPath...exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getInternalSDCardMountPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/LGSDEncService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 129
    .local v4, mVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v4

    .line 131
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    aget-object v3, v4, v1

    .line 133
    .local v3, mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 141
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mStorageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #mVolumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    return-object v5

    .line 131
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #mStorageVolume:Landroid/os/storage/StorageVolume;
    .restart local v4       #mVolumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mStorageVolume:Landroid/os/storage/StorageVolume;
    .end local v4           #mVolumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LGSDEncService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInternalSDCardMountPath...exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSDEncSupportStatus()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/LGSDEncService;->isSDcardEncryption:Z

    return v0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 102
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 103
    .local v5, service:Landroid/os/IBinder;
    if-nez v5, :cond_1

    .line 104
    const-string v6, "LGSDEncService"

    const-string v8, "getInternalSDCardMountPath...service null"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 119
    :cond_0
    :goto_0
    return-object v4

    .line 107
    :cond_1
    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/LGSDEncService;->mountService:Landroid/os/storage/IMountService;

    .line 109
    :try_start_0
    iget-object v6, p0, Lcom/android/server/LGSDEncService;->mountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v3

    .line 110
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_2

    const/4 v6, 0x0

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 111
    :cond_2
    array-length v2, v3

    .line 112
    .local v2, length:I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 113
    .local v4, result:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 114
    aget-object v6, v3, v1

    check-cast v6, Landroid/os/storage/StorageVolume;

    aput-object v6, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v4           #result:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "LGSDEncService"

    const-string v8, "Failed to get volume list"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v7

    .line 119
    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x28a

    if-ne p1, v1, :cond_0

    .line 77
    const-string v1, "LGSDEncService"

    const-string v2, "SDCryptNewSDCardInserted"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "com.android.settings.EncryptWarningDialogActivity"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/android/server/LGSDEncService;->WarningDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    :cond_0
    const/16 v1, 0x28b

    if-ne p1, v1, :cond_1

    .line 83
    const-string v1, "LGSDEncService"

    const-string v2, "SDCryptOtherDeviceEnCrypted"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "com.android.settings.OtherDeviceDialogActivity"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/android/server/LGSDEncService;->WarningDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
