.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11Real3DExt;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field private mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 3
    .parameter "egl"
    .parameter "configFlags"
    .parameter "log"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 50
    check-cast v0, Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    iput-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    .line 52
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .end local p1
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 53
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 54
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 56
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 58
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v1, v2

    .line 56
    goto :goto_1
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 487
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 491
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 464
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 465
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 470
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 505
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    .line 506
    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 495
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 496
    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 497
    :cond_0
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_1

    .line 498
    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 513
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_0

    .line 514
    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 546
    if-nez p2, :cond_0

    .line 547
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    .line 461
    return-void
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 437
    iget-object v2, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, eglError:I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 440
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    if-eqz v2, :cond_0

    .line 441
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 444
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private end()V
    .locals 1

    .prologue
    .line 474
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 476
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .parameter "error"

    .prologue
    .line 602
    packed-switch p0, :pswitch_data_0

    .line 634
    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 604
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 606
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 608
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 610
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 612
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 614
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 616
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 618
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 620
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 622
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 624
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 626
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 628
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 630
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 632
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private returns(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 523
    return-void
.end method

.method private returns(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 530
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    array-length v0, p2

    .line 565
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 566
    add-int v3, p3, v2

    .line 567
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 569
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_1
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    array-length v0, p2

    .line 583
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 584
    add-int v3, p3, v2

    .line 585
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 587
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 593
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    const-string/jumbo v0, "null"

    .line 541
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7
    .parameter "display"
    .parameter "attrib_list"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 62
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 63
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 64
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 65
    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 66
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 68
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    .line 70
    .local v6, result:Z
    const-string v0, "configs"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string/jumbo v0, "num_config"

    invoke-direct {p0, v0, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 72
    invoke-direct {p0, v6}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 73
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 74
    return v6
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "native_pixmap"

    .prologue
    .line 79
    const-string v1, "eglCopyBuffers"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 80
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 81
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 82
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 85
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    .line 86
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 87
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 88
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "share_context"
    .parameter "attrib_list"

    .prologue
    .line 93
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 94
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 95
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v1, "share_context"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 97
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 98
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 100
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 102
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 104
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attrib_list"

    .prologue
    .line 109
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 110
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 111
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 113
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 115
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 117
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 119
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_pixmap"
    .parameter "attrib_list"

    .prologue
    .line 124
    const-string v1, "eglCreatePixmapSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 125
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 126
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 129
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 131
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 133
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 135
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_window"
    .parameter "attrib_list"

    .prologue
    .line 140
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 141
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 142
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string/jumbo v1, "native_window"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 145
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 147
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 149
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 151
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "context"

    .prologue
    .line 155
    const-string v1, "eglDestroyContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 156
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 157
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 158
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 160
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 161
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 162
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 163
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 167
    const-string v1, "eglDestroySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 168
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 169
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 170
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 172
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 173
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 174
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 175
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 180
    const-string v1, "eglGetConfigAttrib"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 181
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 182
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 184
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 185
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 187
    .local v0, result:Z
    const-string/jumbo v1, "value"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 188
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 189
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 190
    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 195
    const-string v1, "eglGetConfigs"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 196
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 197
    const-string v1, "config_size"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 198
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 200
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 202
    .local v0, result:Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    const-string/jumbo v1, "num_config"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 204
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 205
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 206
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 210
    const-string v1, "eglGetCurrentContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 213
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 214
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 217
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    .prologue
    .line 221
    const-string v1, "eglGetCurrentDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 224
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 225
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 227
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 228
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "readdraw"

    .prologue
    .line 232
    const-string v1, "eglGetCurrentSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 233
    const-string/jumbo v1, "readdraw"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 234
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 236
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 237
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 240
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .parameter "native_display"

    .prologue
    .line 244
    const-string v1, "eglGetDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "native_display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 248
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 249
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 252
    return-object v0
.end method

.method public eglGetError()I
    .locals 2

    .prologue
    .line 256
    const-string v1, "eglGetError"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 259
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 260
    .local v0, result:I
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 262
    return v0
.end method

.method public eglGetReal3DConvertMode()Z
    .locals 2

    .prologue
    .line 426
    const-string v1, "eglGetReal3DConvertMode"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 428
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglGetReal3DConvertMode()Z

    move-result v0

    .line 429
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 430
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 431
    return v0
.end method

.method public eglGetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)Landroid/opengl/EGLReal3DProfile;
    .locals 2
    .parameter "profile"

    .prologue
    .line 395
    const-string v1, "eglGetReal3DProfile"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v1, "profile"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 398
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglGetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)Landroid/opengl/EGLReal3DProfile;

    move-result-object v0

    .line 399
    .local v0, result:Landroid/opengl/EGLReal3DProfile;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 400
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 401
    return-object v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 2
    .parameter "display"
    .parameter "major_minor"

    .prologue
    .line 266
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 267
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 268
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 269
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    .line 270
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 271
    const-string/jumbo v1, "major_minor"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 272
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 273
    return v0
.end method

.method public eglIsEnableReal3DProfile()Z
    .locals 2

    .prologue
    .line 406
    const-string v1, "eglIsEnableReal3DProfile"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 408
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglIsEnableReal3DProfile()Z

    move-result v0

    .line 409
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 410
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 411
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "draw"
    .parameter "read"
    .parameter "context"

    .prologue
    .line 278
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 279
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 280
    const-string v1, "draw"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 281
    const-string/jumbo v1, "read"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 282
    const-string v1, "context"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 283
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 284
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 285
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 286
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 287
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "context"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 292
    const-string v1, "eglQueryContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 293
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 294
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 295
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 296
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 297
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    .line 299
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 300
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 301
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 302
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 2
    .parameter "display"
    .parameter "name"

    .prologue
    .line 306
    const-string v1, "eglQueryString"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 307
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 308
    const-string/jumbo v1, "name"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 309
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 310
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 313
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 318
    const-string v1, "eglQuerySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 319
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 320
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 321
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 322
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 323
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    .line 325
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 326
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 327
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 328
    return v0
.end method

.method public eglReleaseThread()Z
    .locals 2

    .prologue
    .line 333
    const-string v1, "eglReleaseThread"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 335
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglReleaseThread()Z

    move-result v0

    .line 336
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 337
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 338
    return v0
.end method

.method public eglSetReal3DConvertMode(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    .line 416
    const-string v0, "eglSetReal3DConvertMode"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 417
    const-string v0, "isOn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 419
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglSetReal3DConvertMode(Z)V

    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 421
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 422
    return-void
.end method

.method public eglSetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 385
    const-string v0, "eglSetReal3DProfile"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v0, "profile"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 388
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl11Real3DExt:Ljavax/microedition/khronos/egl/EGL11Real3DExt;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL11Real3DExt;->eglSetReal3DProfile(Landroid/opengl/EGLReal3DProfile;)V

    .line 389
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 390
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 391
    return-void
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 342
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 343
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 344
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 345
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 346
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 347
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 348
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 349
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 2
    .parameter "display"

    .prologue
    .line 353
    const-string v1, "eglTerminate"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 354
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 355
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 356
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    .line 357
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 358
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 359
    return v0
.end method

.method public eglWaitGL()Z
    .locals 2

    .prologue
    .line 363
    const-string v1, "eglWaitGL"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 365
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 366
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 367
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 368
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 2
    .parameter "engine"
    .parameter "bindTarget"

    .prologue
    .line 372
    const-string v1, "eglWaitNative"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 373
    const-string v1, "engine"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 374
    const-string v1, "bindTarget"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 376
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    .line 377
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 378
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 379
    return v0
.end method
