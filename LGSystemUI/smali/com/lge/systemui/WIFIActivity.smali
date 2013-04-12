.class public Lcom/lge/systemui/WIFIActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WIFIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mIDIcon:I

.field private mMessage:Ljava/lang/String;

.field private mPBtnText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/lge/systemui/WIFIActivity;->mTitle:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/lge/systemui/WIFIActivity;->mMessage:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/lge/systemui/WIFIActivity;->mPBtnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIActivity;->finish()V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/lge/systemui/WIFIActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 53
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mTitle:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    :goto_0
    const-string v4, "iconid"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/lge/systemui/WIFIActivity;->mIDIcon:I

    .line 61
    iget v4, p0, Lcom/lge/systemui/WIFIActivity;->mIDIcon:I

    if-eqz v4, :cond_1

    .line 62
    iget v4, p0, Lcom/lge/systemui/WIFIActivity;->mIDIcon:I

    iput v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 67
    :goto_1
    const-string v4, "pbtntext"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mPBtnText:Ljava/lang/String;

    .line 68
    iget-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mPBtnText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 69
    const-string v4, "pbtntext"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 74
    :goto_2
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    const v4, 0x7f03003f

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, v:Landroid/view/View;
    const v4, 0x7f0c0123

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, wifi_content:Landroid/widget/TextView;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mMessage:Ljava/lang/String;

    .line 79
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mMessage:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/lge/systemui/WIFIActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_3
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIActivity;->setupAlert()V

    .line 86
    return-void

    .line 57
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wifi_content:Landroid/widget/TextView;
    :cond_0
    const-string v4, "WIFIActivity"

    const-string v5, "[No Title]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    const-string v4, "WIFIActivity"

    const-string v5, "[No Title Icon]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    :cond_2
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/lge/systemui/WIFIActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 82
    .restart local v2       #v:Landroid/view/View;
    .restart local v3       #wifi_content:Landroid/widget/TextView;
    :cond_3
    const-string v4, "WIFIActivity"

    const-string v5, "[No Message]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
