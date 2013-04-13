.class public Lcom/lge/app/atsagent/MethodDescription;
.super Ljava/lang/Object;
.source "MethodDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/app/atsagent/MethodDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public className:Ljava/lang/String;

.field public hasReturn:Z

.field public methodName:Ljava/lang/String;

.field public params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/atsagent/MethodDescription$ParamEntity;",
            ">;"
        }
    .end annotation
.end field

.field public targetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/lge/app/atsagent/MethodDescription$1;

    invoke-direct {v0}, Lcom/lge/app/atsagent/MethodDescription$1;-><init>()V

    sput-object v0, Lcom/lge/app/atsagent/MethodDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/MethodDescription;->className:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/MethodDescription;->methodName:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/atsagent/MethodDescription;->hasReturn:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/app/atsagent/MethodDescription;->targetId:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 35
    iget v2, p0, Lcom/lge/app/atsagent/MethodDescription;->targetId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v2, p0, Lcom/lge/app/atsagent/MethodDescription;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/lge/app/atsagent/MethodDescription;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-boolean v2, p0, Lcom/lge/app/atsagent/MethodDescription;->hasReturn:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object v2, p0, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v2, p0, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;

    .line 42
    .local v0, f:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    iget-object v2, v0, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v2, v0, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    .end local v0           #f:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 45
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
