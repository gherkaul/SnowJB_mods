.class Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;
.super Ljava/lang/Object;
.source "GpsHandler.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/GpsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPSStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/GpsHandler;


# direct methods
.method private constructor <init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/quicksettings/handlers/GpsHandler;Lcom/lge/quicksettings/handlers/GpsHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;-><init>(Lcom/lge/quicksettings/handlers/GpsHandler;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/GpsHandler$GPSStatusObserver;->this$0:Lcom/lge/quicksettings/handlers/GpsHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/GpsHandler;->refreshButton()V

    .line 289
    return-void
.end method
