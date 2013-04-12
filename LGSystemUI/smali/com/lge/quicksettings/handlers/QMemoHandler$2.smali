.class Lcom/lge/quicksettings/handlers/QMemoHandler$2;
.super Ljava/lang/Object;
.source "QMemoHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    const/4 v2, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/QMemoHandler;->mQNotePopupShown:Z
    invoke-static {v1, v2}, Lcom/lge/quicksettings/handlers/QMemoHandler;->access$002(Lcom/lge/quicksettings/handlers/QMemoHandler;Z)Z

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.lge.QuickClip"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$2;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    iget-object v1, v1, Lcom/lge/quicksettings/QuickSettingsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method
