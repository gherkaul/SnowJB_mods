.class public Lcom/lge/systemui/ButtonListParams;
.super Ljava/lang/Object;
.source "ButtonListParams.java"


# static fields
.field public static sEditType:I

.field public static sEditingItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final sNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final sOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    .line 19
    new-instance v0, Lcom/lge/systemui/ButtonListParams$1;

    invoke-direct {v0}, Lcom/lge/systemui/ButtonListParams$1;-><init>()V

    sput-object v0, Lcom/lge/systemui/ButtonListParams;->sOrderComparator:Ljava/util/Comparator;

    .line 35
    new-instance v0, Lcom/lge/systemui/ButtonListParams$2;

    invoke-direct {v0}, Lcom/lge/systemui/ButtonListParams$2;-><init>()V

    sput-object v0, Lcom/lge/systemui/ButtonListParams;->sNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
