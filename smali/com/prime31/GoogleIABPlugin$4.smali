.class Lcom/prime31/GoogleIABPlugin$4;
.super Ljava/lang/Object;
.source "GoogleIABPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPlugin;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/GoogleIABPlugin;

.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$f_itemType:Ljava/lang/String;

.field private final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin$4;->this$0:Lcom/prime31/GoogleIABPlugin;

    iput-object p2, p0, Lcom/prime31/GoogleIABPlugin$4;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/prime31/GoogleIABPlugin$4;->val$f_itemType:Ljava/lang/String;

    iput-object p4, p0, Lcom/prime31/GoogleIABPlugin$4;->val$developerPayload:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 273
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->this$0:Lcom/prime31/GoogleIABPlugin;

    invoke-virtual {v1}, Lcom/prime31/GoogleIABPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/prime31/GoogleIABProxyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->val$sku:Ljava/lang/String;

    const-string v2, "sku"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->val$f_itemType:Ljava/lang/String;

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->val$developerPayload:Ljava/lang/String;

    const-string v2, "developerPayload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->this$0:Lcom/prime31/GoogleIABPlugin;

    invoke-virtual {v1}, Lcom/prime31/GoogleIABPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object v0

    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$4;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prime31/Soomla;->onMarketPurchaseStarted(Ljava/lang/String;)V

    return-void
.end method
