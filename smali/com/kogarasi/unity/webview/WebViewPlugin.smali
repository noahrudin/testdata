.class public Lcom/kogarasi/unity/webview/WebViewPlugin;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"


# static fields
.field private static layout:Landroid/widget/FrameLayout;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/widget/FrameLayout;
    .locals 1

    .line 19
    sget-object v0, Lcom/kogarasi/unity/webview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 19
    sput-object p0, Lcom/kogarasi/unity/webview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .line 50
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 51
    new-instance v1, Lcom/kogarasi/unity/webview/WebViewPlugin$2;

    invoke-direct {v1, p0}, Lcom/kogarasi/unity/webview/WebViewPlugin$2;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Init(Ljava/lang/String;)V
    .locals 2

    .line 27
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 28
    new-instance v1, Lcom/kogarasi/unity/webview/WebViewPlugin$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/kogarasi/unity/webview/WebViewPlugin$1;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 64
    new-instance v1, Lcom/kogarasi/unity/webview/WebViewPlugin$3;

    invoke-direct {v1, p0, p1}, Lcom/kogarasi/unity/webview/WebViewPlugin$3;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetMargins(IIII)V
    .locals 3

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 73
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 75
    new-instance p2, Lcom/kogarasi/unity/webview/WebViewPlugin$4;

    invoke-direct {p2, p0, v0}, Lcom/kogarasi/unity/webview/WebViewPlugin$4;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetVisibility(Z)V
    .locals 2

    .line 83
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 84
    new-instance v1, Lcom/kogarasi/unity/webview/WebViewPlugin$5;

    invoke-direct {v1, p0, p1}, Lcom/kogarasi/unity/webview/WebViewPlugin$5;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
