.class public Lcom/lge/systemui/WIFIONOFFActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WIFIONOFFActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mIDIcon:I

.field private mMessage:Ljava/lang/String;

.field private mNBtnText:Ljava/lang/String;

.field private mPBtnText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mTitle:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mMessage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mPBtnText:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mNBtnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIONOFFActivity;->finish()V

    .line 110
    return-void

    .line 106
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIONOFFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 61
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 63
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mTitle:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    :goto_0
    const-string v2, "iconid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mIDIcon:I

    .line 71
    iget v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mIDIcon:I

    if-eqz v2, :cond_1

    .line 72
    iget v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mIDIcon:I

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 77
    :goto_1
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mMessage:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mMessage:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 84
    :goto_2
    const-string v2, "pbtntext"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mPBtnText:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mPBtnText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 86
    const-string v2, "pbtntext"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 91
    :goto_3
    const-string v2, "nbtntext"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mNBtnText:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/lge/systemui/WIFIONOFFActivity;->mNBtnText:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 93
    const-string v2, "nbtntext"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 98
    :goto_4
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    invoke-virtual {p0}, Lcom/lge/systemui/WIFIONOFFActivity;->setupAlert()V

    .line 101
    return-void

    .line 67
    :cond_0
    const-string v2, "WIFIONOFFActivity"

    const-string v3, "[No Title]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "WIFIONOFFActivity"

    const-string v3, "[No Title Icon]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :cond_2
    const-string v2, "WIFIONOFFActivity"

    const-string v3, "[No Message]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 88
    :cond_3
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/lge/systemui/WIFIONOFFActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_3

    .line 95
    :cond_4
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/lge/systemui/WIFIONOFFActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_4
.end method
