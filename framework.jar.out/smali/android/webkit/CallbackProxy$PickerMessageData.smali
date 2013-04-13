.class Landroid/webkit/CallbackProxy$PickerMessageData;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickerMessageData"
.end annotation


# instance fields
.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 1767
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mType:Ljava/lang/String;

    .line 1769
    iput-object p2, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mValue:Ljava/lang/String;

    .line 1770
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mValue:Ljava/lang/String;

    return-object v0
.end method
