.class Lcom/lge/quicksettings/QuickSettingsButton$1;
.super Ljava/lang/Object;
.source "QuickSettingsButton.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/QuickSettingsButton;-><init>(Lcom/lge/quicksettings/QuickSettings;Lcom/lge/systemui/ButtonItem;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/QuickSettingsButton;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/QuickSettingsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/quicksettings/QuickSettingsButton$1;->this$0:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 84
    packed-switch p2, :pswitch_data_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/lge/quicksettings/QuickSettingsButton$1;->this$0:Lcom/lge/quicksettings/QuickSettingsButton;

    invoke-virtual {v1, p1}, Lcom/lge/quicksettings/QuickSettingsButton;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
