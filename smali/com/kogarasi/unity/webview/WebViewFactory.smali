.class public Lcom/kogarasi/unity/webview/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Create(Landroid/app/Activity;Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 2

    .line 20
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    .line 21
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 p0, 0x1

    .line 22
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 24
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 25
    new-instance v1, Lcom/kogarasi/unity/webview/UnityWebViewClient;

    invoke-direct {v1}, Lcom/kogarasi/unity/webview/UnityWebViewClient;-><init>()V

    .line 26
    invoke-virtual {v1, p1}, Lcom/kogarasi/unity/webview/UnityWebViewClient;->setGameObject(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 28
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 30
    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 31
    sget-object p0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    return-object v0
.end method
