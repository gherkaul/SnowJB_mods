.class public Lcom/lge/systemui/ButtonListSelectActivity;
.super Landroid/app/ListActivity;
.source "ButtonListSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;,
        Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mButtonListParams:I


# instance fields
.field private editList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/systemui/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/ButtonListSelectActivity;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/lge/systemui/ButtonListSelectActivity;->mButtonListParams:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/lge/systemui/ButtonListSelectActivity;)Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 156
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 157
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 158
    .local v1, flags:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 159
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_1

    .line 163
    :goto_1
    return v3

    .line 156
    .end local v0           #down:Z
    .end local v1           #flags:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    .restart local v0       #down:Z
    .restart local v1       #flags:I
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListSelectActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mListView:Landroid/widget/ListView;

    .line 80
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 63
    .local v0, adjPosition:I
    if-gez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    invoke-virtual {v2, v0}, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemui/ButtonItem;

    .line 68
    .local v1, item:Lcom/lge/systemui/ButtonItem;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 70
    iget-object v2, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 194
    sparse-switch p1, :sswitch_data_0

    .line 233
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :sswitch_0
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 198
    sget-object v0, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemui/ButtonItem;

    .line 199
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemui/ButtonItem;

    .line 202
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v5

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    goto :goto_1

    .line 199
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lge/systemui/ButtonListChangeOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->finish()V

    .line 228
    :goto_3
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->finish()V

    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/systemui/ButtonListSelectActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 220
    :pswitch_0
    const-string v1, "com.lge.quicksettings.action.SAVE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 223
    :pswitch_1
    const-string v1, "com.lge.floatinglauncher.action.SAVE_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 231
    :sswitch_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 10

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 90
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v1, :pswitch_data_0

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v6, curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    :goto_0
    sget v1, Lcom/lge/systemui/ButtonListSelectActivity;->mButtonListParams:I

    sget v2, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    if-eq v1, v2, :cond_0

    .line 103
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    sput v1, Lcom/lge/systemui/ButtonListSelectActivity;->mButtonListParams:I

    .line 104
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 105
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    .line 115
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/systemui/ButtonItem;

    .line 116
    .local v8, item:Lcom/lge/systemui/ButtonItem;
    sget-object v1, Lcom/lge/systemui/ButtonListSelectActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 92
    .end local v6           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/lge/systemui/ButtonItem;
    :pswitch_0
    sget-object v6, Lcom/lge/quicksettings/QuickSettings;->sCurItemList:Ljava/util/ArrayList;

    .line 93
    .restart local v6       #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    goto :goto_0

    .line 95
    .end local v6           #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    :pswitch_1
    sget-object v6, Lcom/lge/floatinglauncher/FloatingLauncher;->sCurItemList:Ljava/util/ArrayList;

    .line 96
    .restart local v6       #curItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/systemui/ButtonItem;>;"
    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    goto :goto_1

    .line 120
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    sget-object v1, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/systemui/ButtonItem;

    .line 123
    .restart local v8       #item:Lcom/lge/systemui/ButtonItem;
    new-instance v0, Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v1

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemShortNameId()I

    move-result v2

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemLongNameId()I

    move-result v3

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getHandler()Lcom/lge/quicksettings/QuickSettingsHandler;

    move-result-object v4

    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemIcons()[I

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lge/systemui/ButtonItem;-><init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V

    .line 124
    .local v0, tmpItem:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemShortName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 127
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemBubbleTextView(Lcom/lge/floatinglauncher/BubbleTextView;)V

    .line 128
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemActivityName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8}, Lcom/lge/systemui/ButtonItem;->getItemLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemLongName(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    .end local v0           #tmpItem:Lcom/lge/systemui/ButtonItem;
    .end local v8           #item:Lcom/lge/systemui/ButtonItem;
    :cond_3
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 134
    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/lge/systemui/ButtonListSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_4
    :goto_4
    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/lge/systemui/ButtonListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 141
    .local v9, title:Landroid/widget/TextView;
    sget v1, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v1, :pswitch_data_1

    .line 151
    :goto_5
    return-void

    .line 136
    .end local v9           #title:Landroid/widget/TextView;
    :cond_5
    new-instance v1, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;-><init>(Lcom/lge/systemui/ButtonListSelectActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    .line 137
    iget-object v1, p0, Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    invoke-virtual {p0, v1}, Lcom/lge/systemui/ButtonListSelectActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 143
    .restart local v9       #title:Landroid/widget/TextView;
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/systemui/ButtonListSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/lge/systemui/ButtonListSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/systemui/ButtonListSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserLeaveHint()V
    .locals 8

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    .line 168
    iget-object v6, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 169
    .local v4, size:I
    sget-object v6, Lcom/lge/systemui/ButtonListParams;->sEditingItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/systemui/ButtonItem;

    .line 170
    .local v3, item:Lcom/lge/systemui/ButtonItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 171
    iget-object v6, p0, Lcom/lge/systemui/ButtonListSelectActivity;->editList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/systemui/ButtonItem;

    .line 173
    .local v5, tmpItem:Lcom/lge/systemui/ButtonItem;
    invoke-virtual {v5}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v6

    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 175
    invoke-virtual {v5}, Lcom/lge/systemui/ButtonItem;->isItemEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0           #i:I
    .end local v3           #item:Lcom/lge/systemui/ButtonItem;
    .end local v5           #tmpItem:Lcom/lge/systemui/ButtonItem;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, intent:Landroid/content/Intent;
    sget v6, Lcom/lge/systemui/ButtonListParams;->sEditType:I

    packed-switch v6, :pswitch_data_0

    .line 190
    :goto_2
    invoke-virtual {p0, v2}, Lcom/lge/systemui/ButtonListSelectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 184
    :pswitch_0
    const-string v6, "com.lge.quicksettings.action.SAVE_HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 187
    :pswitch_1
    const-string v6, "com.lge.floatinglauncher.action.SAVE_HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
