.class Lcom/lge/quicksettings/handlers/GpsHandler$2;
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
    .line 221
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$2;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$2;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    #calls: Lcom/lge/quicksettings/handlers/GpsHandler;->isGpsLocationProviderEnabled()Z
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$200(Lcom/lge/quicksettings/handlers/GpsHandler;)Z

    move-result v0

    .line 224
    .local v0, gpsEnable:Z
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$2;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    #getter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$100(Lcom/lge/quicksettings/handlers/GpsHandler;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 227
    iget-object v1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$2;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    #setter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mGpsPopupShown:Z
    invoke-static {v1, v2}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$302(Lcom/lge/quicksettings/handlers/GpsHandler;Z)Z

    .line 228
    return-void

    :cond_0
    move v1, v2

    .line 224
    goto :goto_0
.end method
