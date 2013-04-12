.class Lcom/lge/quicksettings/QuickSettings$LabelUpdater;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/lge/quicksettings/QuickSettingsButton$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelUpdater"
.end annotation


# instance fields
.field mButton:Lcom/lge/quicksettings/QuickSettingsButton;

.field mButtonWidth:D

.field final synthetic this$0:Lcom/lge/quicksettings/QuickSettings;


# direct methods
.method public constructor <init>(Lcom/lge/quicksettings/QuickSettings;Lcom/lge/quicksettings/QuickSettingsButton;D)V
    .locals 3
    .parameter
    .parameter "button"
    .parameter "buttonWidth"

    .prologue
    const/4 v2, 0x0

    .line 209
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->this$0:Lcom/lge/quicksettings/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButtonWidth:D

    .line 210
    iput-object p2, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    .line 211
    iput-wide p3, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButtonWidth:D

    .line 212
    invoke-virtual {p0, v2, v2}, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->changed(II)V

    .line 213
    return-void
.end method


# virtual methods
.method public changed(II)V
    .locals 11
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 217
    const-wide/16 v2, 0x0

    .line 218
    .local v2, labelWidth:D
    const-wide/16 v5, 0x0

    .line 219
    .local v5, paddingWidth:D
    const/4 v1, 0x0

    .line 221
    .local v1, label:Ljava/lang/String;
    const/4 v7, 0x1

    .line 222
    .local v7, singleLine:Z
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getStatusText()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v2, v8

    .line 225
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-double v5, v8

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, isOverWidth:Z
    if-eqz v1, :cond_1

    .line 229
    iget-wide v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButtonWidth:D

    sub-double/2addr v8, v5

    cmpg-double v8, v8, v2

    if-gtz v8, :cond_1

    .line 230
    const/4 v0, 0x1

    .line 231
    const-string v8, "QuickMemo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->this$0:Lcom/lge/quicksettings/QuickSettings;

    #getter for: Lcom/lge/quicksettings/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lge/quicksettings/QuickSettings;->access$300(Lcom/lge/quicksettings/QuickSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/systemui/Utils;->getResolution(Landroid/content/Context;)F

    move-result v8

    const/high16 v9, 0x3f40

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 233
    const-string v1, "Quick\nMemo"

    .line 242
    :cond_0
    :goto_0
    const-string v8, "Bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 243
    iget-wide v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButtonWidth:D

    sub-double/2addr v8, v5

    double-to-float v8, v8

    const-wide/high16 v9, 0x4000

    add-double/2addr v9, v2

    double-to-float v9, v9

    div-float v4, v8, v9

    .line 244
    .local v4, numScaleX:F
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v9}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v9

    mul-float/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 245
    const/4 v0, 0x0

    .line 250
    .end local v4           #numScaleX:F
    :cond_1
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 252
    :cond_2
    const/4 v7, 0x0

    .line 254
    :cond_3
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 258
    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 259
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 266
    :goto_1
    return-void

    .line 237
    :cond_4
    iget-wide v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButtonWidth:D

    sub-double/2addr v8, v5

    double-to-float v8, v8

    const-wide/high16 v9, 0x4000

    add-double/2addr v9, v2

    double-to-float v9, v9

    div-float v4, v8, v9

    .line 238
    .restart local v4       #numScaleX:F
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v9}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v9

    mul-float/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 239
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 262
    .end local v4           #numScaleX:F
    :cond_5
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 264
    iget-object v8, p0, Lcom/lge/quicksettings/QuickSettings$LabelUpdater;->mButton:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v8}, Lcom/lge/quicksettings/QuickSettingsButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_1
.end method
