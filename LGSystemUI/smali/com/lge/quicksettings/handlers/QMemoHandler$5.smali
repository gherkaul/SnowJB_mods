.class Lcom/lge/quicksettings/handlers/QMemoHandler$5;
.super Ljava/lang/Object;
.source "QMemoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 151
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$5;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$5;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setButtonStatus(I)V

    .line 154
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/QMemoHandler$5;->this$0:Lcom/lge/quicksettings/handlers/QMemoHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/quicksettings/handlers/QMemoHandler;->setTextColor(Z)V

    .line 155
    return-void
.end method
