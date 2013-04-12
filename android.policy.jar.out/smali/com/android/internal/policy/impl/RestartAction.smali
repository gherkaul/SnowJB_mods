.class Lcom/android/internal/policy/impl/RestartAction;
.super Ljava/lang/Object;
.source "RestartAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestartAction"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mCount:I

.field private mDefalutCount:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mKeyguardShowing:Z

    .line 26
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 27
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/RestartAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RestartAction$1;-><init>(Lcom/android/internal/policy/impl/RestartAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    .line 33
    sput-object p1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "defaultCount"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mKeyguardShowing:Z

    .line 26
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 27
    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/RestartAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RestartAction$1;-><init>(Lcom/android/internal/policy/impl/RestartAction;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    .line 42
    sput-object p1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/RestartAction;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/RestartAction;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/RestartAction;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->refreshRestartDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/RestartAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    return-void
.end method

.method private createDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 81
    const-string v1, "RestartAction"

    const-string v2, "createDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    return-object v0
.end method

.method private getCountMsg(I)Landroid/text/SpannableStringBuilder;
    .locals 10
    .parameter "count"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    const-string v5, "RestartAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCountMsg() count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    .local v0, counter:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#4baac8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    sget-object v5, Lcom/android/internal/policy/impl/RestartAction;->mContext:Landroid/content/Context;

    const v6, 0x20c02ea

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, counterFormat:Ljava/lang/String;
    const-string v5, "%d"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, counterFormats:[Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    .local v4, spannedCount:Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v4

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4           #spannedCount:Landroid/text/SpannableStringBuilder;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v4       #spannedCount:Landroid/text/SpannableStringBuilder;
    goto :goto_0
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->createDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->prepareDialog()V

    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 94
    const-string v0, "RestartAction"

    const-string v1, "prepareDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 104
    :goto_0
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareDialog() mDefalutCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDefalutCount:I

    iput v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x20c0002

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private refreshRestartDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 115
    const-string v0, "RestartAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRestartDialog() mCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    if-le v0, v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/RestartAction;->mCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/RestartAction;->getCountMsg(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 128
    return-void
.end method

.method public showDialog(Z)V
    .locals 2
    .parameter "keyguardShowing"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/RestartAction;->mKeyguardShowing:Z

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mDialog:Landroid/app/ProgressDialog;

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/RestartAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RestartAction;->handleShow()V

    goto :goto_0
.end method
