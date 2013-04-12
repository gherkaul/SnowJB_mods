.class Lcom/lge/quicksettings/handlers/QMemoHandler$4;
.super Ljava/lang/Object;
.source "QMemoHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/QMemoHandler;->executeQuickMemo()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/QMemoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$4;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$4;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/QMemoHandler;->access$002(Lcom/lge/quicksettings/handlers/QMemoHandler;Z)Z

    .line 139
    return-void
.end method
