.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$11;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->showAlertDialogSKT(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AbstractDataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$11;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 654
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 655
    return-void
.end method
