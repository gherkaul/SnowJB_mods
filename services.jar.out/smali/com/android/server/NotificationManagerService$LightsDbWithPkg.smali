.class final Lcom/android/server/NotificationManagerService$LightsDbWithPkg;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LightsDbWithPkg"
.end annotation


# instance fields
.field final dbName:Ljava/lang/String;

.field final pkg:Ljava/lang/String;

.field value:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "pkg"

    .prologue
    .line 414
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$LightsDbWithPkg;->dbName:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/android/server/NotificationManagerService$LightsDbWithPkg;->pkg:Ljava/lang/String;

    .line 417
    return-void
.end method
