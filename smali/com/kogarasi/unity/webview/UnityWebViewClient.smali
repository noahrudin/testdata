.class public Lcom/kogarasi/unity/webview/UnityWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "UnityWebViewClient.java"


# instance fields
.field private mGameObject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/kogarasi/unity/webview/UnityWebViewClient;->mGameObject:Ljava/lang/String;

    const-string v0, "onLoadFinish"

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/kogarasi/unity/webview/UnityWebViewClient;->mGameObject:Ljava/lang/String;

    const-string p3, "onLoadStart"

    invoke-static {p1, p3, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/kogarasi/unity/webview/UnityWebViewClient;->mGameObject:Ljava/lang/String;

    const-string p2, "onLoadFail"

    invoke-static {p1, p2, p4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGameObject(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/kogarasi/unity/webview/UnityWebViewClient;->mGameObject:Ljava/lang/String;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string p1, "unity:"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/kogarasi/unity/webview/UnityWebViewClient;->mGameObject:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onOpenURL"

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
