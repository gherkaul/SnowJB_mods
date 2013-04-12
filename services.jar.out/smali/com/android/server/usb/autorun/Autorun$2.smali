.class Lcom/android/server/usb/autorun/Autorun$2;
.super Landroid/os/UEventObserver;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/autorun/Autorun;


# direct methods
.method constructor <init>(Lcom/android/server/usb/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/usb/autorun/Autorun$2;->this$0:Lcom/android/server/usb/autorun/Autorun;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 177
    const-string v1, "AUTORUN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] USB UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v1, "AUTORUN"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, autorun:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/usb/autorun/Autorun$2;->this$0:Lcom/android/server/usb/autorun/Autorun;

    #getter for: Lcom/android/server/usb/autorun/Autorun;->mHandler:Lcom/android/server/usb/autorun/Autorun$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/autorun/Autorun;->access$200(Lcom/android/server/usb/autorun/Autorun;)Lcom/android/server/usb/autorun/Autorun$UsbHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method
