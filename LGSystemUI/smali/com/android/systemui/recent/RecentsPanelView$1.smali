.class Lcom/android/systemui/recent/RecentsPanelView$1;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/recent/RecentsPanelView;->mStopAllButtonFlag:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$602(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    .line 608
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->onClickStopAllButton()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 609
    return-void
.end method
