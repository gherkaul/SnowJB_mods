.class public Lcom/lge/systemui/ButtonItem;
.super Ljava/lang/Object;
.source "ButtonItem.java"


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mBubbleTextView:Lcom/lge/floatinglauncher/BubbleTextView;

.field private mEnabled:Z

.field private mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

.field private mIconId:I

.field private mIcons:[I

.field private mId:I

.field private mLongName:Ljava/lang/String;

.field private mLongNameId:I

.field private mOrder:I

.field private mPackageName:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;

.field private mShortNameId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(IIILcom/lge/quicksettings/QuickSettingsHandler;[I)V
    .locals 0
    .parameter "id"
    .parameter "shortNameId"
    .parameter "longNameId"
    .parameter "handler"
    .parameter "icons"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/lge/systemui/ButtonItem;->mId:I

    .line 28
    iput p2, p0, Lcom/lge/systemui/ButtonItem;->mShortNameId:I

    .line 29
    iput p3, p0, Lcom/lge/systemui/ButtonItem;->mLongNameId:I

    .line 30
    iput-object p4, p0, Lcom/lge/systemui/ButtonItem;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    .line 31
    iput-object p5, p0, Lcom/lge/systemui/ButtonItem;->mIcons:[I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "activityName"
    .parameter "iconId"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mPackageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/lge/systemui/ButtonItem;->mActivityName:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/lge/systemui/ButtonItem;->mIconId:I

    .line 38
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/lge/quicksettings/QuickSettingsHandler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    return-object v0
.end method

.method public getItemActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemBubbleTextView()Lcom/lge/floatinglauncher/BubbleTextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mBubbleTextView:Lcom/lge/floatinglauncher/BubbleTextView;

    return-object v0
.end method

.method public getItemIconId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/lge/systemui/ButtonItem;->mIconId:I

    return v0
.end method

.method public getItemIcons()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mIcons:[I

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/systemui/ButtonItem;->mId:I

    return v0
.end method

.method public getItemLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemLongNameId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/systemui/ButtonItem;->mLongNameId:I

    return v0
.end method

.method public getItemOrder()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/systemui/ButtonItem;->mOrder:I

    return v0
.end method

.method public getItemPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/systemui/ButtonItem;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemShortNameId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/systemui/ButtonItem;->mShortNameId:I

    return v0
.end method

.method public isItemEnabled()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/systemui/ButtonItem;->mEnabled:Z

    return v0
.end method

.method public setHandler(Lcom/lge/quicksettings/QuickSettingsHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    .line 118
    return-void
.end method

.method public setItemActivityName(Ljava/lang/String;)V
    .locals 0
    .parameter "activityName"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mActivityName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setItemBubbleTextView(Lcom/lge/floatinglauncher/BubbleTextView;)V
    .locals 0
    .parameter "bubbleTextView"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mBubbleTextView:Lcom/lge/floatinglauncher/BubbleTextView;

    .line 122
    return-void
.end method

.method public setItemEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/lge/systemui/ButtonItem;->mEnabled:Z

    .line 114
    return-void
.end method

.method public setItemIcons([I)V
    .locals 0
    .parameter "icons"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mIcons:[I

    .line 110
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 93
    iput p1, p0, Lcom/lge/systemui/ButtonItem;->mId:I

    .line 94
    return-void
.end method

.method public setItemLongName(Ljava/lang/String;)V
    .locals 0
    .parameter "longName"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mLongName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setItemLongNameId(I)V
    .locals 0
    .parameter "longNameId"

    .prologue
    .line 105
    iput p1, p0, Lcom/lge/systemui/ButtonItem;->mLongNameId:I

    .line 106
    return-void
.end method

.method public setItemOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 97
    iput p1, p0, Lcom/lge/systemui/ButtonItem;->mOrder:I

    .line 98
    return-void
.end method

.method public setItemShortName(Ljava/lang/String;)V
    .locals 0
    .parameter "shortName"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lge/systemui/ButtonItem;->mShortName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setItemShortNameId(I)V
    .locals 0
    .parameter "nameId"

    .prologue
    .line 101
    iput p1, p0, Lcom/lge/systemui/ButtonItem;->mShortNameId:I

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, toString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tmId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/ButtonItem;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmOrder: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/ButtonItem;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmShortNameId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/ButtonItem;->mShortNameId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmLongNameId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/ButtonItem;->mLongNameId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmEnabled: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/systemui/ButtonItem;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmIcons: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mIcons:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmHandler:[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mHandler:Lcom/lge/quicksettings/QuickSettingsHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmBubbleTextView: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mBubbleTextView:Lcom/lge/floatinglauncher/BubbleTextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmShortName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mShortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmLongName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmPackageName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmActivityName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/ButtonItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n\tmIconId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/systemui/ButtonItem;->mIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v1, "\n"

    const-string v2, ", "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method
