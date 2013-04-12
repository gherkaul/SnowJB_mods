.class Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;
.super Ljava/lang/Object;
.source "UsimPersoScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UsimPersoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const v0, 0x1020369

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 529
    const v0, 0x1020360

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 530
    const v0, 0x1020361

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 531
    const v0, 0x1020362

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 532
    const v0, 0x1020363

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 533
    const v0, 0x1020364

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 534
    const v0, 0x1020365

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 535
    const v0, 0x1020366

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 536
    const v0, 0x1020367

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 537
    const v0, 0x1020368

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Lcom/android/internal/policy/impl/UsimPersoScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 579
    const/4 v0, 0x0

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 581
    const/4 v0, 0x1

    goto :goto_0

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 583
    const/4 v0, 0x2

    goto :goto_0

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 585
    const/4 v0, 0x3

    goto :goto_0

    .line 586
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 587
    const/4 v0, 0x4

    goto :goto_0

    .line 588
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 589
    const/4 v0, 0x5

    goto :goto_0

    .line 590
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 591
    const/4 v0, 0x6

    goto :goto_0

    .line 592
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 593
    const/4 v0, 0x7

    goto :goto_0

    .line 594
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 595
    const/16 v0, 0x8

    goto :goto_0

    .line 596
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 597
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 564
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 565
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v3, 0x1b58

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #calls: Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1700(Lcom/android/internal/policy/impl/UsimPersoScreen;I)V

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mCancelButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1500(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 570
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$800(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v3

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    #getter for: Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->access$1600(Lcom/android/internal/policy/impl/UsimPersoScreen;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/UsimPersoScreen;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 574
    :cond_0
    return-void

    .line 570
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
