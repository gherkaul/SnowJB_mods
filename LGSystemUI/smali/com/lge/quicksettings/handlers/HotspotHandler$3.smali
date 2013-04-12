.class Lcom/lge/quicksettings/handlers/HotspotHandler$3;
.super Ljava/lang/Object;
.source "HotspotHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/HotspotHandler;->createWarningDialog()V
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
    .line 338
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$3;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 340
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$3;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #calls: Lcom/lge/quicksettings/handlers/HotspotHandler;->SetUserResponse(I)V
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$200(Lcom/lge/quicksettings/handlers/HotspotHandler;I)V

    .line 341
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$3;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #setter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mIsSelected:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$002(Lcom/lge/quicksettings/handlers/HotspotHandler;Z)Z

    .line 342
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/HotspotHandler$3;->this$0:Lcom/lge/quicksettings/handlers/HotspotHandler;

    #getter for: Lcom/lge/quicksettings/handlers/HotspotHandler;->mHotSpotDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/HotspotHandler;->access$300(Lcom/lge/quicksettings/handlers/HotspotHandler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 343
    return-void
.end method
