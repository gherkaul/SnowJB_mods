.class public Lcom/lge/debug/DebugDisplay_Svc;
.super Landroid/app/Service;
.source "DebugDisplay_Svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/debug/DebugDisplay_Svc$LoadView;
    }
.end annotation


# static fields
.field public static DEBUG_FONT_SIZE:I

.field public static mStatusBarHeight:I


# instance fields
.field private mActList:Lcom/lge/debug/IDebugDisplay;

.field private final mBinder:Lcom/lge/debug/IDebugDisplay_Svc$Stub;

.field private mDisplay:Lcom/lge/debug/IDebugDisplay;

.field private mLayoutGuide:Lcom/lge/debug/IDebugDisplay;

.field private mMemInfo:Lcom/lge/debug/IDebugDisplay;

.field private mRectInfoArea:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 159
    new-instance v0, Lcom/lge/debug/DebugDisplay_Svc$1;

    invoke-direct {v0, p0}, Lcom/lge/debug/DebugDisplay_Svc$1;-><init>(Lcom/lge/debug/DebugDisplay_Svc;)V

    iput-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mBinder:Lcom/lge/debug/IDebugDisplay_Svc$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/debug/DebugDisplay_Svc;Lcom/lge/debug/IDebugDisplay;)Lcom/lge/debug/IDebugDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/debug/DebugDisplay_Svc;->mDisplay:Lcom/lge/debug/IDebugDisplay;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/debug/DebugDisplay_Svc;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mRectInfoArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mActList:Lcom/lge/debug/IDebugDisplay;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mMemInfo:Lcom/lge/debug/IDebugDisplay;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/debug/DebugDisplay_Svc;)Lcom/lge/debug/IDebugDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mLayoutGuide:Lcom/lge/debug/IDebugDisplay;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mBinder:Lcom/lge/debug/IDebugDisplay_Svc$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 121
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 122
    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/lge/debug/DebugDisplay_Svc;->mStatusBarHeight:I

    .line 124
    new-instance v2, Lcom/lge/debug/ActList;

    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/debug/ActList;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc;->mActList:Lcom/lge/debug/IDebugDisplay;

    .line 125
    new-instance v2, Lcom/lge/debug/MemInfo;

    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/debug/MemInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc;->mMemInfo:Lcom/lge/debug/IDebugDisplay;

    .line 126
    new-instance v2, Lcom/lge/debug/LayoutGuide;

    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/debug/LayoutGuide;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc;->mLayoutGuide:Lcom/lge/debug/IDebugDisplay;

    .line 128
    const/high16 v2, 0x4170

    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/lge/debug/DebugDisplay_Svc;->DEBUG_FONT_SIZE:I

    .line 129
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc;->mRectInfoArea:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p0}, Lcom/lge/debug/DebugDisplay_Svc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 132
    .local v6, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/lge/debug/DebugDisplay_Svc$LoadView;

    invoke-direct {v2, p0, p0}, Lcom/lge/debug/DebugDisplay_Svc$LoadView;-><init>(Lcom/lge/debug/DebugDisplay_Svc;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/debug/DebugDisplay_Svc;->mView:Landroid/view/View;

    .line 133
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 141
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    const-string v1, "DebugScreen_Svc"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/lge/debug/DebugDisplay_Svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 144
    .local v7, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc;->mView:Landroid/view/View;

    invoke-interface {v7, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/lge/debug/DebugDisplay_Svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lge/debug/DebugDisplay_Svc;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/debug/DebugDisplay_Svc;->mView:Landroid/view/View;

    .line 152
    return-void
.end method
