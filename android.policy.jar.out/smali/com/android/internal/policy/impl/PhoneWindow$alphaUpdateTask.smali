.class Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;
.super Ljava/util/TimerTask;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "alphaUpdateTask"
.end annotation


# instance fields
.field am:Landroid/app/ActivityManager;

.field private mEnd:I

.field private mStart:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 2
    .parameter

    .prologue
    .line 4527
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4530
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->am:Landroid/app/ActivityManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4527
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4533
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isThereTopOverlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4534
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mEnd:I

    if-ge v1, v2, :cond_1

    .line 4535
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    .line 4536
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4537
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4538
    const-string v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[alphaUpdateTimer] mStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4539
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->binChangingOpacity:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3702(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 4544
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->binChangingOpacity:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4545
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->quitUpdatAlphaTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 4548
    :cond_0
    return-void

    .line 4541
    :cond_1
    const-string v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[alphaUpdateTimer] else mStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->binChangingOpacity:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3702(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    goto :goto_0
.end method

.method public setRange(III)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "overlayAlphaValue"

    .prologue
    .line 4551
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mStart:I

    .line 4552
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$alphaUpdateTask;->mEnd:I

    .line 4553
    return-void
.end method
