.class Lcom/prime31/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/prime31/util/IabHelper$2;

.field private final synthetic val$inv_f:Lcom/prime31/util/Inventory;

.field private final synthetic val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic val$result_f:Lcom/prime31/util/IabResult;


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper$2;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$2$1;->this$1:Lcom/prime31/util/IabHelper$2;

    iput-object p2, p0, Lcom/prime31/util/IabHelper$2$1;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lcom/prime31/util/IabHelper$2$1;->val$result_f:Lcom/prime31/util/IabResult;

    iput-object p4, p0, Lcom/prime31/util/IabHelper$2$1;->val$inv_f:Lcom/prime31/util/Inventory;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/prime31/util/IabHelper$2$1;->val$listener:Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/prime31/util/IabHelper$2$1;->val$result_f:Lcom/prime31/util/IabResult;

    iget-object v2, p0, Lcom/prime31/util/IabHelper$2$1;->val$inv_f:Lcom/prime31/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V

    return-void
.end method
