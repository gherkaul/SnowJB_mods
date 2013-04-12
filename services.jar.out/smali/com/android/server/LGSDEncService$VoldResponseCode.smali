.class Lcom/android/server/LGSDEncService$VoldResponseCode;
.super Ljava/lang/Object;
.source "LGSDEncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LGSDEncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoldResponseCode"
.end annotation


# static fields
.field public static final SDCryptNewSDCardInserted:I = 0x28a

.field public static final SDCryptOtherDeviceEnCrypted:I = 0x28b


# instance fields
.field final synthetic this$0:Lcom/android/server/LGSDEncService;


# direct methods
.method constructor <init>(Lcom/android/server/LGSDEncService;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/LGSDEncService$VoldResponseCode;->this$0:Lcom/android/server/LGSDEncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
