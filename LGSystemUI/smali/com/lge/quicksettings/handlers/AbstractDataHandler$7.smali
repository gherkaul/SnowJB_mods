.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$7;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AbstractDataHandler;->showAlertDialogDocomo(I)V
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
    .line 600
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$7;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 602
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 603
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$7;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$402(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Z)Z

    .line 604
    return-void
.end method
