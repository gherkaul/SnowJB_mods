.class public Landroid/mtp/LgeMtpInterfaceManager;
.super Ljava/lang/Object;
.source "LgeMtpInterfaceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeMtpInterfaceManager"

.field private static sSI:Landroid/mtp/ILgeMtpInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 9
    const/4 v2, 0x0

    sput-object v2, Landroid/mtp/LgeMtpInterfaceManager;->sSI:Landroid/mtp/ILgeMtpInterface;

    .line 18
    :try_start_0
    const-string v2, "android.mtp.LgeMtpInterfaceImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 19
    .local v0, cl:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/ILgeMtpInterface;

    sput-object v2, Landroid/mtp/LgeMtpInterfaceManager;->sSI:Landroid/mtp/ILgeMtpInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    .line 22
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LgeMtpInterfaceManager"

    const-string v3, "error exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterface()Landroid/mtp/ILgeMtpInterface;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/mtp/LgeMtpInterfaceManager;->sSI:Landroid/mtp/ILgeMtpInterface;

    return-object v0
.end method

.method public static setInterface(Landroid/mtp/ILgeMtpInterface;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 31
    sput-object p0, Landroid/mtp/LgeMtpInterfaceManager;->sSI:Landroid/mtp/ILgeMtpInterface;

    .line 32
    return-void
.end method
