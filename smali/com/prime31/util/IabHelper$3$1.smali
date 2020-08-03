.class Lcom/prime31/util/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prime31/util/IabHelper$3;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$results:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper$3;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$3$1;->this$1:Lcom/prime31/util/IabHelper$3;

    iput-object p2, p0, Lcom/prime31/util/IabHelper$3$1;->val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;

    iput-object p3, p0, Lcom/prime31/util/IabHelper$3$1;->val$purchases:Ljava/util/List;

    iput-object p4, p0, Lcom/prime31/util/IabHelper$3$1;->val$results:Ljava/util/List;

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1228
    iget-object v0, p0, Lcom/prime31/util/IabHelper$3$1;->val$singleListener:Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;

    iget-object v1, p0, Lcom/prime31/util/IabHelper$3$1;->val$purchases:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prime31/util/Purchase;

    iget-object v3, p0, Lcom/prime31/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prime31/util/IabResult;

    invoke-interface {v0, v1, v2}, Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/prime31/util/Purchase;Lcom/prime31/util/IabResult;)V

    return-void
.end method
