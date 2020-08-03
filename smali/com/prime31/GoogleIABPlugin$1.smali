.class Lcom/prime31/GoogleIABPlugin$1;
.super Ljava/lang/Object;
.source "GoogleIABPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPlugin;->fetchSkuDetailsForSoomlaPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/GoogleIABPlugin;

.field private final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPlugin;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin$1;->this$0:Lcom/prime31/GoogleIABPlugin;

    iput-object p2, p0, Lcom/prime31/GoogleIABPlugin$1;->val$sku:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$1;->val$sku:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$1;->this$0:Lcom/prime31/GoogleIABPlugin;

    iget-object v1, v1, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    new-instance v2, Lcom/prime31/GoogleIABPlugin$1$1;

    iget-object v3, p0, Lcom/prime31/GoogleIABPlugin$1;->val$sku:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/prime31/GoogleIABPlugin$1$1;-><init>(Lcom/prime31/GoogleIABPlugin$1;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method
