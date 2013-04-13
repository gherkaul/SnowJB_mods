.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field private static final DEFAULT_START_YEAR_ARABIC_FARSI:I = 0x7bc

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mIsShowNumberOnlyAboutMonth:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthOffset:I

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "MM/dd/yyyy"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 125
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/DatePicker;->mIsEnabled:Z

    .line 133
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/DatePicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 137
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/DatePicker;->mMonthOffset:I

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 171
    sget-object v13, Lcom/android/internal/R$styleable;->DatePicker:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 173
    .local v3, attributesArray:Landroid/content/res/TypedArray;
    const/4 v13, 0x4

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 175
    .local v11, spinnersShown:Z
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 177
    .local v4, calendarViewShown:Z
    const/4 v13, 0x0

    const/16 v14, 0x76e

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 179
    .local v12, startYear:I
    const/4 v13, 0x1

    const/16 v14, 0x7f4

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 180
    .local v5, endYear:I
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, minDate:Ljava/lang/String;
    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, maxDate:Ljava/lang/String;
    const/4 v13, 0x6

    const v14, 0x1090035

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 184
    .local v7, layoutResourceId:I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 188
    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v7, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 190
    new-instance v10, Landroid/widget/DatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    .line 228
    .local v10, onChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    const v13, 0x102027a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 231
    const v13, 0x102027e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    new-instance v14, Landroid/widget/DatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v13, v14}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 241
    const v13, 0x102027c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    sget-object v14, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020308

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 248
    const v13, 0x102027b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/lit8 v14, v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/DatePicker;->mIsShowNumberOnlyAboutMonth:Z

    if-nez v13, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 257
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0xc8

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020308

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 262
    const v13, 0x102027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v13, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v13, v10}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v14, 0x1020308

    invoke-virtual {v13, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 269
    if-nez v11, :cond_4

    if-nez v4, :cond_4

    .line 270
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 277
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 278
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 285
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 289
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Landroid/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 296
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 304
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->reorderSpinners()V

    .line 307
    invoke-direct/range {p0 .. p0}, Landroid/widget/DatePicker;->setContentDescriptions()V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DatePicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 311
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/DatePicker;->setImportantForAccessibility(I)V

    .line 313
    :cond_3
    return-void

    .line 272
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/DatePicker;->setSpinnersShown(Z)V

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v12, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 294
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v14, 0xb

    const/16 v15, 0x1f

    invoke-virtual {v13, v5, v14, v15}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .parameter "oldCalendar"
    .parameter "locale"

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 539
    :goto_0
    return-object v2

    .line 536
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 537
    .local v0, currentTimeMillis:J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 538
    .local v2, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    const/4 v0, 0x1

    .line 645
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 751
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 752
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 755
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .parameter "date"
    .parameter "outDate"

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    const/4 v1, 0x1

    .line 640
    :goto_0
    return v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Ljava/text/ParseException;
    sget-object v1, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 549
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 550
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 551
    .local v1, order:[C
    array-length v2, v1

    .line 552
    .local v2, spinnerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 553
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 555
    :sswitch_0
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v3, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 552
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :sswitch_1
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 563
    :sswitch_2
    iget-object v3, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 564
    iget-object v3, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_1

    .line 570
    :cond_0
    return-void

    .line 553
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x1020309

    const v2, 0x1020307

    .line 777
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404e9

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 779
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404ea

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 782
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404e7

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 784
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404e8

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 787
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404eb

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 789
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    const v1, 0x10404ec

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 791
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .parameter "locale"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 492
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 496
    :cond_0
    iput-object p1, p0, Landroid/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 498
    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 499
    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 500
    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 501
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 503
    iget-object v1, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    .line 504
    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/widget/DatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 506
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iput-boolean v5, p0, Landroid/widget/DatePicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 518
    iput v5, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    goto :goto_0

    .line 520
    :cond_2
    iput-boolean v4, p0, Landroid/widget/DatePicker;->mIsShowNumberOnlyAboutMonth:Z

    .line 521
    iput v4, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 651
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 652
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "spinner"
    .parameter "spinnerCount"
    .parameter "spinnerIndex"

    .prologue
    .line 766
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 767
    const/4 v0, 0x5

    .line 771
    .local v0, imeOptions:I
    :goto_0
    const v2, 0x1020308

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 772
    .local v1, input:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 773
    return-void

    .line 769
    .end local v0           #imeOptions:I
    .end local v1           #input:Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0       #imeOptions:I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .parameter "root"
    .parameter "viewId"
    .parameter "contDescResId"

    .prologue
    .line 794
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 795
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 796
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 798
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 724
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 807
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 808
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 810
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 813
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 814
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 816
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 661
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 663
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 664
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 665
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 666
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 669
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iget v3, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 671
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 697
    :goto_0
    iget-boolean v1, p0, Landroid/widget/DatePicker;->mIsShowNumberOnlyAboutMonth:Z

    if-nez v1, :cond_0

    .line 700
    iget-object v1, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 702
    .local v0, displayedValues:[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 707
    .end local v0           #displayedValues:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 708
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 709
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 712
    iget-object v1, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 714
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 716
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 717
    return-void

    .line 672
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 674
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 675
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 676
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 677
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    iget v3, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 680
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 682
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 684
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 685
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 686
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 687
    iget-object v1, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 688
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 691
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/widget/DatePicker;->mMonthOffset:I

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 693
    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 593
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 622
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 623
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 624
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 625
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 626
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 436
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 437
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 424
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 425
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 430
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 415
    const/16 v0, 0x14

    .line 416
    .local v0, flags:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 603
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    .line 604
    .local v0, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 605
    #getter for: Landroid/widget/DatePicker$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1200(Landroid/widget/DatePicker$SavedState;)I

    move-result v1

    #getter for: Landroid/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1300(Landroid/widget/DatePicker$SavedState;)I

    move-result v2

    #getter for: Landroid/widget/DatePicker$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DatePicker$SavedState;->access$1400(Landroid/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 606
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 607
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 608
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 597
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 598
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 465
    iget-object v1, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 466
    return-void

    .line 465
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Landroid/widget/DatePicker;->mDaySpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 397
    iput-boolean p1, p0, Landroid/widget/DatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .parameter "maxDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 373
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 374
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 379
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 380
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 382
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 384
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .parameter "minDate"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 337
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 338
    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 343
    iget-object v0, p0, Landroid/widget/DatePicker;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 344
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/widget/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 346
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 348
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 483
    iget-object v1, p0, Landroid/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    return-void

    .line 483
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"

    .prologue
    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePicker;->setDate(III)V

    .line 584
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 585
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateCalendarView()V

    .line 586
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
