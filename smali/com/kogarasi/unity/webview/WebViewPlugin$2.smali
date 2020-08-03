.class Lcom/kogarasi/unity/webview/WebViewPlugin$2;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kogarasi/unity/webview/WebViewPlugin;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;


# direct methods
.method constructor <init>(Lcom/kogarasi/unity/webview/WebViewPlugin;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$2;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$2;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$2;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v1}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$2;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$002(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
