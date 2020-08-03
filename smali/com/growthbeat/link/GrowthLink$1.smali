.class Lcom/growthbeat/link/GrowthLink$1;
.super Ljava/lang/Object;
.source "GrowthLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/GrowthLink;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/link/GrowthLink;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/GrowthLink;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink$1;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 97
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/GrowthLink;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 98
    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$1;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/growthbeat/link/GrowthLink;->access$002(Lcom/growthbeat/link/GrowthLink;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-static {v0}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$1;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v1}, Lcom/growthbeat/link/GrowthLink;->access$000(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink$1;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v0}, Lcom/growthbeat/link/GrowthLink;->access$200(Lcom/growthbeat/link/GrowthLink;)V

    return-void
.end method
