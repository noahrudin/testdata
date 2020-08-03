.class Lcom/prime31/GoogleIABPlugin$1$1;
.super Ljava/lang/Object;
.source "GoogleIABPlugin.java"

# interfaces
.implements Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prime31/GoogleIABPlugin$1;

.field private final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPlugin$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin$1$1;->this$1:Lcom/prime31/GoogleIABPlugin$1;

    iput-object p2, p0, Lcom/prime31/GoogleIABPlugin$1$1;->val$sku:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V
    .locals 7

    const-string v0, "Prime31"

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const-string v2, "0"

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 70
    :try_start_1
    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_3

    const-string p1, "Sku not found when querying inventory. Sending only the sku."

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    iget-object p2, p0, Lcom/prime31/GoogleIABPlugin$1$1;->val$sku:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v1}, Lcom/prime31/Soomla;->onMarketPurchaseFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prime31/util/SkuDetails;

    .line 72
    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/prime31/GoogleIABPlugin$1$1;->val$sku:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "found SkuDetails while querying inventory"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 76
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object v4

    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v3}, Lcom/prime31/Soomla;->onMarketPurchaseFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Failed to fetch SkuDetails. Sending only the sku."

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    iget-object p2, p0, Lcom/prime31/GoogleIABPlugin$1$1;->val$sku:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v1}, Lcom/prime31/Soomla;->onMarketPurchaseFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
