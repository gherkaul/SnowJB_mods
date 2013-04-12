.class Lcom/lge/floatinglauncher/BubbleTextView$4;
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
    .line 315
    iput-object p1, p0, Lcom/lge/floatinglauncher/BubbleTextView$4;->this$0:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 318
    :cond_0
    return-void
.end method
