.class public Lcom/prime31/GoogleIABPlugin;
.super Lcom/prime31/GoogleIABPluginBase;
.source "GoogleIABPlugin.java"

# interfaces
.implements Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;
.implements Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;
.implements Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;


# static fields
.field private static BILLING_NOT_RUNNING_ERROR:Ljava/lang/String; = "The billing service is not running or billing is not supported. Aborting."

.field static final RC_REQUEST:I = 0x2711


# instance fields
.field private _currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

.field private _currentSkuBeingPurchased:Ljava/lang/String;

.field private _hasQueriedInventory:Z

.field private _purchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prime31/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private _skus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prime31/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public helper:Lcom/prime31/util/IabHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/prime31/GoogleIABPluginBase;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/prime31/GoogleIABPlugin;->_hasQueriedInventory:Z

    return-void
.end method

.method private fetchSkuDetailsForSoomlaPurchase(Ljava/lang/String;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/prime31/GoogleIABPlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/prime31/GoogleIABPlugin$1;-><init>(Lcom/prime31/GoogleIABPlugin;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/prime31/GoogleIABPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPurchasedProductForSku(Ljava/lang/String;)Lcom/prime31/util/Purchase;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prime31/util/Purchase;

    .line 43
    invoke-virtual {v1}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method


# virtual methods
.method public areSubscriptionsSupported()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "areSubscriptionsSupported"

    invoke-static {v0, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/prime31/util/IabHelper;->subscriptionsSupported()Z

    move-result v0

    return v0
.end method

.method public consumeProduct(Ljava/lang/String;)V
    .locals 4

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumeProduct"

    invoke-static {v0, v1, p1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const-string v1, "Prime31"

    if-nez v0, :cond_0

    .line 291
    sget-object p1, Lcom/prime31/GoogleIABPlugin;->BILLING_NOT_RUNNING_ERROR:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/prime31/GoogleIABPlugin;->_hasQueriedInventory:Z

    if-nez v0, :cond_1

    const-string v0, "You have not queried your inventory yet so the plugin does not have the required information to protect you from coding errors."

    .line 296
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    invoke-direct {p0, p1}, Lcom/prime31/GoogleIABPlugin;->getPurchasedProductForSku(Ljava/lang/String;)Lcom/prime31/util/Purchase;

    move-result-object v0

    const-string v2, "consumePurchaseFailed"

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to consume an item that has not been purchased. Aborting to avoid exception. sku: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": you cannot consume a project that has not been purchased or if you have not first queried your inventory to retreive the purchases."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_2
    new-instance p1, Lcom/prime31/GoogleIABPlugin$5;

    invoke-direct {p1, p0, v0}, Lcom/prime31/GoogleIABPlugin$5;-><init>(Lcom/prime31/GoogleIABPlugin;Lcom/prime31/util/Purchase;)V

    invoke-virtual {p0, p1, v2}, Lcom/prime31/GoogleIABPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public consumeProducts([Ljava/lang/String;)V
    .locals 5

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumeProducts"

    invoke-static {v0, v1, p1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const-string v1, "Prime31"

    if-nez v0, :cond_0

    .line 324
    sget-object p1, Lcom/prime31/GoogleIABPlugin;->BILLING_NOT_RUNNING_ERROR:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 336
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_3

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, p1

    if-eq v2, v3, :cond_2

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to consume "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " item(s) but only "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " item(s) were found to be purchased. Aborting."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_2
    new-instance p1, Lcom/prime31/GoogleIABPlugin$6;

    invoke-direct {p1, p0, v0}, Lcom/prime31/GoogleIABPlugin$6;-><init>(Lcom/prime31/GoogleIABPlugin;Ljava/util/List;)V

    const-string v0, "consumePurchaseFailed"

    invoke-virtual {p0, p1, v0}, Lcom/prime31/GoogleIABPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_3
    aget-object v4, p1, v3

    .line 339
    invoke-direct {p0, v4}, Lcom/prime31/GoogleIABPlugin;->getPurchasedProductForSku(Ljava/lang/String;)Lcom/prime31/util/Purchase;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const-string p1, "there are no purchases available to consume"

    .line 331
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableLogging(Z)V
    .locals 0

    .line 109
    sput-boolean p1, Lcom/prime31/IABConstants;->DEBUG:Z

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init"

    invoke-static {v0, v1, p1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :try_start_0
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prime31/GoogleIABPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prime31/Soomla;->init(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/prime31/util/IabHelper;

    invoke-virtual {p0}, Lcom/prime31/GoogleIABPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/prime31/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    .line 132
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    new-instance v0, Lcom/prime31/GoogleIABPlugin$2;

    invoke-direct {v0, p0}, Lcom/prime31/GoogleIABPlugin$2;-><init>(Lcom/prime31/GoogleIABPlugin;)V

    invoke-virtual {p1, v0}, Lcom/prime31/util/IabHelper;->startSetup(Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public onConsumeFinished(Lcom/prime31/util/Purchase;Lcom/prime31/util/IabResult;)V
    .locals 1

    .line 483
    invoke-virtual {p2}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object p2, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 486
    iget-object p2, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string p2, "consumePurchaseSucceeded"

    invoke-virtual {p0, p2, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "consumePurchaseFailed"

    .line 492
    invoke-virtual {p0, p2, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prime31/util/Purchase;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prime31/util/IabResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 504
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prime31/util/IabResult;

    .line 507
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prime31/util/Purchase;

    .line 509
    invoke-virtual {v1}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_1
    invoke-virtual {v2}, Lcom/prime31/util/Purchase;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "consumePurchaseSucceeded"

    invoke-virtual {p0, v2, v1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "consumePurchaseFailed"

    .line 518
    invoke-virtual {p0, v2, v1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onIabPurchaseCompleteAwaitingVerification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 399
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "purchaseData"

    .line 400
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "signature"

    .line 401
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "purchaseCompleteAwaitingVerification"

    .line 403
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to create JSON packet: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Prime31"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIabPurchaseFinished. result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getResponse()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v0

    const-string v1, "Prime31"

    if-eqz v0, :cond_2

    .line 419
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    invoke-virtual {p2}, Lcom/prime31/util/Purchase;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "purchaseSucceeded"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :try_start_0
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prime31/Soomla;->isActive()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 427
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

    if-eqz p1, :cond_1

    .line 429
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    invoke-virtual {p2}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

    invoke-virtual {v0}, Lcom/prime31/util/SkuDetails;->getPriceMicros()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/prime31/GoogleIABPlugin;->_currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

    invoke-virtual {v2}, Lcom/prime31/util/SkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lcom/prime31/Soomla;->onMarketPurchaseFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Soomla is initialized and running but we have no SkuDetails for the product being purchased. Attempting to fetch them manually."

    .line 433
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_currentSkuBeingPurchased:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/prime31/GoogleIABPlugin;->fetchSkuDetailsForSoomlaPurchase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_2
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "result"

    .line 448
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "response"

    .line 449
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "purchaseFailed"

    .line 451
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prime31/Soomla;->isActive()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 455
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->wasCanceled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 457
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    iget-object p2, p0, Lcom/prime31/GoogleIABPlugin;->_currentSkuBeingPurchased:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/prime31/Soomla;->onMarketPurchaseCancelled(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_3
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prime31/Soomla;->onMarketPurchaseFailed()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to create JSON packet: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

    .line 472
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_currentSkuBeingPurchased:Ljava/lang/String;

    return-void
.end method

.method public onQueryInventoryFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Inventory;)V
    .locals 2

    .line 367
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 370
    iput-boolean p1, p0, Lcom/prime31/GoogleIABPlugin;->_hasQueriedInventory:Z

    .line 372
    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    .line 374
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    .line 379
    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllSkusAndPurchasesAsJson()Ljava/lang/String;

    move-result-object p2

    const-string v0, "queryInventorySucceeded"

    invoke-virtual {p0, v0, p2}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/prime31/Soomla;->onRestoreTransactionsFinished(Z)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "queryInventoryFailed"

    invoke-virtual {p0, p2, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prime31/Soomla;->onRestoreTransactionsFinished(Z)V

    :goto_0
    return-void
.end method

.method public purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "purchaseProduct"

    invoke-static {v0, v2, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const-string v1, "Prime31"

    if-nez v0, :cond_0

    .line 215
    sget-object p1, Lcom/prime31/GoogleIABPlugin;->BILLING_NOT_RUNNING_ERROR:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/prime31/GoogleIABPlugin;->_hasQueriedInventory:Z

    if-nez v0, :cond_1

    const-string v0, "You have not queried your inventory yet so the plugin does not have the required information to protect you from coding errors."

    .line 220
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_purchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 235
    iget-boolean v0, p0, Lcom/prime31/GoogleIABPlugin;->_hasQueriedInventory:Z

    const-string v2, "inapp"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->_skus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prime31/util/SkuDetails;

    .line 244
    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "found sku "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in retrieved skus. setting item type to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Lcom/prime31/util/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v0

    .line 248
    iput-object v3, p0, Lcom/prime31/GoogleIABPlugin;->_currentProductBeingPurchased:Lcom/prime31/util/SkuDetails;

    goto :goto_3

    :cond_6
    :goto_1
    const-string v0, "CANNOT fetch sku type due to either inventory not being queried or it returned no valid skus."

    .line 237
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v0, v2

    .line 254
    :goto_3
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin;->_currentSkuBeingPurchased:Ljava/lang/String;

    const-string v3, "android.test.purchased"

    .line 255
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fixing Google bug where they think the sku "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a subscription. resetting to type inapp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_7
    if-nez v0, :cond_8

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": you have attempted to purchase a sku that was not returned when querying the inventory. We will still let the product go through but it will be defaulted to an inapp type and may not work."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 269
    :cond_8
    new-instance v1, Lcom/prime31/GoogleIABPlugin$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/prime31/GoogleIABPlugin$4;-><init>(Lcom/prime31/GoogleIABPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "purchaseFailed"

    invoke-virtual {p0, v1, p1}, Lcom/prime31/GoogleIABPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prime31/util/Purchase;

    .line 225
    invoke-virtual {v2}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to purchase an item that has already been purchased. That is probably not a good idea: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public queryInventory([Ljava/lang/Object;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryInventory"

    invoke-static {v0, v1, p1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "in queryInventory with Object[] parameter. Converting to String[] now."

    .line 180
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1}, Lcom/prime31/GoogleIABPlugin;->queryInventory([Ljava/lang/String;)V

    return-void
.end method

.method public queryInventory([Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryInventory"

    invoke-static {v0, v1, p1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-nez v0, :cond_0

    .line 193
    sget-object p1, Lcom/prime31/GoogleIABPlugin;->BILLING_NOT_RUNNING_ERROR:Ljava/lang/String;

    const-string v0, "Prime31"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/prime31/GoogleIABPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/prime31/GoogleIABPlugin$3;-><init>(Lcom/prime31/GoogleIABPlugin;[Ljava/lang/String;)V

    const-string p1, "queryInventoryFailed"

    invoke-virtual {p0, v0, p1}, Lcom/prime31/GoogleIABPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoVerifySignatures(Z)V
    .locals 0

    .line 115
    sput-boolean p1, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    return-void
.end method

.method public unbindService()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/prime31/util/IabHelper;->dispose()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    :cond_0
    return-void
.end method
