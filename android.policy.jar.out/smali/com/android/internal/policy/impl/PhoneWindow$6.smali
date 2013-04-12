.class Lcom/android/internal/policy/impl/PhoneWindow$6;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->showOverlayCtrDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downX:I

.field private downY:I

.field private isMoveButDown:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;

.field private upX:I

.field private upY:I

.field final synthetic val$disableOverlayBut:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/widget/ImageButton;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4341
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->val$disableOverlayBut:Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4342
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->isMoveButDown:Z

    .line 4343
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downX:I

    .line 4344
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downY:I

    .line 4345
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upX:I

    .line 4346
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upY:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 4348
    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4349
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->isMoveButDown:Z

    .line 4350
    const/4 v8, 0x1

    .line 4400
    :goto_0
    return v8

    .line 4352
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x20b0049

    if-eq v8, v9, :cond_2

    .line 4353
    const/4 v8, 0x1

    goto :goto_0

    .line 4355
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 4356
    .local v2, display:Landroid/view/Display;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 4357
    .local v3, dlgLp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 4358
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4359
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3002(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4360
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v10

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_3

    .line 4361
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4362
    :cond_3
    iget v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v10

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_4

    .line 4363
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4364
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4365
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v9, v10

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapX:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3102(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4366
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    iget v10, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v9, v10

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapY:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3202(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4367
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->isMoveButDown:Z

    .line 4368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downX:I

    .line 4369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downY:I

    .line 4372
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->isMoveButDown:Z

    if-eqz v8, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 4373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapX:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int v4, v8, v9

    .line 4374
    .local v4, posX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapY:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int v5, v8, v9

    .line 4375
    .local v5, posY:I
    const/4 v1, 0x0

    .line 4376
    .local v1, changed:Z
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v4, v8, :cond_6

    if-lez v4, :cond_6

    .line 4377
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4378
    const/4 v1, 0x1

    .line 4380
    :cond_6
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_7

    if-lez v5, :cond_7

    .line 4381
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4382
    const/4 v1, 0x1

    .line 4384
    :cond_7
    if-eqz v1, :cond_8

    .line 4385
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4388
    .end local v1           #changed:Z
    .end local v4           #posX:I
    .end local v5           #posY:I
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 4389
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->isMoveButDown:Z

    .line 4390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upX:I

    .line 4391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upY:I

    .line 4392
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downX:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upX:I

    sub-int v6, v8, v9

    .line 4393
    .local v6, touchGapX:I
    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->downY:I

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->upY:I

    sub-int v7, v8, v9

    .line 4394
    .local v7, touchGapY:I
    const/16 v8, 0xa

    if-ge v6, v8, :cond_9

    const/16 v8, -0xa

    if-le v6, v8, :cond_9

    const/16 v8, 0xa

    if-ge v7, v8, :cond_9

    const/16 v8, -0xa

    if-le v7, v8, :cond_9

    .line 4395
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4396
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->disableOverlayForMediaPlayer(Z)V

    .line 4397
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$6;->val$disableOverlayBut:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    .line 4400
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v6           #touchGapX:I
    .end local v7           #touchGapY:I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
