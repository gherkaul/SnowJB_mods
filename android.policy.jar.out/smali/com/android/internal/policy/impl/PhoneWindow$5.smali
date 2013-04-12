.class Lcom/android/internal/policy/impl/PhoneWindow$5;
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

.field final synthetic val$backOverlayBut:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/widget/ImageButton;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4277
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->val$backOverlayBut:Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4278
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->isMoveButDown:Z

    .line 4279
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downX:I

    .line 4280
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downY:I

    .line 4281
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upX:I

    .line 4282
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upY:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 4284
    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v7

    if-nez v7, :cond_1

    .line 4285
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->isMoveButDown:Z

    .line 4286
    const/4 v7, 0x1

    .line 4334
    :goto_0
    return v7

    .line 4288
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x20b0047

    if-eq v7, v8, :cond_2

    .line 4289
    const/4 v7, 0x1

    goto :goto_0

    .line 4291
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4292
    .local v1, display:Landroid/view/Display;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4293
    .local v2, dlgLp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 4294
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4295
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3002(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4296
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_3

    .line 4297
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4298
    :cond_3
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_4

    .line 4299
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4300
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4301
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v8, v9

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapX:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3102(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4302
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v8, v9

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapY:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3202(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 4303
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->isMoveButDown:Z

    .line 4304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downX:I

    .line 4305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downY:I

    .line 4307
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->isMoveButDown:Z

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 4308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapX:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int v3, v7, v8

    .line 4309
    .local v3, posX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->gapY:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int v4, v7, v8

    .line 4310
    .local v4, posY:I
    const/4 v0, 0x0

    .line 4311
    .local v0, changed:Z
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgW:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ge v3, v7, :cond_6

    if-lez v3, :cond_6

    .line 4312
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4313
    const/4 v0, 0x1

    .line 4315
    :cond_6
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->dlgH:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ge v4, v7, :cond_7

    if-lez v4, :cond_7

    .line 4316
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4317
    const/4 v0, 0x1

    .line 4319
    :cond_7
    if-eqz v0, :cond_8

    .line 4320
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mOverlayCtrDlg:Landroid/app/Dialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1800(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4323
    .end local v0           #changed:Z
    .end local v3           #posX:I
    .end local v4           #posY:I
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 4324
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->isMoveButDown:Z

    .line 4325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upX:I

    .line 4326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upY:I

    .line 4327
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downX:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upX:I

    sub-int v5, v7, v8

    .line 4328
    .local v5, touchGapX:I
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->downY:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->upY:I

    sub-int v6, v7, v8

    .line 4329
    .local v6, touchGapY:I
    const/16 v7, 0xa

    if-ge v5, v7, :cond_9

    const/16 v7, -0xa

    if-le v5, v7, :cond_9

    const/16 v7, 0xa

    if-ge v6, v7, :cond_9

    const/16 v7, -0xa

    if-le v6, v7, :cond_9

    .line 4330
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mThis:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->setTopOverlayUsage(I)V

    .line 4331
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$5;->val$backOverlayBut:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    .line 4334
    .end local v5           #touchGapX:I
    .end local v6           #touchGapY:I
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
