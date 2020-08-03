.class Lcom/kogarasi/unity/webview/WebViewPlugin$5;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kogarasi/unity/webview/WebViewPlugin;->SetVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

.field final synthetic val$visibility:Z


# direct methods
.method constructor <init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Z)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    iput-boolean p2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->val$visibility:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->val$visibility:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 88
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 89
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$5;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method
