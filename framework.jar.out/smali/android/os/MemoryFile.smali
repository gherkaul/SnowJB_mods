.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$1;,
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:I

.field private mAllowPurging:Z

.field private mFD:Ljava/io/FileDescriptor;

.field private mLength:I

.field private mOwnsRegion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;II)V
    .locals 4
    .parameter "fd"
    .parameter "length"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v3, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 62
    iput-boolean v1, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File descriptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-static {p1}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a memory file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput-object p1, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    .line 109
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 110
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    .line 111
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DK] MemoryFile...mAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/MemoryFile;->mAddress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean v3, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    .line 73
    iput p2, p0, Landroid/os/MemoryFile;->mLength:I

    .line 74
    invoke-static {p1, p2}, Landroid/os/MemoryFile;->native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    .line 75
    if-lez p2, :cond_0

    .line 76
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    const/4 v1, 0x3

    invoke-static {v0, p2, v1}, Landroid/os/MemoryFile;->native_mmap(Ljava/io/FileDescriptor;II)I

    move-result v0

    iput v0, p0, Landroid/os/MemoryFile;->mAddress:I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/os/MemoryFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeactivated()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/os/MemoryFile;->mAddress:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMemoryFile(Ljava/io/FileDescriptor;)Z
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_munmap(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .parameter "allowPurging"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/MemoryFile;->mOwnsRegion:Z

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Only the owner can make ashmem regions purgable."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 210
    .local v0, oldValue:Z
    if-eq v0, p1, :cond_1

    .line 211
    iget-object v2, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)V

    .line 212
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_1
    monitor-exit p0

    return v0

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 133
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    .line 136
    :cond_0
    return-void
.end method

.method deactivate()V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :try_start_0
    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget v2, p0, Landroid/os/MemoryFile;->mLength:I

    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_munmap(II)V

    .line 149
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MemoryFile;->mAddress:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Ljava/io/IOException;
    sget-object v1, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/os/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    const-string v1, "MemoryFile.finalize() called while ashmem still open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Landroid/os/MemoryFile;->close()V

    .line 176
    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    return v0
.end method

.method public readBytes([BIII)I
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read from deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p2

    if-le p4, v0, :cond_2

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 257
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_read(Ljava/io/FileDescriptor;I[BIIIZ)I

    move-result v0

    return v0
.end method

.method public writeBytes([BIII)V
    .locals 7
    .parameter "buffer"
    .parameter "srcOffset"
    .parameter "destOffset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/os/MemoryFile;->isDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write to deactivated memory file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p4, v0, :cond_1

    if-ltz p3, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    if-gt p3, v0, :cond_1

    iget v0, p0, Landroid/os/MemoryFile;->mLength:I

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_2

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 281
    :cond_2
    iget-object v0, p0, Landroid/os/MemoryFile;->mFD:Ljava/io/FileDescriptor;

    iget v1, p0, Landroid/os/MemoryFile;->mAddress:I

    iget-boolean v6, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/MemoryFile;->native_write(Ljava/io/FileDescriptor;I[BIIIZ)V

    .line 282
    return-void
.end method
