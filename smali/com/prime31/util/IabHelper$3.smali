.class Lcom/prime31/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/util/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$multiListener:Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper;Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$3;->this$0:Lcom/prime31/util/IabHelper;

    iput-object p2, p0, Lcom/prime31/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/prime31/util/IabHelper$3;->val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/prime31/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/prime31/util/IabHelper$3;->val$multiListener:Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1221
    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->this$0:Lcom/prime31/util/IabHelper;

    invoke-virtual {v1}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    .line 1222
    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v1, v1, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/prime31/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/prime31/util/IabHelper$3$1;

    iget-object v4, p0, Lcom/prime31/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/prime31/util/IabHelper$3$1;-><init>(Lcom/prime31/util/IabHelper$3;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1233
    :cond_0
    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean v1, v1, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/prime31/util/IabHelper$3;->val$multiListener:Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_1

    .line 1235
    iget-object v2, p0, Lcom/prime31/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/prime31/util/IabHelper$3$2;

    iget-object v4, p0, Lcom/prime31/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/prime31/util/IabHelper$3$2;-><init>(Lcom/prime31/util/IabHelper$3;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .line 1208
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prime31/util/Purchase;

    .line 1212
    :try_start_0
    iget-object v3, p0, Lcom/prime31/util/IabHelper$3;->this$0:Lcom/prime31/util/IabHelper;

    invoke-virtual {v3, v2}, Lcom/prime31/util/IabHelper;->consume(Lcom/prime31/util/Purchase;)V

    .line 1213
    new-instance v3, Lcom/prime31/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/prime31/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1217
    invoke-virtual {v2}, Lcom/prime31/util/IabException;->getResult()Lcom/prime31/util/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
