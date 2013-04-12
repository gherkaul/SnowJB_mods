.class Lcom/lge/quicksettings/handlers/GpsHandler$1;
.super Ljava/lang/Object;
.source "GpsHandler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 204
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$1;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler$1;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    #getter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$100(Lcom/lge/quicksettings/handlers/GpsHandler;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usc_gps_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler$1;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    #getter for: Lcom/lge/quicksettings/handlers/GpsHandler;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->access$100(Lcom/lge/quicksettings/handlers/GpsHandler;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usc_gps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
