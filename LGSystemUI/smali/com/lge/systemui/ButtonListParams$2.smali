.class final Lcom/lge/systemui/ButtonListParams$2;
.super Ljava/lang/Object;
.source "ButtonListParams.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ButtonListParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/systemui/ButtonItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/systemui/ButtonItem;Lcom/lge/systemui/ButtonItem;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, name1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, name2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    check-cast p1, Lcom/lge/systemui/ButtonItem;

    .end local p1
    check-cast p2, Lcom/lge/systemui/ButtonItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/systemui/ButtonListParams$2;->compare(Lcom/lge/systemui/ButtonItem;Lcom/lge/systemui/ButtonItem;)I

    move-result v0

    return v0
.end method
