.class public Lcom/lge/app/atsagent/ActionRequest;
.super Ljava/lang/Object;
.source "ActionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/ActionRequest$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/app/atsagent/ActionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public param1:I

.field public requestId:I

.field public string1:Ljava/lang/String;

.field public targetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/lge/app/atsagent/ActionRequest$1;

    invoke-direct {v0}, Lcom/lge/app/atsagent/ActionRequest$1;-><init>()V

    sput-object v0, Lcom/lge/app/atsagent/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 62
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 63
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 64
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 34
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 35
    iput v1, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 36
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "requestId"
    .parameter "action"
    .parameter "targetId"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 62
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 63
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 64
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 20
    iput p2, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 21
    iput p3, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 62
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 63
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 64
    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 43
    iget v0, p0, Lcom/lge/app/atsagent/ActionRequest;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/lge/app/atsagent/ActionRequest;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
