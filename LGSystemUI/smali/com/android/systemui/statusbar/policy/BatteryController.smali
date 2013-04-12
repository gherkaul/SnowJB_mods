.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "com.android.settings.powersave.action.BATTERY_INDICATOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public getStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "power_save_battery_indicator"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, battery:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 74
    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    const/16 v7, 0x64

    .line 76
    .local v7, level:I
    :goto_0
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    .line 77
    .local v8, plugged:Z
    :goto_1
    const-string v10, "status"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    .line 78
    .local v5, isCharging:Z
    :goto_2
    const-string v10, "status"

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_4

    const/4 v6, 0x1

    .line 79
    .local v6, isFullCharged:Z
    :goto_3
    if-eqz v8, :cond_5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_0

    const/4 v10, 0x1

    if-ne v6, v10, :cond_5

    :cond_0
    const v4, 0x7f0202a0

    .line 83
    .local v4, icon:I
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 84
    .local v1, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v1, :cond_7

    .line 85
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 86
    .local v9, v:Landroid/widget/ImageView;
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 88
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f090063

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 74
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v5           #isCharging:Z
    .end local v6           #isFullCharged:Z
    .end local v7           #level:I
    .end local v8           #plugged:Z
    .end local v9           #v:Landroid/widget/ImageView;
    :cond_1
    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    .line 76
    .restart local v7       #level:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 77
    .restart local v8       #plugged:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 78
    .restart local v5       #isCharging:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 79
    .restart local v6       #isFullCharged:Z
    :cond_5
    invoke-static {}, Lcom/lge/systemui/BAL;->getOperator()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const v4, 0x7f02029e

    goto :goto_4

    :cond_6
    const v4, 0x7f02027f

    goto :goto_4

    .line 91
    .restart local v1       #N:I
    .restart local v3       #i:I
    .restart local v4       #icon:I
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 92
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_a

    .line 93
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 94
    .local v9, v:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v11, 0x7f09001a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 99
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v5           #isCharging:Z
    .end local v6           #isFullCharged:Z
    .end local v7           #level:I
    .end local v8           #plugged:Z
    .end local v9           #v:Landroid/widget/TextView;
    :cond_8
    const-string v10, "com.android.settings.powersave.action.BATTERY_INDICATOR_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 100
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    .restart local v1       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    if-ge v3, v1, :cond_a

    .line 102
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 103
    .restart local v9       #v:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getStatus()Z

    move-result v10

    if-nez v10, :cond_9

    .line 104
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 106
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 110
    .end local v1           #N:I
    .end local v3           #i:I
    .end local v9           #v:Landroid/widget/TextView;
    :cond_a
    return-void
.end method
