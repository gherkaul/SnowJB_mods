.class Lcom/lge/quicksettings/handlers/AbstractDataHandler$8;
.super Ljava/lang/Object;
.source "AbstractDataHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 607
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$8;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AbstractDataHandler$8;->this$0:Lcom/lge/quicksettings/handlers/AbstractDataHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/AbstractDataHandler;->mDataNetworkPopupShown:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->access$402(Lcom/lge/quicksettings/handlers/AbstractDataHandler;Z)Z

    .line 610
    return-void
.end method
