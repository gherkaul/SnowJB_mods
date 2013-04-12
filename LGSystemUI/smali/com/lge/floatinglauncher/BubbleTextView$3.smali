.class Lcom/lge/floatinglauncher/BubbleTextView$3;
.super Ljava/lang/Object;
.source "BubbleTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/floatinglauncher/BubbleTextView;->makeEnableDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/floatinglauncher/BubbleTextView;


# direct methods
.method constructor <init>(Lcom/lge/floatinglauncher/BubbleTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lge/floatinglauncher/BubbleTextView$3;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/floatinglauncher/BubbleTextView$3;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    iget-object v6, v6, Lcom/lge/floatinglauncher/BubbleTextView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 304
    .local v4, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .restart local v1       #intent:Landroid/content/Intent;
    const v5, 0x30008000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v5, p0, Lcom/lge/floatinglauncher/BubbleTextView$3;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    #getter for: Lcom/lge/floatinglauncher/BubbleTextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lge/floatinglauncher/BubbleTextView;->access$200(Lcom/lge/floatinglauncher/BubbleTextView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 309
    .local v2, manager:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 311
    .local v0, disp:Landroid/view/Display;
    const-string v5, "orientation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    iget-object v5, p0, Lcom/lge/floatinglauncher/BubbleTextView$3;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-virtual {v5}, Lcom/lge/floatinglauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method
