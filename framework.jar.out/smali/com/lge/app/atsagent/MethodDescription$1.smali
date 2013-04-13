.class final Lcom/lge/app/atsagent/MethodDescription$1;
.super Ljava/lang/Object;
.source "MethodDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/MethodDescription;
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
        "Lcom/lge/app/atsagent/MethodDescription;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/MethodDescription;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v0, Lcom/lge/app/atsagent/MethodDescription;

    invoke-direct {v0}, Lcom/lge/app/atsagent/MethodDescription;-><init>()V

    .line 54
    .local v0, e:Lcom/lge/app/atsagent/MethodDescription;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/MethodDescription;->targetId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/app/atsagent/MethodDescription;->className:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/app/atsagent/MethodDescription;->methodName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    iput-boolean v4, v0, Lcom/lge/app/atsagent/MethodDescription;->hasReturn:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    .local v3, j:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 61
    new-instance v1, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;

    invoke-direct {v1}, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;-><init>()V

    .line 62
    .local v1, f:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->type:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->value:Ljava/lang/String;

    .line 64
    iget-object v4, v0, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v1           #f:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 66
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/MethodDescription$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/app/atsagent/MethodDescription;
    .locals 1
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Lcom/lge/app/atsagent/MethodDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/MethodDescription$1;->newArray(I)[Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v0

    return-object v0
.end method
