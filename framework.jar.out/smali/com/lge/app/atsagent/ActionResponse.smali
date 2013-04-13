.class public Lcom/lge/app/atsagent/ActionResponse;
.super Ljava/lang/Object;
.source "ActionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/ActionResponse$ReturnCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/app/atsagent/ActionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public requestId:I

.field public returnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/lge/app/atsagent/ActionResponse$1;

    invoke-direct {v0}, Lcom/lge/app/atsagent/ActionResponse$1;-><init>()V

    sput-object v0, Lcom/lge/app/atsagent/ActionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 62
    iput v1, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 27
    iput v1, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "requestId"
    .parameter "returnCode"
    .parameter "description"

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 62
    iput v0, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 21
    iput p2, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 22
    iput-object p3, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    return-void
.end method
