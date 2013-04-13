.class public Landroid/webkit/LGSelectActionPopupWindow;
.super Ljava/lang/Object;
.source "LGSelectActionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x2030002


# instance fields
.field private mClientContext:Landroid/content/Context;

.field private mContentView:Landroid/view/ViewGroup;

.field private mCopyView:Landroid/widget/TextView;

.field private mCutView:Landroid/widget/TextView;

.field private mEnableSelectAll:Z

.field private mFindView:Landroid/widget/TextView;

.field mIsEditable:Z

.field private mPasteView:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mSearchView:Landroid/widget/TextView;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mShareView:Landroid/widget/TextView;

.field private mTracks:Landroid/view/ViewGroup;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 7
    .parameter "c"
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v6, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 59
    iput-object p2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 61
    iput-object p1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    .line 62
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 65
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 68
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 69
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 70
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 71
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 73
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/webkit/LGSelectActionPopupWindow$1;

    invoke-direct {v2, p0}, Landroid/webkit/LGSelectActionPopupWindow$1;-><init>(Landroid/webkit/LGSelectActionPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->initContentView()V

    .line 85
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_0
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 92
    .end local v0           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 187
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 188
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 193
    return-void
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 297
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 299
    iget v2, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionX:I

    .line 300
    .local v2, positionX:I
    iget v3, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionY:I

    .line 304
    .local v3, positionY:I
    if-gez v2, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 340
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 309
    .local v4, width:I
    aget v5, v1, v8

    if-ge v2, v5, :cond_1

    .line 310
    aget v2, v1, v8

    .line 312
    :cond_1
    add-int v5, v2, v4

    aget v6, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-le v5, v6, :cond_2

    .line 313
    sub-int/2addr v2, v4

    .line 319
    :cond_2
    if-gez v3, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 325
    .local v0, height:I
    aget v5, v1, v9

    if-ge v3, v5, :cond_4

    .line 326
    aget v3, v1, v9

    .line 329
    :cond_4
    add-int v5, v3, v0

    aget v6, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-le v5, v6, :cond_5

    .line 330
    sub-int/2addr v3, v0

    .line 334
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 335
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v3, v10, v10}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 337
    :cond_6
    iget-object v5, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, p1, v8, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private updateSelectAll()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    iget-boolean v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    iget-object v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, -0x100

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    return-void

    .line 183
    :cond_0
    const v0, -0x777778

    goto :goto_0
.end method


