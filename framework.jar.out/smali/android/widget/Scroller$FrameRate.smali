.class Landroid/widget/Scroller$FrameRate;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameRate"
.end annotation


# instance fields
.field public extraTime:I

.field public frameCount:I

.field public frameTotalCount:I

.field final synthetic this$0:Landroid/widget/Scroller;

.field public timePassed:J

.field public timeTotalPassed:J


# direct methods
.method public constructor <init>(Landroid/widget/Scroller;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 279
    iput-object p1, p0, Landroid/widget/Scroller$FrameRate;->this$0:Landroid/widget/Scroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 281
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    .line 282
    iput-wide v1, p0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 283
    iput-wide v1, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    .line 284
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->extraTime:I

    .line 285
    return-void
.end method


# virtual methods
.method public allReset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 299
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    .line 300
    iput-wide v1, p0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 301
    iput-wide v1, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    .line 302
    iput v0, p0, Landroid/widget/Scroller$FrameRate;->extraTime:I

    .line 303
    return-void
.end method

.method public getTimeDiff()F
    .locals 4

    .prologue
    .line 306
    iget-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    iget-wide v2, p0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    .line 307
    iget v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    iget v1, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    .line 308
    iget-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    long-to-float v0, v0

    iget v1, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 288
    iput v2, p0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 290
    iput v2, p0, Landroid/widget/Scroller$FrameRate;->extraTime:I

    .line 291
    iget v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 292
    iget v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    .line 293
    iget-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/widget/Scroller$FrameRate;->timeTotalPassed:J

    .line 295
    :cond_0
    return-void
.end method
