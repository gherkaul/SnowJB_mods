.class Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;
.super Ljava/lang/Object;
.source "ScreenTimeoutHandler.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenTimeoutStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;->this$0:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;-><init>(Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler$ScreenTimeoutStatusObserver;->this$0:Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/ScreenTimeoutHandler;->setScreenTimeoutButton()V

    .line 156
    return-void
.end method
