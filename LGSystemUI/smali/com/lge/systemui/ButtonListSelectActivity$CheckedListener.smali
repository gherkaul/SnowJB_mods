.class Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;
.super Ljava/lang/Object;
.source "ButtonListSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemui/ButtonListSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedListener"
.end annotation


# instance fields
.field mItem:Lcom/lge/systemui/ButtonItem;

.field final synthetic this$0:Lcom/lge/systemui/ButtonListSelectActivity;


# direct methods
.method public constructor <init>(Lcom/lge/systemui/ButtonListSelectActivity;Lcom/lge/systemui/ButtonItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;->this$0:Lcom/lge/systemui/ButtonListSelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;->mItem:Lcom/lge/systemui/ButtonItem;

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;->mItem:Lcom/lge/systemui/ButtonItem;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/systemui/ButtonItem;->setItemEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/lge/systemui/ButtonListSelectActivity$CheckedListener;->this$0:Lcom/lge/systemui/ButtonListSelectActivity;

    #getter for: Lcom/lge/systemui/ButtonListSelectActivity;->mSettingAdapter:Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;
    invoke-static {v0}, Lcom/lge/systemui/ButtonListSelectActivity;->access$000(Lcom/lge/systemui/ButtonListSelectActivity;)Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/systemui/ButtonListSelectActivity$SettingAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method