# virtual methods
.method public enableSelectAll(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    .line 178
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->updateSelectAll()V

    .line 179
    return-void
.end method

.method public getEnableSelectAll()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mEnableSelectAll:Z

    return v0
.end method

.method protected getLocalPosition(Landroid/view/View;)Landroid/graphics/Point;
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, -0x1

    .line 196
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->measureContent()V

    .line 197
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 198
    .local v2, point:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v4, selection:Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    .line 201
    .local v10, width:I
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 203
    .local v0, height:I
    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 204
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 205
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSelectionRegion()Landroid/graphics/Rect;

    move-result-object v4

    .line 206
    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 209
    iget-object v11, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 210
    .local v5, webView:Landroid/webkit/WebView;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 212
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 213
    .local v7, webviewLeft:I
    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 214
    .local v8, webviewRight:I
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 215
    .local v9, webviewTop:I
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 218
    .local v6, webviewBottom:I
    iget v11, v4, Landroid/graphics/Rect;->right:I

    if-lt v11, v7, :cond_0

    iget v11, v4, Landroid/graphics/Rect;->left:I

    if-le v11, v8, :cond_2

    .line 219
    :cond_0
    iput v13, v2, Landroid/graphics/Point;->x:I

    .line 225
    :goto_0
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v11, v9, :cond_1

    iget v11, v4, Landroid/graphics/Rect;->top:I

    if-le v11, v6, :cond_3

    .line 226
    :cond_1
    iput v13, v2, Landroid/graphics/Point;->y:I

    .line 237
    :goto_1
    return-object v2

    .line 221
    :cond_2
    sub-int v11, v8, v7

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v10, 0x2

    sub-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 228
    :cond_3
    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v9

    if-ge v0, v11, :cond_4

    .line 229
    iget v11, v4, Landroid/graphics/Rect;->top:I

    iput v11, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 230
    :cond_4
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v6, v11

    if-ge v0, v11, :cond_5

    .line 231
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iput v11, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 233
    :cond_5
    sub-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v9

    div-int/lit8 v12, v0, 0x2

    sub-int/2addr v11, v12

    iput v11, v2, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 344
    return-void
.end method

.method protected initContentView()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, -0x2

    const v12, 0x2030002

    const/4 v11, 0x0

    .line 95
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 98
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x2030001

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 100
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v10, 0x20b003f

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    .line 102
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v10, 0x10805b2

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 105
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 108
    .local v6, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/webkit/LGSelectActionPopupWindow;->mClientContext:Landroid/content/Context;

    const-string v10, "clipboard"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    move-object v3, v7

    check-cast v3, Landroid/content/ClipboardManager;

    .line 111
    .local v3, cm:Landroid/content/ClipboardManager;
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    iput-boolean v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 112
    iget-boolean v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v8

    .line 113
    .local v2, canPaste:Z
    :goto_0
    iget-boolean v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    if-nez v7, :cond_5

    move v1, v8

    .line 114
    .local v1, canFind:Z
    :goto_1
    iget-boolean v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    .line 118
    .local v0, canCut:Z
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    .line 119
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    const v8, 0x104000d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    .line 125
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    const v8, 0x1040001

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    .line 132
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    const v8, 0x1040003

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    :cond_0
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    .line 140
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    const v8, 0x104000b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    :cond_1
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v5

    .line 148
    .local v5, settings:Landroid/webkit/WebSettings;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v7

    if-nez v7, :cond_3

    .line 149
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    .line 150
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    const v8, 0x10404cd

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    .line 157
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    const v8, 0x10404ce

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    :cond_2
    invoke-virtual {v4, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    .line 164
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mTracks:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    const v8, 0x10404cf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v7, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    :cond_3
    return-void

    .end local v0           #canCut:Z
    .end local v1           #canFind:Z
    .end local v2           #canPaste:Z
    .end local v5           #settings:Landroid/webkit/WebSettings;
    :cond_4
    move v2, v9

    .line 112
    goto/16 :goto_0

    .restart local v2       #canPaste:Z
    :cond_5
    move v1, v9

    .line 113
    goto/16 :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/LGSelectActionPopupWindow;->updateSelectAll()V

    .line 284
    const/4 v0, 0x1

    return v0

    .line 244
    :pswitch_1
    const v0, -0x3c2d29

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 250
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSelectAllView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 251
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mIsEditable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->selectAll(Z)V

    .line 252
    invoke-virtual {p0, v2}, Landroid/webkit/LGSelectActionPopupWindow;->enableSelectAll(Z)V

    .line 273
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCopyView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 254
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v1, 0xb7

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->getSelection(I)V

    .line 255
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mShareView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 257
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->getSelection(I)V

    .line 258
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mFindView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 260
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->getSelection(I)V

    .line 261
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mSearchView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 263
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->getSelection(I)V

    .line 264
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 265
    :cond_5
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mCutView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 266
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 267
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    goto :goto_1

    .line 268
    :cond_6
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPasteView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 270
    invoke-virtual {p0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 271
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_1

    .line 276
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Landroid/webkit/LGSelectActionPopupWindow;->getLocalPosition(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 289
    .local v0, p:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionX:I

    .line 290
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/webkit/LGSelectActionPopupWindow;->mPositionY:I

    .line 292
    invoke-direct {p0, p1}, Landroid/webkit/LGSelectActionPopupWindow;->updatePosition(Landroid/view/View;)V

    .line 293
    return-void
.end method
