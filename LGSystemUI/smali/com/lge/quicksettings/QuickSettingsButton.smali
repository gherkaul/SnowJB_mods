.class public Lcom/lge/quicksettings/QuickSettingsButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStatus:I

.field private mExtraInfo:Landroid/widget/TextView;

.field private mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

.field private mIcon:Landroid/widget/ImageView;

.field private mItem:Lcom/lge/systemui/ButtonItem;

.field private mLabel:Landroid/widget/TextView;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mOutline:Landroid/view/View;

.field private mPreviousStatus:I

.field private mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

.field private mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;


# direct methods
.method public constructor <init>(Lcom/lge/quicksettings/QuickSettings;Lcom/lge/systemui/ButtonItem;Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "quicksettings"
    .parameter "item"
    .parameter "layout"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    .line 52
    iput v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mPreviousStatus:I

    .line 54
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    .line 62
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    .line 63
    invoke-virtual {p1}, Lcom/lge/quicksettings/QuickSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    .line 65
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    invoke-virtual {v0, v3, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 68
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const v3, 0x7f0c008d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    .line 69
    const v3, 0x7f0c008e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    .line 70
    const v3, 0x7f0c0090

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f0c008f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mOutline:Landroid/view/View;

    .line 73
    sget-boolean v3, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_FLOATING_LAUNCHER:Z

    if-nez v3, :cond_0

    .line 75
    const v3, 0x7f0c008c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 76
    .local v1, lLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 80
    .end local v1           #lLayout:Landroid/widget/FrameLayout;
    :cond_0
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mOutline:Landroid/view/View;

    new-instance v4, Lcom/lge/quicksettings/QuickSettingsButton$1;

    invoke-direct {v4, p0}, Lcom/lge/quicksettings/QuickSettingsButton$1;-><init>(Lcom/lge/quicksettings/QuickSettingsButton;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 93
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    if-nez p2, :cond_1

    .line 97
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-object p2, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    .line 102
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getHandler()Lcom/lge/quicksettings/QuickSettingsHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    .line 104
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v3, p0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onCreate(Lcom/lge/quicksettings/QuickSettingsButton;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    .line 106
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v3}, Lcom/lge/quicksettings/QuickSettingsHandler;->refreshButton()V

    .line 108
    invoke-virtual {p2}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02024b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02024a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettings;->addReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 278
    return-void
.end method

.method public getButtonStatus()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    return v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mPreviousStatus:I

    iget v2, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/lge/quicksettings/QuickSettingsButton;->getStatusText(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemShortNameId()I

    move-result v1

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemShortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v2}, Lcom/lge/systemui/ButtonItem;->getItemShortNameId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatusText(II)Ljava/lang/String;
    .locals 1
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v0, p1, p2}, Lcom/lge/quicksettings/QuickSettingsHandler;->getStatusText(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isPending(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 154
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextStatus()V
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    add-int/lit8 v0, v1, 0x1

    .line 205
    .local v0, status:I
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v1}, Lcom/lge/systemui/ButtonItem;->getItemIcons()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 209
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lge/quicksettings/QuickSettingsButton;->setButtonStatus(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v1}, Lcom/lge/quicksettings/QuickSettingsHandler;->onClick()Z

    move-result v0

    .line 120
    .local v0, pending:Z
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/lge/quicksettings/QuickSettingsButton;->nextStatus()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v0}, Lcom/lge/quicksettings/QuickSettingsHandler;->onLongClick()Z

    move-result v0

    goto :goto_0
.end method

.method public removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mQuickSettings:Lcom/lge/quicksettings/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/lge/quicksettings/QuickSettings;->removeReceiverData(Lcom/lge/quicksettings/QuickSettingsReceiver;)V

    .line 282
    return-void
.end method

.method public setButtonStatus(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 162
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v3}, Lcom/lge/systemui/ButtonItem;->getItemIcons()[I

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_0

    iget v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    if-eq v3, p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->isPending(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 169
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemIcons()[I

    move-result-object v4

    aget v4, v4, p1

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->isPending(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 183
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 187
    :cond_2
    iget v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    iput v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mPreviousStatus:I

    .line 188
    iput p1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    .line 190
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    iget v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mPreviousStatus:I

    iget v5, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mCurrentStatus:I

    invoke-interface {v3, v4, v5}, Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;->changed(II)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 174
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    :cond_4
    iget-object v3, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v4}, Lcom/lge/systemui/ButtonItem;->getItemIcons()[I

    move-result-object v4

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 255
    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mExtraInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "itemId"
    .parameter "imageId"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_0
    return-void
.end method

.method public setStatusChangeListener(Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    .line 58
    return-void
.end method

.method public setTextColor(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const v2, 0x7f0203db

    const v3, 0x7f0203dc

    .line 213
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    sget-boolean v0, Lcom/lge/systemui/ModelFeature;->MODELFEATURE_PRADAUI:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v0

    if-nez v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mItem:Lcom/lge/systemui/ButtonItem;

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 224
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public updateButtonLabel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/lge/quicksettings/QuickSettingsButton;->mStatusChangeListener:Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;

    invoke-interface {v0, v1, v1}, Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;->changed(II)V

    .line 288
    :cond_0
    return-void
.end method
