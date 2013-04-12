.class Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ButtonListChangeOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ButtonListChangeOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/systemui/ButtonItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/ButtonListChangeOrderActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    iput-object p1, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->this$0:Lcom/lge/systemui/ButtonListChangeOrderActivity;

    .line 403
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 404
    iput-object p2, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->mContext:Landroid/content/Context;

    .line 405
    iput-object p4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    .line 406
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x0

    const v7, 0x7f0c0092

    const v6, 0x7f0c0010

    .line 413
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    move-object v1, v3

    .line 437
    :goto_0
    return-object v1

    .line 416
    :cond_0
    const/4 v1, 0x0

    .line 417
    .local v1, layout:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_2

    instance-of v4, p2, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    move-object v1, p2

    .line 418
    check-cast v1, Landroid/widget/LinearLayout;

    .line 422
    :goto_1
    iget-object v3, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/ButtonItem;

    .line 423
    .local v0, item:Lcom/lge/systemui/ButtonItem;
    if-eqz v0, :cond_4

    .line 424
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 427
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemLongNameId()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemShortNameId()I

    move-result v3

    if-nez v3, :cond_3

    .line 428
    :cond_1
    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_0

    .line 420
    .end local v0           #item:Lcom/lge/systemui/ButtonItem;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/lge/systemui/ButtonListChangeOrderActivity$SettingAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f030017

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .restart local v1       #layout:Landroid/widget/LinearLayout;
    goto :goto_1

    .line 430
    .restart local v0       #item:Lcom/lge/systemui/ButtonItem;
    .restart local v2       #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemLongNameId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 434
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
