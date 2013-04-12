.class Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ButtonListSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ButtonListSelectActivity;
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

.field final synthetic this$0:Lcom/lge/systemui/ButtonListSelectActivity;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/ButtonListSelectActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
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
    .line 241
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    iput-object p1, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->this$0:Lcom/lge/systemui/ButtonListSelectActivity;

    .line 242
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 243
    iput-object p2, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mContext:Landroid/content/Context;

    .line 244
    iput-object p4, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    .line 245
    return-void
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 4

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, layout:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    instance-of v4, p2, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v2, p2

    .line 279
    check-cast v2, Landroid/widget/LinearLayout;

    .line 283
    :goto_0
    iget-object v4, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemui/ButtonItem;

    .line 284
    .local v1, item:Lcom/lge/systemui/ButtonItem;
    const v4, 0x7f0c0010

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 285
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemLongNameId()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemShortNameId()I

    move-result v4

    if-nez v4, :cond_2

    .line 286
    :cond_0
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_1
    const v4, 0x7f0c0094

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 291
    .local v0, enabled:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    new-instance v4, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;

    iget-object v5, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->this$0:Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-direct {v4, v5, v1}, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;-><init>(Lcom/lge/systemui/ButtonListSelectActivity;Lcom/lge/systemui/ButtonItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 294
    return-object v2

    .line 281
    .end local v0           #enabled:Landroid/widget/CheckBox;
    .end local v1           #item:Lcom/lge/systemui/ButtonItem;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f03001a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #layout:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .restart local v2       #layout:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 288
    .restart local v1       #item:Lcom/lge/systemui/ButtonItem;
    .restart local v3       #textView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemLongNameId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
