.class public abstract Lcom/lge/systemui/Component;
.super Ljava/lang/Object;
.source "Component.java"


# static fields
.field public static final COMPONENT_URI:Landroid/net/Uri;


# instance fields
.field protected mComponentHeight:I

.field protected mComponentType:I

.field protected mContext:Landroid/content/Context;

.field protected mMiniComponentView:Landroid/view/ViewGroup;

.field protected mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field protected mSwipeComponentView:Landroid/view/ViewGroup;

.field protected mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.lge.systemui.systemuiprovider/component"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/Component;->COMPONENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/lge/systemui/Component;->mComponentType:I

    .line 36
    iput v0, p0, Lcom/lge/systemui/Component;->mComponentHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lge/systemui/Component;->mComponentHeight:I

    return v0
.end method

.method public getMiniComponentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/systemui/Component;->mMiniComponentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isCacheVisible()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/lge/systemui/Component;->mVisible:Z

    return v0
.end method

.method protected removeComponent()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lge/systemui/Component;->mSwipeRowLayout:Lcom/lge/systemui/SwipeRowLayout;

    invoke-virtual {v0}, Lcom/lge/systemui/SwipeRowLayout;->removeAllViews()V

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemui/Component;->mSwipeComponentView:Landroid/view/ViewGroup;

    .line 66
    const-string v0, "MiniComponent"

    const-string v1, "removeComponent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/systemui/Component;->mComponentHeight:I

    .line 58
    return-void
.end method
