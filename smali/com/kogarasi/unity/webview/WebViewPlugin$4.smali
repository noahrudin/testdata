.class Lcom/kogarasi/unity/webview/WebViewPlugin$4;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kogarasi/unity/webview/WebViewPlugin;->SetMargins(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/kogarasi/unity/webview/WebViewPlugin;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$4;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    iput-object p2, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$4;->this$0:Lcom/kogarasi/unity/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/kogarasi/unity/webview/WebViewPlugin;->access$000(Lcom/kogarasi/unity/webview/WebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kogarasi/unity/webview/WebViewPlugin$4;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
