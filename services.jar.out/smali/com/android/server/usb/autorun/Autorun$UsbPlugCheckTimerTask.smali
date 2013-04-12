.class public Lcom/android/server/usb/autorun/Autorun$UsbPlugCheckTimerTask;
.super Ljava/util/TimerTask;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/autorun/Autorun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbPlugCheckTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/autorun/Autorun;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/autorun/Autorun;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/android/server/usb/autorun/Autorun;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/android/server/usb/autorun/Autorun;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/usb/autorun/Autorun;->mUsbUnPlugged:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/autorun/Autorun;->access$502(Lcom/android/server/usb/autorun/Autorun;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/server/usb/autorun/Autorun$UsbPlugCheckTimerTask;->this$0:Lcom/android/server/usb/autorun/Autorun;

    #getter for: Lcom/android/server/usb/autorun/Autorun;->mHandler:Lcom/android/server/usb/autorun/Autorun$UsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/autorun/Autorun;->access$200(Lcom/android/server/usb/autorun/Autorun;)Lcom/android/server/usb/autorun/Autorun$UsbHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usb/autorun/Autorun$UsbHandler;->sendMessage(I)V

    .line 345
    return-void
.end method
