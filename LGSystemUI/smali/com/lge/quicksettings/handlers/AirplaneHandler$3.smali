.class Lcom/lge/quicksettings/handlers/AirplaneHandler$3;
.super Ljava/lang/Object;
.source "AirplaneHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AirplaneHandler;->airplaneModePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$3;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    const/4 v1, 0x0

    #setter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mAirplaneDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$202(Lcom/lge/quicksettings/handlers/AirplaneHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 386
    return-void
.end method
