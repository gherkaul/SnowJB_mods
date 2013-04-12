.class Lcom/android/systemui/usb/StorageNotification$3$1;
.super Ljava/lang/Object;
.source "StorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/usb/StorageNotification$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification$3;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$3$1;->this$1:Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$3$1;->this$1:Lcom/android/systemui/usb/StorageNotification$3;

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$3;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    #calls: Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->access$200(Lcom/android/systemui/usb/StorageNotification;IIIZZLandroid/app/PendingIntent;)V

    .line 318
    return-void
.end method
