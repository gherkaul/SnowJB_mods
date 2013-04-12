.class Lcom/lge/quicksettings/handlers/SyncHandler$1$1;
.super Ljava/lang/Object;
.source "SyncHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/SyncHandler$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/quicksettings/handlers/SyncHandler$1;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/SyncHandler$1;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/SyncHandler$1$1;->this$1:Lcom/lge/quicksettings/handlers/SyncHandler$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/SyncHandler$1$1;->this$1:Lcom/lge/quicksettings/handlers/SyncHandler$1;

    iget-object v0, v0, Lcom/lge/quicksettings/handlers/SyncHandler$1;->this$0:Lcom/lge/quicksettings/handlers/SyncHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/SyncHandler;->refreshButton()V

    .line 119
    return-void
.end method
