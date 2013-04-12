.class Lcom/lge/floatinglauncher/FloatingLauncher$3;
.super Ljava/lang/Object;
.source "FloatingLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/floatinglauncher/FloatingLauncher;->getEditButton()Lcom/lge/floatinglauncher/BubbleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/floatinglauncher/FloatingLauncher;


# direct methods
.method constructor <init>(Lcom/lge/floatinglauncher/FloatingLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lge/floatinglauncher/FloatingLauncher$3;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lge/floatinglauncher/FloatingLauncher$3;->this$0:Lcom/lge/floatinglauncher/FloatingLauncher;

    #calls: Lcom/lge/floatinglauncher/FloatingLauncher;->clickEdit()V
    invoke-static {v0}, Lcom/lge/floatinglauncher/FloatingLauncher;->access$600(Lcom/lge/floatinglauncher/FloatingLauncher;)V

    .line 279
    return-void
.end method
