.class Lcom/lge/systemui/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/lge/systemui/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/systemui/RepeatingImageButton$1;->this$0:Lcom/lge/systemui/RepeatingImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/systemui/RepeatingImageButton$1;->this$0:Lcom/lge/systemui/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/lge/systemui/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/lge/systemui/RepeatingImageButton;->access$000(Lcom/lge/systemui/RepeatingImageButton;Z)V

    .line 92
    iget-object v0, p0, Lcom/lge/systemui/RepeatingImageButton$1;->this$0:Lcom/lge/systemui/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/lge/systemui/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/systemui/RepeatingImageButton$1;->this$0:Lcom/lge/systemui/RepeatingImageButton;

    iget-object v1, p0, Lcom/lge/systemui/RepeatingImageButton$1;->this$0:Lcom/lge/systemui/RepeatingImageButton;

    #getter for: Lcom/lge/systemui/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/lge/systemui/RepeatingImageButton;->access$100(Lcom/lge/systemui/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/lge/systemui/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_0
    return-void
.end method
