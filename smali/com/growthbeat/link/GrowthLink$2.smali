.class Lcom/growthbeat/link/GrowthLink$2;
.super Ljava/lang/Object;
.source "GrowthLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/GrowthLink;->handleOpenUrl(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/link/GrowthLink;

.field final synthetic val$clickId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/GrowthLink;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    iput-object p2, p0, Lcom/growthbeat/link/GrowthLink$2;->val$clickId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v0}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "Deeplinking..."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 125
    :try_start_0
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/Growthbeat;->waitClient()Lcom/growthbeat/model/Client;

    move-result-object v2

    invoke-virtual {v2}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$2;->val$clickId:Ljava/lang/String;

    iget-object v4, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v4}, Lcom/growthbeat/link/GrowthLink;->access$300(Lcom/growthbeat/link/GrowthLink;)Z

    move-result v4

    iget-object v5, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v5}, Lcom/growthbeat/link/GrowthLink;->access$400(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/growthbeat/link/model/Click;->deeplink(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/growthbeat/link/model/Click;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/link/model/Pattern;->getLink()Lcom/growthbeat/link/model/Link;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v3

    const-string v4, "Deeplink success. (clickId: %s)"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Click;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 133
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/growthbeat/link/GrowthLink$2$1;

    invoke-direct {v4, p0, v2}, Lcom/growthbeat/link/GrowthLink$2$1;-><init>(Lcom/growthbeat/link/GrowthLink$2;Lcom/growthbeat/link/model/Click;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v2}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v2

    const-string v3, "Failed to deeplink."

    invoke-virtual {v2, v3}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/growthbeat/GrowthbeatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 152
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/growthbeat/GrowthbeatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Deeplink is not found."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
