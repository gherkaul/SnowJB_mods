.class Lcom/android/systemui/usb/StorageNotification$3;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 308
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const v1, 0x104048a

    const v2, 0x104048b

    const v3, 0x108007b

    const/4 v6, 0x0

    move v5, v4

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/StorageNotification$3$1;-><init>(Lcom/android/systemui/usb/StorageNotification$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method
