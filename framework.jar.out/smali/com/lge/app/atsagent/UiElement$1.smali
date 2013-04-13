.class final Lcom/lge/app/atsagent/UiElement$1;
.super Ljava/lang/Object;
.source "UiElement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/UiElement;
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
        "Lcom/lge/app/atsagent/UiElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/UiElement;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v0, Lcom/lge/app/atsagent/UiElement;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/lge/app/atsagent/UiElement;-><init>(Lcom/lge/app/atsagent/UiElement;)V

    .line 66
    .local v0, e:Lcom/lge/app/atsagent/UiElement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/app/atsagent/UiElement;->userType:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/lge/app/atsagent/UiElement;->typeName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->hash:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->id:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->x:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->y:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->width:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v0, Lcom/lge/app/atsagent/UiElement;->height:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    iput-boolean v4, v0, Lcom/lge/app/atsagent/UiElement;->enabled:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, j:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 80
    new-instance v1, Lcom/lge/app/atsagent/UiElement$Field;

    invoke-direct {v1}, Lcom/lge/app/atsagent/UiElement$Field;-><init>()V

    .line 81
    .local v1, f:Lcom/lge/app/atsagent/UiElement$Field;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/app/atsagent/UiElement$Field;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/app/atsagent/UiElement$Field;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/lge/app/atsagent/UiElement$Field;->value:Ljava/lang/String;

    .line 84
    iget-object v4, v0, Lcom/lge/app/atsagent/UiElement;->fields:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v1           #f:Lcom/lge/app/atsagent/UiElement$Field;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 87
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 89
    iget-object v4, v0, Lcom/lge/app/atsagent/UiElement;->children:Ljava/util/List;

    sget-object v5, Lcom/lge/app/atsagent/UiElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    :cond_2
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/UiElement$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/app/atsagent/UiElement;
    .locals 1
    .parameter "size"

    .prologue
    .line 95
    new-array v0, p1, [Lcom/lge/app/atsagent/UiElement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/lge/app/atsagent/UiElement$1;->newArray(I)[Lcom/lge/app/atsagent/UiElement;

    move-result-object v0

    return-object v0
.end method
