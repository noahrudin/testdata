.class Lcom/kogarasi/unity/webview/WebViewPlugin$1;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kogarasi/unity/webview/WebViewPlugin;->Init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$gameObject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    iput-object p2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$gameObject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    iget-object v1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$gameObject:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kogarasi/unity/webview/WebViewFactory;->Create(Landroid/app/Activity;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$002(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 31
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$102(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 33
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->val$a:Landroid/app/Activity;

    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 35
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 38
    :cond_0
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$1;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v2}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-static {}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$100()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/kogarasi/unity/webview/WebViewPlugin$1$1;

    invoke-direct {v1, p0}, Lcom/kogarasi/unity/webview/WebViewPlugin$1$1;-><init>(Lcom/kogarasi/unity/webview/WebViewPlugin$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
