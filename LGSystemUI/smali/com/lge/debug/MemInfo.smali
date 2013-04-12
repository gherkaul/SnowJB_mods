.class public Lcom/lge/debug/MemInfo;
.super Ljava/lang/Object;
.source "MemInfo.java"

# interfaces
.implements Lcom/lge/debug/IDebugDisplay;


# instance fields
.field private final MAX_APPLICATION_NUM:I

.field private mstrAppAlloc:[Ljava/lang/String;

.field private mstrAppName:[Ljava/lang/String;

.field private mstrAppSize:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x14

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/lge/debug/MemInfo;->MAX_APPLICATION_NUM:I

    .line 33
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/debug/MemInfo;->mstrAppName:[Ljava/lang/String;

    .line 34
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/debug/MemInfo;->mstrAppSize:[Ljava/lang/String;

    .line 35
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/debug/MemInfo;->mstrAppAlloc:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public display(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "context"
    .parameter "canvas"
    .parameter "rect"

    .prologue
    .line 41
    sget v6, Lcom/lge/debug/DebugDisplay_Svc;->mStatusBarHeight:I

    .line 58
    .local v6, nHeight:I
    const/high16 v0, 0x4980

    .line 59
    .local v0, MEGABYTE:F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v3, v8, v0

    .line 60
    .local v3, freeMemory:F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v7, v8, v0

    .line 61
    .local v7, totalMemory:F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v5, v8, v0

    .line 63
    .local v5, maxMemory:F
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v2, v8, v0

    .line 64
    .local v2, free:F
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v1, v8, v0

    .line 65
    .local v1, alloc:F
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v8

    long-to-float v8, v8

    div-float v4, v8, v0

    .line 67
    .local v4, heap:F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VM freeMemory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 68
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VM totalMemory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 70
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VM maxMemory : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 72
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "native free : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 75
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "native alloc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 77
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "native heap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p3, Landroid/graphics/Rect;->left:I

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    invoke-static {v8, v9, v10, p2}, Lcom/lge/systemui/Utils;->writeStr(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 79
    sget v8, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 80
    return-void
.end method

.method public log()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
