.class public Lcom/lge/systemui/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/RepeatingImageButton$RepeatListener;
    }
.end annotation


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mInterval:J

.field private mListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/systemui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/systemui/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/lge/systemui/RepeatingImageButton;->mInterval:J

    .line 89
    new-instance v1, Lcom/lge/systemui/RepeatingImageButton$1;

    invoke-direct {v1, p0}, Lcom/lge/systemui/RepeatingImageButton$1;-><init>(Lcom/lge/systemui/RepeatingImageButton;)V

    iput-object v1, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {p0, v3}, Lcom/lge/systemui/RepeatingImageButton;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/lge/systemui/RepeatingImageButton;->setLongClickable(Z)V

    .line 52
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 53
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "MusicController-RepeatingImageButton"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    sget-object v1, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/systemui/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/systemui/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 100
    .local v0, now:J
    iget-object v2, p0, Lcom/lge/systemui/RepeatingImageButton;->mListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 101
    iget-object v3, p0, Lcom/lge/systemui/RepeatingImageButton;->mListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/lge/systemui/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/lge/systemui/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 102
    if-eqz p1, :cond_2

    .line 104
    sget-object v2, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 101
    :cond_1
    iget v2, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0

    .line 109
    :cond_2
    sget-object v2, Lcom/lge/systemui/RepeatingImageButton;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/systemui/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 81
    iget-wide v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0, v2}, Lcom/lge/systemui/RepeatingImageButton;->doRepeat(Z)V

    .line 83
    iput-wide v3, p0, Lcom/lge/systemui/RepeatingImageButton;->mStartTime:J

    .line 86
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mStartTime:J

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeatCount:I

    .line 72
    iget-object v0, p0, Lcom/lge/systemui/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/systemui/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/lge/systemui/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/systemui/RepeatingImageButton;->mListener:Lcom/lge/systemui/RepeatingImageButton$RepeatListener;

    .line 65
    iput-wide p2, p0, Lcom/lge/systemui/RepeatingImageButton;->mInterval:J

    .line 66
    return-void
.end method
