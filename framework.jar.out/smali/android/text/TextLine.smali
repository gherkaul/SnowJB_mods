.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static final TARGET_REGION:Ljava/lang/String;

.field private static final bTargetRegionJP:Z

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/TextLine;->TARGET_OPERATOR:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "ro.product.locale.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/TextLine;->TARGET_REGION:Ljava/lang/String;

    .line 72
    sget-object v0, Landroid/text/TextLine;->TARGET_REGION:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/text/TextLine;->bTargetRegionJP:Z

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 63
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 65
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 67
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .parameter "c"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "needWidth"

    .prologue
    .line 411
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 412
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 413
    .local v13, w:F
    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 418
    .end local v13           #w:F
    :goto_1
    return v13

    .line 411
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 418
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v13

    goto :goto_1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 21
    .parameter "c"
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1008
    if-eqz p7, :cond_0

    const/4 v9, 0x1

    .line 1009
    .local v9, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_1

    .line 1010
    sub-int v4, p4, p3

    .line 1011
    .local v4, count:I
    sub-int v6, p6, p5

    .line 1012
    .local v6, contextCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 1019
    .end local v4           #count:I
    .end local v6           #contextCount:I
    :goto_1
    return-void

    .line 1008
    .end local v9           #flags:I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1015
    .restart local v9       #flags:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v20, v0

    .line 1016
    .local v20, delta:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v12, v20, p3

    add-int v13, v20, p4

    add-int v14, v20, p5

    add-int v15, v20, p6

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v10, p1

    move/from16 v16, p8

    move/from16 v18, v9

    move-object/from16 v19, p2

    invoke-virtual/range {v10 .. v19}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .parameter "fmi"
    .parameter "wp"

    .prologue
    .line 705
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 706
    .local v1, previousTop:I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 707
    .local v2, previousAscent:I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 708
    .local v3, previousDescent:I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 709
    .local v4, previousBottom:I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 711
    .local v5, previousLeading:I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 713
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 715
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .parameter "runIndex"
    .parameter "runStart"
    .parameter "runLimit"
    .parameter "runIsRtl"
    .parameter "offset"
    .parameter "after"

    .prologue
    .line 638
    if-ltz p1, :cond_0

    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_4

    .line 642
    :cond_0
    if-eqz p6, :cond_3

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 696
    :cond_1
    :goto_1
    return v20

    .line 638
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 645
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto :goto_1

    .line 648
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 649
    .local v2, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 651
    move/from16 v4, p2

    .line 653
    .local v4, spanStart:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_6

    .line 654
    move/from16 v20, p3

    .line 690
    .local v20, spanLimit:I
    :cond_5
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 691
    .local v6, flags:I
    :goto_2
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 692
    .local v8, cursorOpt:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v20

    goto :goto_1

    .line 656
    .end local v6           #flags:I
    .end local v8           #cursorOpt:I
    .end local v20           #spanLimit:I
    :cond_6
    if-eqz p6, :cond_7

    add-int/lit8 v22, p5, 0x1

    .line 657
    .local v22, target:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 659
    .local v17, limit:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    .line 661
    .restart local v20       #spanLimit:I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 669
    .local v21, spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 671
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_5

    .line 672
    const/16 v18, 0x0

    .line 673
    .local v18, replacement:Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .local v16, j:I
    :goto_6
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_a

    .line 674
    aget-object v19, v21, v16

    .line 675
    .local v19, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_9

    move-object/from16 v18, v19

    .line 676
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 673
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    .end local v20           #spanLimit:I
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_7
    move/from16 v22, p5

    .line 656
    goto :goto_4

    .line 664
    .restart local v17       #limit:I
    .restart local v20       #spanLimit:I
    .restart local v22       #target:I
    :cond_8
    move/from16 v4, v20

    goto :goto_5

    .line 678
    .restart local v16       #j:I
    .restart local v18       #replacement:Landroid/text/style/ReplacementSpan;
    .restart local v19       #span:Landroid/text/style/MetricAffectingSpan;
    .restart local v21       #spans:[Landroid/text/style/MetricAffectingSpan;
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_7

    .line 682
    .end local v19           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_a
    if-eqz v18, :cond_5

    .line 685
    if-nez p6, :cond_1

    move/from16 v20, v4

    goto/16 :goto_1

    .line 690
    .end local v16           #j:I
    .end local v17           #limit:I
    .end local v18           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v21           #spans:[Landroid/text/style/MetricAffectingSpan;
    .end local v22           #target:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 691
    .restart local v6       #flags:I
    :cond_c
    const/4 v8, 0x2

    goto/16 :goto_3

    .line 696
    .restart local v8       #cursorOpt:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    goto/16 :goto_1
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .parameter "replacement"
    .parameter "wp"
    .parameter "start"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 843
    const/16 v23, 0x0

    .line 845
    .local v23, ret:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 846
    .local v4, textStart:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 848
    .local v5, textLimit:I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 849
    :cond_0
    const/4 v7, 0x0

    .line 850
    .local v7, previousTop:I
    const/4 v8, 0x0

    .line 851
    .local v8, previousAscent:I
    const/4 v9, 0x0

    .line 852
    .local v9, previousDescent:I
    const/4 v10, 0x0

    .line 853
    .local v10, previousBottom:I
    const/4 v11, 0x0

    .line 855
    .local v11, previousLeading:I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 857
    .local v22, needUpdateMetrics:Z
    :goto_0
    if-eqz v22, :cond_1

    .line 858
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 859
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 860
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 861
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 862
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 865
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 867
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 868
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 873
    .end local v7           #previousTop:I
    .end local v8           #previousAscent:I
    .end local v9           #previousDescent:I
    .end local v10           #previousBottom:I
    .end local v11           #previousLeading:I
    .end local v22           #needUpdateMetrics:Z
    :cond_2
    if-eqz p6, :cond_4

    .line 874
    if-eqz p5, :cond_3

    .line 875
    sub-float p7, p7, v23

    .line 877
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 881
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23           #ret:F
    :cond_5
    return v23

    .line 855
    .restart local v7       #previousTop:I
    .restart local v8       #previousAscent:I
    .restart local v9       #previousDescent:I
    .restart local v10       #previousBottom:I
    .restart local v11       #previousLeading:I
    .restart local v23       #ret:F
    :cond_6
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 29
    .parameter "start"
    .parameter "measureLimit"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 908
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 910
    .local v3, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 911
    if-eqz p10, :cond_0

    .line 912
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 914
    :cond_0
    const/4 v2, 0x0

    .line 989
    .end local v3           #wp:Landroid/text/TextPaint;
    :goto_0
    return v2

    .line 917
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 919
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 920
    move/from16 v5, p2

    .line 921
    .local v5, mlimit:I
    if-nez p11, :cond_2

    move/from16 v0, p2

    if-ge v5, v0, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 925
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int v8, v8, p3

    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 933
    move/from16 v27, p6

    .line 934
    .local v27, originalX:F
    move/from16 v9, p1

    .local v9, i:I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_15

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 936
    .restart local v3       #wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v24, v2, v4

    .line 940
    .local v24, inext:I
    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 942
    .restart local v5       #mlimit:I
    const/4 v7, 0x0

    .line 944
    .local v7, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    .local v12, j:I
    move/from16 v25, v12

    .end local v12           #j:I
    .local v25, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_8

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v9

    if-gt v2, v4, :cond_6

    .line 944
    :cond_5
    :goto_4
    add-int/lit8 v12, v25, 0x1

    .end local v25           #j:I
    .restart local v12       #j:I
    move/from16 v25, v12

    .end local v12           #j:I
    .restart local v25       #j:I
    goto :goto_3

    .line 949
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v28, v2, v25

    .line 950
    .local v28, span:Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v7, v28

    .line 951
    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    .line 955
    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_4

    .line 959
    .end local v28           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    .line 960
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v5, v0, :cond_b

    :cond_9
    const/16 v18, 0x1

    :goto_5
    move-object/from16 v6, p0

    move-object v8, v3

    move v10, v5

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .line 934
    .end local v25           #j:I
    .restart local v12       #j:I
    :cond_a
    :goto_6
    move/from16 v9, v24

    goto/16 :goto_2

    .line 960
    .end local v12           #j:I
    .restart local v25       #j:I
    :cond_b
    const/16 v18, 0x0

    goto :goto_5

    .line 965
    :cond_c
    if-nez p5, :cond_f

    .line 966
    if-nez p11, :cond_d

    move/from16 v0, p2

    if-ge v5, v0, :cond_e

    :cond_d
    const/16 v23, 0x1

    :goto_7
    move-object/from16 v10, p0

    move-object v11, v3

    move v12, v9

    move v13, v5

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    move/from16 v12, v25

    .end local v25           #j:I
    .restart local v12       #j:I
    goto :goto_6

    .end local v12           #j:I
    .restart local v25       #j:I
    :cond_e
    const/16 v23, 0x0

    goto :goto_7

    .line 969
    :cond_f
    move v12, v9

    .end local v25           #j:I
    .restart local v12       #j:I
    :goto_8
    if-ge v12, v5, :cond_a

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int v13, v2, v4

    .line 973
    .local v13, jnext:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 974
    const/16 v26, 0x0

    .local v26, k:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_12

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v13

    if-ge v2, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v12

    if-gt v2, v4, :cond_11

    .line 974
    :cond_10
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 979
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v28, v2, v26

    .line 980
    .local v28, span:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_a

    .line 983
    .end local v28           #span:Landroid/text/style/CharacterStyle;
    :cond_12
    if-nez p11, :cond_13

    move/from16 v0, p2

    if-ge v13, v0, :cond_14

    :cond_13
    const/16 v23, 0x1

    :goto_b
    move-object/from16 v10, p0

    move-object v11, v3

    move v14, v9

    move/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v2

    add-float p6, p6, v2

    .line 969
    move v12, v13

    goto/16 :goto_8

    .line 983
    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    .line 989
    .end local v3           #wp:Landroid/text/TextPaint;
    .end local v5           #mlimit:I
    .end local v7           #replacement:Landroid/text/style/ReplacementSpan;
    .end local v12           #j:I
    .end local v13           #jnext:I
    .end local v24           #inext:I
    .end local v26           #k:I
    :cond_15
    sub-float v2, p6, v27

    goto/16 :goto_0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 27
    .parameter "wp"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "runIsRtl"
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "fmi"
    .parameter "needWidth"

    .prologue
    .line 750
    if-eqz p12, :cond_0

    .line 751
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 754
    :cond_0
    sub-int v5, p3, p2

    .line 756
    .local v5, runLen:I
    if-nez v5, :cond_2

    .line 757
    const/16 v26, 0x0

    .line 816
    :cond_1
    :goto_0
    return v26

    .line 760
    :cond_2
    const/16 v26, 0x0

    .line 762
    .local v26, ret:F
    sub-int v7, p5, p4

    .line 763
    .local v7, contextLen:I
    if-nez p13, :cond_3

    if-eqz p7, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_3

    if-eqz p6, :cond_4

    .line 764
    :cond_3
    if-eqz p6, :cond_9

    const/4 v8, 0x1

    .line 765
    .local v8, flags:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v26

    .line 776
    .end local v8           #flags:I
    :cond_4
    :goto_2
    if-eqz p7, :cond_8

    .line 777
    if-eqz p6, :cond_5

    .line 778
    sub-float p8, p8, v26

    .line 781
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_6

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 783
    .local v24, previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 785
    .local v25, previousStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 786
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 787
    move/from16 v0, p9

    int-to-float v11, v0

    add-float v12, p8, v26

    move/from16 v0, p11

    int-to-float v13, v0

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 789
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 790
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 793
    .end local v24           #previousColor:I
    .end local v25           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_7

    .line 795
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    const v3, 0x3de38e39

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v2, v3

    .line 797
    .local v11, underlineTop:F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    .line 798
    .restart local v24       #previousColor:I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v25

    .line 799
    .restart local v25       #previousStyle:Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v23

    .line 801
    .local v23, previousAntiAlias:Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 802
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 804
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 805
    add-float v12, p8, v26

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v13, v11, v2

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v14, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 807
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 808
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 809
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 812
    .end local v11           #underlineTop:F
    .end local v23           #previousAntiAlias:Z
    .end local v24           #previousColor:I
    .end local v25           #previousStyle:Landroid/graphics/Paint$Style;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v21, p10, v2

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p8

    invoke-direct/range {v12 .. v21}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 816
    :cond_8
    if-eqz p6, :cond_1

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_0

    .line 764
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 769
    .restart local v8       #flags:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v22, v0

    .line 770
    .local v22, delta:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v22, p2

    add-int v12, v22, p3

    add-int v13, v22, p4

    add-int v14, v22, p5

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p1

    move v15, v8

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F

    move-result v26

    goto/16 :goto_2
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .parameter "start"
    .parameter "offset"
    .parameter "limit"
    .parameter "runIsRtl"
    .parameter "fmi"

    .prologue
    .line 437
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 6

    .prologue
    .line 83
    sget-object v4, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v4

    .line 84
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v3

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 85
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 86
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v3, v0

    .line 87
    .local v1, tl:Landroid/text/TextLine;
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 88
    monitor-exit v4

    move-object v2, v1

    .line 96
    .end local v1           #tl:Landroid/text/TextLine;
    .local v2, tl:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 91
    .end local v2           #tl:Ljava/lang/Object;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .restart local v1       #tl:Landroid/text/TextLine;
    move-object v2, v1

    .line 96
    .restart local v2       #tl:Ljava/lang/Object;
    goto :goto_0

    .line 91
    .end local v1           #tl:Landroid/text/TextLine;
    .end local v2           #tl:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .parameter "tl"

    .prologue
    const/4 v3, 0x0

    .line 107
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 108
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 109
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 111
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 112
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 113
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 115
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 117
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 118
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0

    .line 122
    :cond_0
    monitor-exit v2

    .line 123
    return-object v3

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .parameter "fmi"
    .parameter "previousTop"
    .parameter "previousAscent"
    .parameter "previousDescent"
    .parameter "previousBottom"
    .parameter "previousLeading"

    .prologue
    .line 719
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 720
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 721
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 722
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 723
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 724
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 9
    .parameter "pos"

    .prologue
    .line 1029
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v6, :cond_0

    .line 1030
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    .line 1044
    :goto_0
    return v6

    .line 1033
    :cond_0
    iget v6, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr p1, v6

    .line 1034
    iget-object v6, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int/lit8 v7, p1, 0x1

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, p1, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 1035
    .local v4, spans:[Landroid/text/style/MetricAffectingSpan;
    array-length v6, v4

    if-nez v6, :cond_1

    .line 1036
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0

    .line 1039
    :cond_1
    iget-object v5, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1040
    .local v5, wp:Landroid/text/TextPaint;
    iget-object v6, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1041
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/MetricAffectingSpan;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1042
    .local v3, span:Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v3, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1044
    .end local v3           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 25
    .parameter "c"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v2, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_1

    .line 200
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v2, v3, :cond_2

    .line 204
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    goto :goto_0

    .line 209
    :cond_2
    const/16 v17, 0x0

    .line 210
    .local v17, h:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v22, v0

    .line 211
    .local v22, runs:[I
    const/16 v16, 0x0

    .line 213
    .local v16, emojiRect:Landroid/graphics/RectF;
    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v19, v2, -0x2

    .line 214
    .local v19, lastRunIndex:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 215
    aget v21, v22, v18

    .line 216
    .local v21, runStart:I
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const v3, 0x3ffffff

    and-int/2addr v2, v3

    add-int v20, v21, v2

    .line 217
    .local v20, runLimit:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v20

    if-le v0, v2, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v20, v0

    .line 220
    :cond_3
    add-int/lit8 v2, v18, 0x1

    aget v2, v22, v2

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    .line 222
    .local v6, runIsRtl:Z
    :goto_2
    move/from16 v4, v21

    .line 223
    .local v4, segstart:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_a

    move/from16 v5, v21

    .local v5, j:I
    :goto_3
    move/from16 v0, v20

    if-gt v5, v0, :cond_10

    .line 224
    const/4 v15, 0x0

    .line 225
    .local v15, codept:I
    const/4 v13, 0x0

    .line 227
    .local v13, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v15, v2, v5

    .line 229
    const v2, 0xd800

    if-lt v15, v2, :cond_4

    const v2, 0xdc00

    if-ge v15, v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v20

    if-ge v2, v0, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v15

    .line 231
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v15, v2, :cond_b

    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v15, v2, :cond_b

    .line 232
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v2, v15}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 240
    :cond_4
    move/from16 v0, v20

    if-eq v5, v0, :cond_5

    const/16 v2, 0x9

    if-eq v15, v2, :cond_5

    if-eqz v13, :cond_8

    .line 241
    :cond_5
    add-float v7, p2, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-eq v5, v2, :cond_c

    :cond_6
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v2

    add-float v17, v17, v2

    .line 244
    const/16 v2, 0x9

    if-ne v15, v2, :cond_d

    .line 245
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v17, v2, v3

    .line 267
    :cond_7
    :goto_5
    add-int/lit8 v4, v5, 0x1

    .line 223
    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 220
    .end local v4           #segstart:I
    .end local v5           #j:I
    .end local v6           #runIsRtl:Z
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v15           #codept:I
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .restart local v4       #segstart:I
    .restart local v6       #runIsRtl:Z
    :cond_a
    move/from16 v5, v20

    .line 223
    goto/16 :goto_3

    .line 233
    .restart local v5       #j:I
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .restart local v15       #codept:I
    :cond_b
    const v2, 0xffff

    if-le v15, v2, :cond_4

    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    goto :goto_6

    .line 241
    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    .line 246
    :cond_d
    if-eqz v13, :cond_7

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->ascent(I)F

    move-result v14

    .line 248
    .local v14, bmAscent:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    .line 249
    .local v12, bitmapHeight:F
    neg-float v2, v14

    div-float v23, v2, v12

    .line 250
    .local v23, scale:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v24, v2, v23

    .line 252
    .local v24, width:F
    if-nez v16, :cond_e

    .line 253
    new-instance v16, Landroid/graphics/RectF;

    .end local v16           #emojiRect:Landroid/graphics/RectF;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    .line 256
    .restart local v16       #emojiRect:Landroid/graphics/RectF;
    :cond_e
    const/4 v2, 0x1

    sget-boolean v3, Landroid/text/TextLine;->bTargetRegionJP:Z

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 257
    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    .line 258
    add-float v2, p2, v17

    add-float v2, v2, v24

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v17

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 264
    add-float v17, v17, v24

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 261
    :cond_f
    add-float v2, p2, v17

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v3, v14

    add-float v7, p2, v17

    add-float v7, v7, v24

    move/from16 v0, p4

    int-to-float v8, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_7

    .line 214
    .end local v12           #bitmapHeight:F
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v14           #bmAscent:F
    .end local v15           #codept:I
    .end local v23           #scale:F
    .end local v24           #width:F
    :cond_10
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_1
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 30
    .parameter "cursor"
    .parameter "toLeft"

    .prologue
    .line 470
    const/16 v17, 0x0

    .line 471
    .local v17, lineStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 472
    .local v16, lineEnd:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v21, 0x1

    .line 473
    .local v21, paraIsRtl:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v28, v0

    .line 475
    .local v28, runs:[I
    const/16 v27, 0x0

    .local v27, runLevel:I
    move/from16 v4, v17

    .local v4, runStart:I
    move/from16 v5, v16

    .local v5, runLimit:I
    const/16 v18, -0x1

    .line 476
    .local v18, newCaret:I
    const/16 v29, 0x0

    .line 478
    .local v29, trailing:Z
    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 479
    const/4 v3, -0x2

    .line 557
    .local v3, runIndex:I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 558
    .local v8, advance:Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 559
    .local v10, otherRunIndex:I
    if-ltz v10, :cond_18

    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 560
    aget v2, v28, v10

    add-int v11, v17, v2

    .line 561
    .local v11, otherRunStart:I
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    .line 563
    .local v12, otherRunLimit:I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 564
    move/from16 v12, v16

    .line 566
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v20, v2, 0x3f

    .line 568
    .local v20, otherRunLevel:I
    and-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 570
    .local v13, otherRunIsRtl:Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 571
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    .line 572
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 575
    if-eqz v8, :cond_14

    .end local v12           #otherRunLimit:I
    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    .line 578
    move v3, v10

    .line 579
    move/from16 v27, v20

    .line 580
    goto :goto_1

    .line 472
    .end local v3           #runIndex:I
    .end local v4           #runStart:I
    .end local v5           #runLimit:I
    .end local v8           #advance:Z
    .end local v10           #otherRunIndex:I
    .end local v11           #otherRunStart:I
    .end local v13           #otherRunIsRtl:Z
    .end local v18           #newCaret:I
    .end local v20           #otherRunLevel:I
    .end local v21           #paraIsRtl:Z
    .end local v27           #runLevel:I
    .end local v28           #runs:[I
    .end local v29           #trailing:Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 480
    .restart local v4       #runStart:I
    .restart local v5       #runLimit:I
    .restart local v18       #newCaret:I
    .restart local v21       #paraIsRtl:Z
    .restart local v27       #runLevel:I
    .restart local v28       #runs:[I
    .restart local v29       #trailing:Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 481
    move-object/from16 v0, v28

    array-length v3, v0

    .restart local v3       #runIndex:I
    goto :goto_1

    .line 485
    .end local v3           #runIndex:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #runIndex:I
    :goto_8
    move-object/from16 v0, v28

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 486
    aget v2, v28, v3

    add-int v4, v17, v2

    .line 487
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 488
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 489
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 490
    move/from16 v5, v16

    .line 492
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 493
    add-int/lit8 v2, v3, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v27, v2, 0x3f

    .line 495
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 500
    add-int/lit8 v22, p1, -0x1

    .line 501
    .local v22, pos:I
    const/16 v23, 0x0

    .local v23, prevRunIndex:I
    :goto_9
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_7

    .line 502
    aget v2, v28, v23

    add-int v26, v17, v2

    .line 503
    .local v26, prevRunStart:I
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    .line 504
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v25, v26, v2

    .line 506
    .local v25, prevRunLimit:I
    move/from16 v0, v25

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 507
    move/from16 v25, v16

    .line 509
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 510
    add-int/lit8 v2, v23, 0x1

    aget v2, v28, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v24, v2, 0x3f

    .line 512
    .local v24, prevRunLevel:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 514
    move/from16 v3, v23

    .line 515
    move/from16 v27, v24

    .line 516
    move/from16 v4, v26

    .line 517
    move/from16 v5, v25

    .line 518
    const/16 v29, 0x1

    .line 535
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v24           #prevRunLevel:I
    .end local v25           #prevRunLimit:I
    .end local v26           #prevRunStart:I
    :cond_7
    move-object/from16 v0, v28

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 536
    and-int/lit8 v2, v27, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 537
    .local v6, runIsRtl:Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 538
    .restart local v8       #advance:Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v29

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 540
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    .line 544
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    move/from16 v19, v18

    .line 615
    .end local v6           #runIsRtl:Z
    .end local v18           #newCaret:I
    .local v19, newCaret:I
    :goto_e
    return v19

    .line 501
    .end local v8           #advance:Z
    .end local v19           #newCaret:I
    .restart local v18       #newCaret:I
    .restart local v22       #pos:I
    .restart local v23       #prevRunIndex:I
    .restart local v26       #prevRunStart:I
    :cond_9
    add-int/lit8 v23, v23, 0x2

    goto :goto_9

    .line 485
    .end local v22           #pos:I
    .end local v23           #prevRunIndex:I
    .end local v26           #prevRunStart:I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 536
    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 537
    .restart local v6       #runIsRtl:Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    .restart local v8       #advance:Z
    :cond_d
    move v2, v4

    .line 538
    goto :goto_c

    :cond_e
    move v2, v4

    .line 544
    goto :goto_d

    .line 557
    .end local v6           #runIsRtl:Z
    .end local v8           #advance:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 558
    .restart local v8       #advance:Z
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 568
    .restart local v10       #otherRunIndex:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v20       #otherRunLevel:I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 570
    .restart local v13       #otherRunIsRtl:Z
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 572
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 575
    goto/16 :goto_7

    .line 586
    :cond_15
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 588
    if-eqz v8, :cond_17

    move/from16 v18, v11

    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_16
    :goto_f
    move/from16 v19, v18

    .line 615
    .end local v18           #newCaret:I
    .restart local v19       #newCaret:I
    goto :goto_e

    .end local v19           #newCaret:I
    .restart local v11       #otherRunStart:I
    .restart local v12       #otherRunLimit:I
    .restart local v13       #otherRunIsRtl:Z
    .restart local v18       #newCaret:I
    .restart local v20       #otherRunLevel:I
    :cond_17
    move/from16 v18, v12

    .line 588
    goto :goto_f

    .line 593
    .end local v11           #otherRunStart:I
    .end local v12           #otherRunLimit:I
    .end local v13           #otherRunIsRtl:Z
    .end local v20           #otherRunLevel:I
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    .line 597
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    .line 598
    :goto_10
    goto :goto_f

    .line 597
    :cond_19
    const/16 v18, -0x1

    goto :goto_10

    .line 609
    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 610
    if-eqz v8, :cond_1b

    move/from16 v18, v16

    :goto_11
    goto :goto_f

    :cond_1b
    move/from16 v18, v17

    goto :goto_11
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 21
    .parameter "offset"
    .parameter "trailing"
    .parameter "fmi"

    .prologue
    .line 297
    if-eqz p2, :cond_1

    add-int/lit8 v18, p1, -0x1

    .line 298
    .local v18, target:I
    :goto_0
    if-gez v18, :cond_2

    .line 299
    const/4 v12, 0x0

    .line 388
    :cond_0
    :goto_1
    return v12

    .end local v18           #target:I
    :cond_1
    move/from16 v18, p1

    .line 297
    goto :goto_0

    .line 302
    .restart local v18       #target:I
    :cond_2
    const/4 v12, 0x0

    .line 304
    .local v12, h:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_1

    .line 308
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_4

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v12

    goto :goto_1

    .line 313
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    .line 314
    .local v10, chars:[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 315
    .local v17, runs:[I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_0

    .line 316
    aget v16, v17, v13

    .line 317
    .local v16, runStart:I
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v15, v16, v1

    .line 318
    .local v15, runLimit:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_5

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    .line 321
    :cond_5
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v3, 0x400

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 323
    .local v5, runIsRtl:Z
    :goto_3
    move/from16 v2, v16

    .line 324
    .local v2, segstart:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    move/from16 v4, v16

    .local v4, j:I
    :goto_4
    if-gt v4, v15, :cond_15

    .line 325
    const/4 v11, 0x0

    .line 326
    .local v11, codept:I
    const/4 v8, 0x0

    .line 328
    .local v8, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    if-ge v4, v15, :cond_6

    .line 329
    aget-char v11, v10, v4

    .line 330
    const v1, 0xd800

    if-lt v11, v1, :cond_6

    const v1, 0xdc00

    if-ge v11, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_6

    .line 331
    invoke-static {v10, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 332
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    if-lt v11, v1, :cond_a

    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    if-gt v11, v1, :cond_a

    .line 333
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v1, v11}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 341
    :cond_6
    if-eq v4, v15, :cond_7

    const/16 v1, 0x9

    if-eq v11, v1, :cond_7

    if-eqz v8, :cond_b

    .line 342
    :cond_7
    move/from16 v0, v18

    if-lt v0, v2, :cond_c

    move/from16 v0, v18

    if-ge v0, v4, :cond_c

    const/4 v14, 0x1

    .line 344
    .local v14, inSegment:Z
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v5, :cond_e

    const/4 v7, 0x1

    .line 345
    .local v7, advance:Z
    :goto_7
    if-eqz v14, :cond_f

    if-eqz v7, :cond_f

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 346
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_1

    .line 321
    .end local v2           #segstart:I
    .end local v4           #j:I
    .end local v5           #runIsRtl:Z
    .end local v7           #advance:Z
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v11           #codept:I
    .end local v14           #inSegment:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .restart local v2       #segstart:I
    .restart local v5       #runIsRtl:Z
    :cond_9
    move v4, v15

    .line 324
    goto :goto_4

    .line 334
    .restart local v4       #j:I
    .restart local v8       #bm:Landroid/graphics/Bitmap;
    .restart local v11       #codept:I
    :cond_a
    const v1, 0xffff

    if-le v11, v1, :cond_6

    .line 335
    add-int/lit8 v4, v4, 0x1

    .line 324
    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 342
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 344
    .restart local v14       #inSegment:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    goto :goto_7

    .restart local v7       #advance:Z
    :cond_f
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 349
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v19

    .line 350
    .local v19, w:F
    if-eqz v7, :cond_10

    .end local v19           #w:F
    :goto_9
    add-float v12, v12, v19

    .line 352
    if-eqz v14, :cond_11

    .line 353
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v12, v1

    goto/16 :goto_1

    .line 350
    .restart local v19       #w:F
    :cond_10
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_9

    .line 356
    .end local v19           #w:F
    :cond_11
    const/16 v1, 0x9

    if-ne v11, v1, :cond_12

    .line 357
    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v12, v1, v3

    .line 361
    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    .line 366
    :cond_12
    if-eqz v8, :cond_14

    .line 368
    const/4 v1, 0x1

    sget-boolean v3, Landroid/text/TextLine;->bTargetRegionJP:Z

    if-ne v1, v3, :cond_13

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 372
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    move-result v9

    .line 373
    .local v9, bmAscent:F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v3, v9

    mul-float/2addr v1, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v1, v3

    .line 374
    .local v20, wid:F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v20

    add-float/2addr v12, v1

    .line 375
    add-int/lit8 v4, v4, 0x1

    .line 377
    const/4 v1, 0x1

    sget-boolean v3, Landroid/text/TextLine;->bTargetRegionJP:Z

    if-ne v1, v3, :cond_14

    move/from16 v0, v18

    if-eq v0, v4, :cond_0

    .line 383
    .end local v9           #bmAscent:F
    .end local v20           #wid:F
    :cond_14
    add-int/lit8 v2, v4, 0x1

    goto :goto_8

    .line 315
    .end local v7           #advance:Z
    .end local v8           #bm:Landroid/graphics/Bitmap;
    .end local v11           #codept:I
    .end local v14           #inSegment:Z
    :cond_15
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_2
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .parameter "fmi"

    .prologue
    .line 280
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .parameter "h"

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    .line 1057
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    goto :goto_0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "limit"
    .parameter "dir"
    .parameter "directions"
    .parameter "hasTabs"
    .parameter "tabStops"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 141
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 142
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 143
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 144
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 145
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 146
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 147
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 149
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 150
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, hasReplacement:Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 154
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 155
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 156
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 159
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 161
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 162
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 163
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v7

    new-array v7, v7, [C

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 165
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 166
    if-eqz v3, :cond_8

    .line 172
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 173
    .local v1, chars:[C
    move v4, p3

    .local v4, i:I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 174
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 175
    .local v5, inext:I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 177
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 178
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, j:I
    sub-int v2, v5, p3

    .local v2, e:I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 179
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 156
    .end local v1           #chars:[C
    .end local v2           #e:I
    .end local v4           #i:I
    .end local v5           #inext:I
    .end local v6           #j:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 173
    .restart local v1       #chars:[C
    .restart local v4       #i:I
    .restart local v5       #inext:I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 185
    .end local v1           #chars:[C
    .end local v4           #i:I
    .end local v5           #inext:I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 186
    return-void
.end method
