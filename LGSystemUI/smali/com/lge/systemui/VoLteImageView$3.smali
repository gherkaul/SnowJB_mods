.class Lcom/lge/systemui/VoLteImageView$3;
.super Ljava/lang/Object;
.source "VoLteImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/VoLteImageView;->checkInitDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/VoLteImageView;


# direct methods
.method constructor <init>(Lcom/lge/systemui/VoLteImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    #getter for: Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$400(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_indicator_volte_icon"

    invoke-static {v0, v1}, Lcom/lge/systemui/VoLteImageView;->queryCallSettingValueByKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    #calls: Lcom/lge/systemui/VoLteImageView;->checkInitDB()V
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$500(Lcom/lge/systemui/VoLteImageView;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    #getter for: Lcom/lge/systemui/VoLteImageView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$600(Lcom/lge/systemui/VoLteImageView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_indicator_volte_icon"

    invoke-static {v0, v1}, Lcom/lge/systemui/VoLteImageView;->queryCallSettingValueByKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    #setter for: Lcom/lge/systemui/VoLteImageView;->PhoneSetings_DB_VoLTE:Z
    invoke-static {v0, v2}, Lcom/lge/systemui/VoLteImageView;->access$102(Lcom/lge/systemui/VoLteImageView;Z)Z

    .line 114
    iget-object v0, p0, Lcom/lge/systemui/VoLteImageView$3;->this$0:Lcom/lge/systemui/VoLteImageView;

    #calls: Lcom/lge/systemui/VoLteImageView;->updateVoLteIcon()V
    invoke-static {v0}, Lcom/lge/systemui/VoLteImageView;->access$200(Lcom/lge/systemui/VoLteImageView;)V

    goto :goto_0
.end method
