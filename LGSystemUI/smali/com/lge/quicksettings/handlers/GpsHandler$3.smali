.class Lcom/lge/quicksettings/handlers/GpsHandler$3;
.super Ljava/lang/Object;
.source "GpsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/GpsHandler;->onGPSButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/GpsHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$3;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler$3;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$302(Lcom/lge/quicksettings/handlers/GpsHandler;Z)Z

    .line 236
    return-void
.end method
