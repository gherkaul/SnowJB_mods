.class final Lcom/lge/app/atsagent/ActionResponse$1;
.super Ljava/lang/Object;
.source "ActionResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/app/atsagent/ActionResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/ActionResponse;
    .locals 4
    .parameter "in"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, id:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, code:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, descr:Ljava/lang/String;
    new-instance v3, Lcom/lge/app/atsagent/ActionResponse;

    invoke-direct {v3, v2, v0, v1}, Lcom/lge/app/atsagent/ActionResponse;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/ActionResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/app/atsagent/ActionResponse;
    .locals 1
    .parameter "size"

    .prologue
    .line 57
    new-array v0, p1, [Lcom/lge/app/atsagent/ActionResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/ActionResponse$1;->newArray(I)[Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v0

    return-object v0
.end method
