.class public Lcom/lge/systemui/AttachLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AttachLinearLayout.java"


# instance fields
.field private mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/systemui/AttachLinearLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lge/systemui/AttachLinearLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;->onSizeChanged(Landroid/view/View;IIII)V

    .line 45
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/systemui/AttachLinearLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    .line 38
    return-void
.end method
