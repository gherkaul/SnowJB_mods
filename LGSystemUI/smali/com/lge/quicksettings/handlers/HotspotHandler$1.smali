.class Lcom/lge/quicksettings/handlers/HotspotHandler$1;
.super Ljava/lang/Object;
.source "HotspotHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/HotspotHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/HotspotHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$1;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$1;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #getter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$000(Lcom/lge/quicksettings/handlers/HotspotHandler;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss() finish "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$1;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$002(Lcom/lge/quicksettings/handlers/HotspotHandler;Z)Z

    .line 93
    :cond_0
    return-void
.end method
