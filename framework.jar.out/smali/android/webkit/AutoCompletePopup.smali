.class Landroid/webkit/AutoCompletePopup;
.super Ljava/lang/Object;
.source "AutoCompletePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AutoCompletePopup$AnchorView;
    }
.end annotation


# static fields
.field private static final AUTOFILL_FORM:I = 0x64


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Landroid/view/View;

.field private mDoNotApplyFilter:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHandler:Landroid/os/Handler;

.field private mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

.field private mIsAutoFillProfileSet:Z

.field private mItemClicked:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mQueryId:I

.field private mText:Ljava/lang/CharSequence;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 1
    .parameter "webView"
    .parameter "inputConnection"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 60
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    .line 62
    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    .line 63
    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mItemClicked:Z

    .line 65
    new-instance v0, Landroid/webkit/AutoCompletePopup$1;

    invoke-direct {v0, p0}, Landroid/webkit/AutoCompletePopup$1;-><init>(Landroid/webkit/AutoCompletePopup;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/AutoCompletePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/AutoCompletePopup;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method private ensurePopup()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    .line 281
    new-instance v0, Landroid/webkit/AutoCompletePopup$AnchorView;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/AutoCompletePopup$AnchorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    .line 282
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 283
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private pushTextToInputConnection()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 227
    .local v0, oldText:Landroid/text/Editable;
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 228
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->replaceSelection(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 230
    return-void
.end method


# virtual methods
.method public clearAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    iput-object v1, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    .line 128
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 130
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 234
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 235
    if-lez p1, :cond_3

    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    :cond_0
    move v2, v4

    .line 237
    .local v2, showDropDown:Z
    :goto_0
    if-eqz v2, :cond_6

    .line 239
    const/4 v3, 0x1

    .line 240
    .local v3, showPopup:Z
    iget-boolean v6, p0, Landroid/webkit/AutoCompletePopup;->mItemClicked:Z

    if-ne v6, v4, :cond_1

    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 243
    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, Item:Ljava/lang/Object;
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v7, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-ne v6, v4, :cond_4

    .line 245
    const/4 v3, 0x0

    .line 251
    .end local v0           #Item:Ljava/lang/Object;
    .end local v1           #i:I
    :cond_1
    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 253
    iget-object v6, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 258
    :cond_2
    if-ne v3, v4, :cond_5

    .line 259
    iget-object v4, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 260
    iget-object v4, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 270
    .end local v3           #showPopup:Z
    :goto_2
    iput-boolean v5, p0, Landroid/webkit/AutoCompletePopup;->mItemClicked:Z

    .line 271
    return-void

    .end local v2           #showDropDown:Z
    :cond_3
    move v2, v5

    .line 235
    goto :goto_0

    .line 241
    .restart local v0       #Item:Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #showDropDown:Z
    .restart local v3       #showPopup:Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    .end local v0           #Item:Ljava/lang/Object;
    .end local v1           #i:I
    :cond_5
    iput-boolean v4, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    .line 264
    iget-object v4, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_2

    .line 268
    .end local v3           #showPopup:Z
    :cond_6
    iget-object v4, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v2, :cond_0

    .line 219
    :goto_0
    return-void

    .line 188
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getIsAutoFillable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 190
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->pushTextToInputConnection()V

    .line 192
    iget-boolean v2, p0, Landroid/webkit/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget v3, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewClassic;->autoFillForm(I)V

    .line 218
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    .line 200
    .local v1, webChromeClient:Landroid/webkit/WebChromeClient;
    if-eqz v1, :cond_1

    .line 201
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebChromeClient;->setupAutoFill(Landroid/os/Message;)V

    goto :goto_1

    .line 207
    .end local v1           #webChromeClient:Landroid/webkit/WebChromeClient;
    :cond_3
    if-gez p3, :cond_4

    .line 208
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, selectedItem:Ljava/lang/Object;
    :goto_2
    if-eqz v0, :cond_1

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/AutoCompletePopup;->mItemClicked:Z

    .line 214
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v2, v0}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->pushTextToInputConnection()V

    goto :goto_1

    .line 210
    .end local v0           #selectedItem:Ljava/lang/Object;
    :cond_4
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .restart local v0       #selectedItem:Ljava/lang/Object;
    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 78
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    if-nez v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 85
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 86
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_2
    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 91
    iget-object v3, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 92
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 95
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 96
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    move v1, v2

    .line 97
    goto :goto_0

    .line 101
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    iget-object v2, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public resetRect()V
    .locals 10

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 150
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v2

    .line 151
    .local v2, left:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v5

    .line 152
    .local v5, right:I
    sub-int v7, v5, v2

    .line 153
    .local v7, width:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 155
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v0

    .line 156
    .local v0, bottom:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, p0, Landroid/webkit/AutoCompletePopup;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v6

    .line 157
    .local v6, top:I
    sub-int v1, v0, v6

    .line 159
    .local v1, height:I
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 161
    .local v3, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/4 v4, 0x0

    .line 162
    .local v4, needsUpdate:Z
    if-nez v3, :cond_3

    .line 163
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v3, v7, v1, v2, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 174
    .restart local v3       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 175
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_1
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 178
    iget-object v8, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->show()V

    .line 180
    :cond_2
    return-void

    .line 165
    :cond_3
    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    if-ne v8, v2, :cond_4

    iget v8, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-ne v8, v6, :cond_4

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v7, :cond_4

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, v1, :cond_0

    .line 167
    :cond_4
    const/4 v4, 0x1

    .line 168
    iput v2, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 169
    iput v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 170
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-direct {p0}, Landroid/webkit/AutoCompletePopup;->ensurePopup()V

    .line 136
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    .line 139
    if-eqz p1, :cond_0

    .line 140
    check-cast p1, Landroid/widget/Filterable;

    .end local p1           #adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-interface {p1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    .line 141
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/AutoCompletePopup;->resetRect()V

    .line 146
    return-void

    .line 143
    .restart local p1       #adapter:Landroid/widget/ListAdapter;,"TT;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    goto :goto_0
.end method

.method public setAutoFillQueryId(I)V
    .locals 0
    .parameter "queryId"

    .prologue
    .line 121
    iput p1, p0, Landroid/webkit/AutoCompletePopup;->mQueryId:I

    .line 122
    return-void
.end method

.method public setIsAutoFillProfileSet(Z)V
    .locals 0
    .parameter "isAutoFillProfileSet"

    .prologue
    .line 222
    iput-boolean p1, p0, Landroid/webkit/AutoCompletePopup;->mIsAutoFillProfileSet:Z

    .line 223
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    .line 109
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    if-ne v0, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AutoCompletePopup;->mDoNotApplyFilter:Z

    .line 114
    iput-object p1, p0, Landroid/webkit/AutoCompletePopup;->mText:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/webkit/AutoCompletePopup;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    goto :goto_0
.end method
