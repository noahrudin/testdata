.class Lcom/growthbeat/link/GrowthLink$2$1;
.super Ljava/lang/Object;
.source "GrowthLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/GrowthLink$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthbeat/link/GrowthLink$2;

.field final synthetic val$click:Lcom/growthbeat/link/model/Click;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/GrowthLink$2;Lcom/growthbeat/link/model/Click;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->this$1:Lcom/growthbeat/link/GrowthLink$2;

    iput-object p2, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Pattern;->getLink()Lcom/growthbeat/link/model/Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Link;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "linkId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Pattern;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "patternId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Pattern;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Pattern;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/model/Intent;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intentId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink$2$1;->this$1:Lcom/growthbeat/link/GrowthLink$2;

    iget-object v0, v0, Lcom/growthbeat/link/GrowthLink$2;->this$0:Lcom/growthbeat/link/GrowthLink;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/growthbeat/link/GrowthLink;->access$302(Lcom/growthbeat/link/GrowthLink;Z)Z

    .line 144
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v0}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/model/Pattern;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/link/GrowthLink$2$1;->val$click:Lcom/growthbeat/link/model/Click;

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Click;->getPattern()Lcom/growthbeat/link/model/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/model/Pattern;->getIntent()Lcom/growthbeat/model/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/Growthbeat;->handleIntent(Lcom/growthbeat/model/Intent;)V

    :cond_1
    return-void
.end method
