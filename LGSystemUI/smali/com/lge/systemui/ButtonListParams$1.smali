.class final Lcom/lge/systemui/ButtonListParams$1;
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
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/systemui/ButtonItem;Lcom/lge/systemui/ButtonItem;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v0

    .line 23
    .local v0, order1:I
    invoke-virtual {p2}, Lcom/lge/systemui/ButtonItem;->getItemOrder()I

    move-result v1

    .line 25
    .local v1, order2:I
    if-le v0, v1, :cond_0

    .line 26
    const/4 v2, 0x1

    .line 30
    :goto_0
    return v2

    .line 27
    :cond_0
    if-ge v0, v1, :cond_1

    .line 28
    const/4 v2, -0x1

    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p1, Lcom/lge/systemui/ButtonItem;

    .end local p1
    check-cast p2, Lcom/lge/systemui/ButtonItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/systemui/ButtonListParams$1;->compare(Lcom/lge/systemui/ButtonItem;Lcom/lge/systemui/ButtonItem;)I

    move-result v0

    return v0
.end method
