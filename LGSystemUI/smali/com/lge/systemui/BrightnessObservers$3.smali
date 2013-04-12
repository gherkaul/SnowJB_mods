.class Lcom/lge/systemui/BrightnessObservers$3;
.super Landroid/database/ContentObserver;
.source "BrightnessObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemui/BrightnessObservers;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemui/BrightnessObservers;

.field final synthetic val$onChangeHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/lge/systemui/BrightnessObservers;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/systemui/BrightnessObservers$3;->this$0:Lcom/lge/systemui/BrightnessObservers;

    iput-object p3, p0, Lcom/lge/systemui/BrightnessObservers$3;->val$onChangeHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    iget-object v0, p0, Lcom/lge/systemui/BrightnessObservers$3;->val$onChangeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method
