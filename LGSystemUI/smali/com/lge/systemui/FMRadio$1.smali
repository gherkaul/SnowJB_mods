.class Lcom/lge/systemui/FMRadio$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/FMRadio;


# direct methods
.method constructor <init>(Lcom/lge/systemui/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget-boolean v6, v6, Lcom/lge/systemui/Component;->mVisible:Z

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/systemui/FMRadio;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    const-string v6, "action"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, subAction:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 86
    .end local v5           #subAction:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v5       #subAction:Ljava/lang/String;
    :cond_1
    const-string v6, "power_on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 56
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disableMusicControl()V

    .line 58
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v6, v6, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    if-nez v6, :cond_2

    .line 59
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    invoke-virtual {v6}, Lcom/lge/systemui/FMRadio;->addComponent()V

    .line 62
    :cond_2
    const-string v6, "frequency"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 63
    .local v3, intFrequency:I
    int-to-double v6, v3

    const-wide/high16 v8, 0x4059

    div-double/2addr v6, v8

    double-to-float v1, v6

    .line 64
    .local v1, floatFrequency:F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MHz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, frequency:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mChannel:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$100(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v4, ""

    .line 68
    .local v4, stationName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    if-nez v4, :cond_3

    .line 70
    const-string v4, ""

    .line 73
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 75
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 79
    :cond_4
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v6, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    #getter for: Lcom/lge/systemui/FMRadio;->mStationName:[Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lge/systemui/FMRadio;->access$200(Lcom/lge/systemui/FMRadio;)[Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/systemui/FMRadio$1;->this$0:Lcom/lge/systemui/FMRadio;

    iget v7, v7, Lcom/lge/systemui/Component;->mComponentType:I

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 83
    .end local v1           #floatFrequency:F
    .end local v2           #frequency:Ljava/lang/String;
    .end local v3           #intFrequency:I
    .end local v4           #stationName:Ljava/lang/String;
    :cond_5
    const-string v6, "power_off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0
.end method
