.class Lcom/prime31/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/util/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$moreSkus:Ljava/util/List;

.field private final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper;ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iput-boolean p2, p0, Lcom/prime31/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/prime31/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/prime31/util/IabHelper$2;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/prime31/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 757
    new-instance v0, Lcom/prime31/util/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 761
    :try_start_0
    iget-object v2, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v3, p0, Lcom/prime31/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/prime31/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/prime31/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/prime31/util/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lcom/prime31/util/IabException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 769
    new-instance v2, Lcom/prime31/util/IabResult;

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in queryInventory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    .line 765
    invoke-virtual {v0}, Lcom/prime31/util/IabException;->getResult()Lcom/prime31/util/IabResult;

    move-result-object v0

    .line 772
    :goto_0
    iget-object v2, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    invoke-virtual {v2}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    .line 777
    iget-object v2, p0, Lcom/prime31/util/IabHelper$2;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v2, v2, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prime31/util/IabHelper$2;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 779
    iget-object v3, p0, Lcom/prime31/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/prime31/util/IabHelper$2$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/prime31/util/IabHelper$2$1;-><init>(Lcom/prime31/util/IabHelper$2;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
