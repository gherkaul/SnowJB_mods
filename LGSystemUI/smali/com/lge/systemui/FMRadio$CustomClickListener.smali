.class Lcom/lge/systemui/FMRadio$CustomClickListener;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomClickListener"
.end annotation


# instance fields
.field private mControlFlag:I

.field final synthetic this$0:Lcom/lge/systemui/FMRadio;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/FMRadio;I)V
    .locals 1
    .parameter
    .parameter "flag"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    .line 245
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->mControlFlag:I

    .line 246
    iput p2, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->mControlFlag:I

    .line 247
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 250
    iget v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->mControlFlag:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "request"

    const-string v4, "seek_backward"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "request"

    const-string v4, "power_off"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.fmradio.command.fmradioservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "request"

    const-string v4, "seek_forward"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget v1, v1, Lcom/lge/systemui/Component;->mComponentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.lge.category.APP_FMRADIO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object v1, p0, Lcom/lge/systemui/FMRadio$CustomClickListener;->this$0:Lcom/lge/systemui/FMRadio;

    iget-object v1, v1, Lcom/lge/systemui/Component;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
