.class Lcom/lge/quicksettings/handlers/NFCHandler$2;
.super Ljava/lang/Object;
.source "NFCHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/NFCHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/NFCHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/NFCHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/NFCHandler$2;->this$0:Lcom/lge/quicksettings/handlers/NFCHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/NFCHandler$2;->this$0:Lcom/lge/quicksettings/handlers/NFCHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/handlers/NFCHandler;->setNFCButton()V

    .line 89
    return-void
.end method
