.class Lcom/kogarasi/unity/webview/WebViewPlugin$3;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kogarasi/unity/webview/WebViewPlugin;->LoadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$3;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    iput-object p2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$3;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
