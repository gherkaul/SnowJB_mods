.class public final enum Lcom/sprint/net/lte/ConnectionManager$Status;
.super Ljava/lang/Enum;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/lte/ConnectionManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/lte/ConnectionManager$Status;

.field public static final enum CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

.field public static final enum CONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

.field public static final enum DISCONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

.field public static final enum DISCONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

.field public static final enum SCANNING:Lcom/sprint/net/lte/ConnectionManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/lte/ConnectionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->SCANNING:Lcom/sprint/net/lte/ConnectionManager$Status;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/lte/ConnectionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/lte/ConnectionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/lte/ConnectionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    new-instance v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/lte/ConnectionManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sprint/net/lte/ConnectionManager$Status;

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$Status;->SCANNING:Lcom/sprint/net/lte/ConnectionManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$Status;->CONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTING:Lcom/sprint/net/lte/ConnectionManager$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/lte/ConnectionManager$Status;->DISCONNECTED:Lcom/sprint/net/lte/ConnectionManager$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->$VALUES:[Lcom/sprint/net/lte/ConnectionManager$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/lte/ConnectionManager$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 148
    const-class v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/lte/ConnectionManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/lte/ConnectionManager$Status;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/sprint/net/lte/ConnectionManager$Status;->$VALUES:[Lcom/sprint/net/lte/ConnectionManager$Status;

    invoke-virtual {v0}, [Lcom/sprint/net/lte/ConnectionManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/lte/ConnectionManager$Status;

    return-object v0
.end method
