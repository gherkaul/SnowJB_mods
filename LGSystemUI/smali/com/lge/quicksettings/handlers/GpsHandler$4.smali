.class Lcom/lge/quicksettings/handlers/GpsHandler$4;
.super Ljava/lang/Object;
.source "GpsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 240
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$4;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler$4;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$302(Lcom/lge/quicksettings/handlers/GpsHandler;Z)Z

    .line 243
    return-void
.end method
