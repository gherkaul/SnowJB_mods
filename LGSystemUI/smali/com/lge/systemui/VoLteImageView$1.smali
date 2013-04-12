.class Lcom/lge/systemui/VoLteImageView$1;
.super Landroid/database/ContentObserver;
.source "VoLteImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/VoLteImageView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/VoLteImageView;


# direct methods
.method constructor <init>(Lcom/lge/systemui/VoLteImageView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    #getter for: Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$000(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_indicator_volte_icon"

    invoke-static {v0, v1}, Lcom/lge/systemui/VoLteImageView;->queryCallSettingValueByKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    #setter for: Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z
    invoke-static {v0, v2}, Lcom/lge/systemui/VoLteImageView;->access$102(Lcom/lge/systemui/VoLteImageView;Z)Z

    .line 77
    :goto_0
    const-string v0, "VoLteImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ContentObserver] : show_indicator_volte_icon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    #getter for: Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z
    invoke-static {v2}, Lcom/lge/systemui/VoLteImageView;->access$100(Lcom/lge/systemui/VoLteImageView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    #calls: Lcom/lge/systemui/VoLteImageView;->updateVoLteIcon()V
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$200(Lcom/lge/systemui/VoLteImageView;)V

    .line 79
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$1;->this$0:Lcom/lge/systemui/VoLteImageView;

    const/4 v1, 0x0

    #setter for: Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z
    invoke-static {v0, v1}, Lcom/lge/systemui/VoLteImageView;->access$102(Lcom/lge/systemui/VoLteImageView;Z)Z

    goto :goto_0
.end method
