.class public Lcom/lge/app/atsagent/UiElement;
.super Ljava/lang/Object;
.source "UiElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/UiElement$Field;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/app/atsagent/UiElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/atsagent/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/app/atsagent/UiElement$Field;",
            ">;"
        }
    .end annotation
.end field

.field public hash:I

.field public height:I

.field public id:I

.field public parent:Lcom/lge/app/atsagent/UiElement;

.field public typeName:Ljava/lang/String;

.field public userType:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/lge/app/atsagent/UiElement$1;

    invoke-direct {v0}, Lcom/lge/app/atsagent/UiElement$1;-><init>()V

    sput-object v0, Lcom/lge/app/atsagent/UiElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/lge/app/atsagent/UiElement;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement;->parent:Lcom/lge/app/atsagent/UiElement;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement;->typeName:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->hash:I

    .line 102
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->id:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement;->userType:Ljava/lang/String;

    .line 105
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->x:I

    .line 106
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->y:I

    .line 107
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->width:I

    .line 108
    iput v1, p0, Lcom/lge/app/atsagent/UiElement;->height:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/app/atsagent/UiElement;->enabled:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/lge/app/atsagent/UiElement;->parent:Lcom/lge/app/atsagent/UiElement;

    .line 29
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->userType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->hash:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->id:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->x:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->y:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->width:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v3, p0, Lcom/lge/app/atsagent/UiElement;->height:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v3, p0, Lcom/lge/app/atsagent/UiElement;->enabled:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/atsagent/UiElement$Field;

    .line 49
    .local v1, f:Lcom/lge/app/atsagent/UiElement$Field;
    iget-object v3, v1, Lcom/lge/app/atsagent/UiElement$Field;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v3, v1, Lcom/lge/app/atsagent/UiElement$Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v3, v1, Lcom/lge/app/atsagent/UiElement$Field;->value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    .end local v1           #f:Lcom/lge/app/atsagent/UiElement$Field;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 54
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v3, p0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/atsagent/UiElement;

    .line 56
    .local v0, e:Lcom/lge/app/atsagent/UiElement;
    invoke-virtual {v0, p1, p2}, Lcom/lge/app/atsagent/UiElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 57
    .end local v0           #e:Lcom/lge/app/atsagent/UiElement;
    :cond_2
    return-void
.end method
