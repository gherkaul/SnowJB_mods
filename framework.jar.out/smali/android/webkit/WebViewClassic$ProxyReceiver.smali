.class Landroid/webkit/WebViewClassic$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1686
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1686
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$ProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1690
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1500()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    #calls: Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V
    invoke-static {p2}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/content/Intent;)V

    .line 1698
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1500()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.browser.BROWSER_PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const-string/jumbo v0, "webview"

    const-string v1, "ProxyReceiver: com.lge.browser.BROWSER_PROXY_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    #calls: Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;)V
    invoke-static {p2}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/content/Intent;)V

    goto :goto_0
.end method
