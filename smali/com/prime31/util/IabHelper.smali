.class public Lcom/prime31/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"

.field static final TAG:Ljava/lang/String; = "Prime31-IABH"

.field public static autoVerifySignatures:Z = true


# instance fields
.field _asyncInProgress:Z

.field _asyncOperation:Ljava/lang/String;

.field _context:Landroid/content/Context;

.field _disposed:Z

.field _purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

.field _purchasingItemType:Ljava/lang/String;

.field _requestCode:I

.field _service:Lcom/android/vending/billing/IInAppBillingService;

.field _serviceConn:Landroid/content/ServiceConnection;

.field _setupDone:Z

.field _signatureBase64:Ljava/lang/String;

.field _subscriptionsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    .line 102
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    .line 106
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    .line 110
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    const-string v0, ""

    .line 114
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 195
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getExplicitIapIntent()Landroid/content/Intent;
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 229
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 230
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 232
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Prime31-IABH"

    const-string v1, "attempted to locate IAP info and found either 0 or more than 1 result. bailing."

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    const-string v1, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 937
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 939
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 944
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 945
    aget-object p0, v0, v2

    return-object p0

    .line 947
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 949
    array-length v0, v1

    if-lt p0, v0, :cond_2

    goto :goto_0

    .line 952
    :cond_2
    aget-object p0, v1, p0

    return-object p0

    .line 950
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3

    .line 959
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 962
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consume(Lcom/prime31/util/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 818
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 820
    iget-object v0, p1, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    :try_start_0
    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {p1}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consuming sku: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Successfully consumed sku: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    return-void

    .line 841
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error consuming consuming sku "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 842
    new-instance v2, Lcom/prime31/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error consuming sku "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t consume "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 830
    new-instance v0, Lcom/prime31/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 847
    new-instance v1, Lcom/prime31/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 821
    :cond_2
    new-instance v0, Lcom/prime31/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Items of type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public consumeAsync(Lcom/prime31/util/Purchase;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 1

    .line 901
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 902
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 904
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 905
    invoke-virtual {p0, v0, p2, p1}, Lcom/prime31/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prime31/util/Purchase;",
            ">;",
            "Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 921
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 922
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, p1, v0, p2}, Lcom/prime31/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prime31/util/Purchase;",
            ">;",
            "Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .line 1201
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    .line 1202
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1203
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/prime31/util/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/prime31/util/IabHelper$3;-><init>(Lcom/prime31/util/IabHelper;Ljava/util/List;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/prime31/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1244
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 3

    const-string v0, "Disposing."

    .line 351
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 355
    :try_start_0
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    .line 356
    iget-object v0, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from service."

    .line 358
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_disposed:Z

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    .line 365
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    .line 366
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    .line 367
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception disposing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prime31-IABH"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .line 1025
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flagEndAsync"

    invoke-static {v0, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    .line 1027
    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1028
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3

    .line 1015
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    if-nez v0, :cond_0

    .line 1017
    iput-object p1, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lcom/prime31/util/IabHelper;->_asyncInProgress:Z

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    return-void

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_asyncOperation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 971
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 974
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 977
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 978
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 979
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 980
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 983
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 985
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type for bundle response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 3

    .line 994
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 997
    invoke-virtual {p0, p1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1000
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1001
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1002
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1003
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 1006
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1008
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type for intent response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string v2, "handleActivityResult"

    invoke-static {v0, v2, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current _requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/prime31/util/IabHelper;->_requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 543
    iget v0, p0, Lcom/prime31/util/IabHelper;->_requestCode:I

    if-eq p1, v0, :cond_0

    return v3

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 547
    invoke-virtual {p0, v2}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 554
    invoke-virtual {p0, p2}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 555
    new-instance p2, Lcom/prime31/util/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 556
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    const-string p1, "calling purchaseListener.onIabPurchaseFinished"

    .line 558
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p1, p2, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_1
    return v4

    .line 564
    :cond_2
    invoke-virtual {p0, p3}, Lcom/prime31/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "INAPP_PURCHASE_DATA"

    .line 565
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 566
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_a

    if-nez v1, :cond_a

    const-string p2, "Successful resultcode from purchase activity."

    .line 570
    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Purchase data: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Data signature: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 573
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "Expected item type: "

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 589
    :cond_3
    :try_start_0
    new-instance p2, Lcom/prime31/util/Purchase;

    iget-object p3, p0, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v2, v5}, Lcom/prime31/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Lcom/prime31/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 593
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_4

    .line 594
    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v1, v2, v5}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseCompleteAwaitingVerification(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_4
    sget-boolean v1, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/prime31/util/Purchase;->isTestSku()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcom/prime31/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase signature verification FAILED for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 599
    new-instance v1, Lcom/prime31/util/IabResult;

    const/16 v2, -0x3eb

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Signature verification failed for sku "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 600
    iget-object p3, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_5

    .line 601
    iget-object p3, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v1, p2}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_5
    return v4

    :cond_6
    const-string p3, "Purchase signature successfully verified."

    .line 604
    invoke-static {p3}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_d

    .line 618
    new-instance p3, Lcom/prime31/util/IabResult;

    const-string v0, "Success"

    invoke-direct {p3, v3, v0}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 608
    invoke-virtual {p0, p3}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 610
    new-instance p2, Lcom/prime31/util/IabResult;

    invoke-direct {p2, p1, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 611
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_7

    .line 612
    invoke-interface {p1, p2, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_7
    return v4

    :cond_8
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 578
    invoke-virtual {p0, p1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 580
    new-instance p1, Lcom/prime31/util/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 581
    iget-object p2, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_9

    .line 582
    invoke-interface {p2, p1, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_9
    return v4

    :cond_a
    if-ne p2, v6, :cond_b

    .line 624
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_d

    .line 627
    new-instance p1, Lcom/prime31/util/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v1, p2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 628
    iget-object p2, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto :goto_1

    :cond_b
    if-nez p2, :cond_c

    .line 633
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Purchase canceled - Response: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 634
    new-instance p1, Lcom/prime31/util/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 635
    iget-object p2, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_d

    .line 636
    invoke-interface {p2, p1, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    goto :goto_1

    .line 640
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Purchase failed. Result code: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 641
    new-instance p1, Lcom/prime31/util/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 642
    iget-object p2, p0, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_d

    .line 643
    invoke-interface {p2, p1, v0}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_d
    :goto_1
    return v4
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 415
    invoke-virtual/range {v0 .. v5}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 421
    invoke-virtual/range {v0 .. v6}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move/from16 v11, p4

    move-object/from16 v15, p5

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v2, "launchPurchaseFlow"

    .line 468
    invoke-virtual {v1, v2}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, v2}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 474
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Constructing buy intent for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", itemType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 475
    iput v11, v1, Lcom/prime31/util/IabHelper;->_requestCode:I

    .line 476
    iget-object v2, v1, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 477
    invoke-virtual {v1, v2}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 482
    new-instance v0, Lcom/prime31/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v3, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v15, :cond_0

    .line 484
    invoke-interface {v15, v0, v14}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    .line 485
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/prime31/util/IabHelper;->flagEndAsync()V

    return v16

    :cond_1
    const-string v3, "BUY_INTENT"

    .line 489
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Launching buy intent for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 491
    iput-object v15, v1, Lcom/prime31/util/IabHelper;->_purchaseListener:Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 492
    iput-object v0, v1, Lcom/prime31/util/IabHelper;->_purchasingItemType:Ljava/lang/String;

    .line 493
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, p1

    move/from16 v11, p4

    move-object v3, v14

    move v14, v0

    move-object v4, v15

    move v15, v2

    :try_start_1
    invoke-virtual/range {v9 .. v15}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v14

    move-object v4, v15

    .line 507
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "RemoteException while launching purchase flow for sku "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    new-instance v0, Lcom/prime31/util/IabResult;

    const/16 v2, -0x3e9

    const-string v5, "Remote exception while starting purchase flow"

    invoke-direct {v0, v2, v5}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_2

    .line 512
    invoke-interface {v4, v0, v3}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_2
    return v16

    :catch_3
    move-exception v0

    move-object v3, v14

    move-object v4, v15

    .line 497
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 500
    new-instance v0, Lcom/prime31/util/IabResult;

    const/16 v2, -0x3ec

    const-string v5, "Failed to send intent."

    invoke-direct {v0, v2, v5}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v4, :cond_3

    .line 502
    invoke-interface {v4, v0, v3}, Lcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/prime31/util/IabResult;Lcom/prime31/util/Purchase;)V

    :cond_3
    return v16
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 427
    invoke-virtual/range {v0 .. v5}, Lcom/prime31/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 433
    invoke-virtual/range {v0 .. v6}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 2

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-app billing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Prime31-IABH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 2

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In-app billing warning: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Prime31-IABH"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/prime31/util/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prime31/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, p2, v0}, Lcom/prime31/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/prime31/util/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/prime31/util/Inventory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/prime31/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prime31/util/IabException;
        }
    .end annotation

    const-string p3, "subs"

    const-string v0, "inapp"

    .line 672
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v1, "queryInventory"

    .line 673
    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 676
    :try_start_0
    new-instance v1, Lcom/prime31/util/Inventory;

    invoke-direct {v1}, Lcom/prime31/util/Inventory;-><init>()V

    .line 677
    invoke-virtual {p0, v1, v0}, Lcom/prime31/util/IabHelper;->queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_1

    .line 683
    invoke-virtual {p0, v0, v1, p2}, Lcom/prime31/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    new-instance p1, Lcom/prime31/util/IabException;

    const-string p2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, v0, p2}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 689
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    if-eqz v0, :cond_4

    .line 691
    invoke-virtual {p0, v1, p3}, Lcom/prime31/util/IabHelper;->queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    .line 697
    invoke-virtual {p0, p3, v1, p2}, Lcom/prime31/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 699
    :cond_2
    new-instance p2, Lcom/prime31/util/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 693
    :cond_3
    new-instance p1, Lcom/prime31/util/IabException;

    const-string p2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, v0, p2}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1

    .line 679
    :cond_5
    new-instance p1, Lcom/prime31/util/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v2, p2}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 711
    new-instance p2, Lcom/prime31/util/IabException;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 707
    new-instance p2, Lcom/prime31/util/IabException;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/prime31/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, v0, v1, p1}, Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, p1, v0, p2}, Lcom/prime31/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .line 748
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 749
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 750
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    .line 751
    invoke-virtual {p0, v0}, Lcom/prime31/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 753
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/prime31/util/IabHelper$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/prime31/util/IabHelper$2;-><init>(Lcom/prime31/util/IabHelper;ZLjava/util/List;Lcom/prime31/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 788
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method queryPurchases(Lcom/prime31/util/Inventory;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Querying owned items..."

    .line 1035
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1042
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1043
    iget-object v3, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1045
    invoke-virtual {p0, v1}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Owned items response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getPurchases() failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 1052
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_4

    .line 1058
    :cond_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1059
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1060
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v6, v2

    const/4 v2, 0x0

    .line 1062
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_4

    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Continuation token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v6, :cond_2

    const/16 v0, -0x3eb

    :cond_2
    return v0

    :cond_3
    move v2, v6

    goto/16 :goto_0

    .line 1064
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1065
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1066
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1071
    sget-boolean v10, Lcom/prime31/util/IabHelper;->autoVerifySignatures:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    .line 1073
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "verified sku: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1074
    iget-object v9, p0, Lcom/prime31/util/IabHelper;->_signatureBase64:Ljava/lang/String;

    invoke-static {v9, v7, v8}, Lcom/prime31/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    .line 1077
    :goto_2
    new-instance v10, Lcom/prime31/util/Purchase;

    invoke-direct {v10, p2, v7, v8}, Lcom/prime31/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v10}, Lcom/prime31/util/Purchase;->isTestSku()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v9, "Prime31-IABH"

    const-string v12, "skipping signature verification because this is a test product"

    .line 1081
    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :cond_6
    if-eqz v9, :cond_8

    .line 1086
    invoke-virtual {v10}, Lcom/prime31/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "BUG: empty/null token!"

    .line 1088
    invoke-virtual {p0, v8}, Lcom/prime31/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1089
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1093
    :cond_7
    invoke-virtual {p1, v10}, Lcom/prime31/util/Inventory;->addPurchase(Lcom/prime31/util/Purchase;)V

    goto :goto_3

    :cond_8
    const-string v6, "Purchase signature verification **FAILED**. Not adding item."

    .line 1097
    invoke-virtual {p0, v6}, Lcom/prime31/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1098
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "   Purchase data: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1099
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "   Signature: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    :goto_4
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 1054
    invoke-virtual {p0, p1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/prime31/util/Inventory;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prime31/util/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 1115
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-virtual {p2}, Lcom/prime31/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_2

    .line 1121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1128
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_3

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 1130
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    return v1

    .line 1138
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    .line 1141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v2, :cond_a

    if-eqz v3, :cond_5

    .line 1154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v3, v2

    .line 1155
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1158
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1155
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1156
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1163
    :cond_5
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_6

    return v1

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 1165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ITEM_ID_LIST"

    .line 1166
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1167
    iget-object p3, p0, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "DETAILS_LIST"

    .line 1170
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1172
    invoke-virtual {p0, p3}, Lcom/prime31/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 1175
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getSkuDetails() failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Prime31-IABH"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_7
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 1180
    invoke-virtual {p0, p1}, Lcom/prime31/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 1186
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 1187
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1189
    new-instance v0, Lcom/prime31/util/SkuDetails;

    invoke-direct {v0, p1, p3}, Lcom/prime31/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Got sku details: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2, v0}, Lcom/prime31/util/Inventory;->addSkuDetails(Lcom/prime31/util/SkuDetails;)V

    goto :goto_6

    .line 1145
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v6, v4, 0x14

    add-int/lit8 v7, v6, 0x14

    .line 1146
    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1149
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1146
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1147
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public startSetup(Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 251
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->checkNotDisposed()V

    .line 252
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_setupDone:Z

    if-nez v0, :cond_2

    const-string v0, "Starting in-app billing service"

    .line 256
    invoke-static {v0}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/prime31/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/prime31/util/IabHelper$1;-><init>(Lcom/prime31/util/IabHelper;Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    .line 321
    invoke-direct {p0}, Lcom/prime31/util/IabHelper;->getExplicitIapIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object p1, p0, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/prime31/util/IabHelper;->_serviceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 331
    new-instance v0, Lcom/prime31/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/prime31/util/IabResult;)V

    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    return v0
.end method
