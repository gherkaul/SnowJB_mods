.class Lcom/lge/quicksettings/handlers/DataHandler$2;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/DataHandler;->onClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/DataHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/DataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/DataHandler$2;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$2;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/quicksettings/handlers/AbstractDataHandler;->keepPending:Z

    .line 86
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/DataHandler$2;->this$0:Lcom/lge/quicksettings/handlers/DataHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/DataHandler;->setNetworkButton()V

    .line 87
    return-void
.end method
