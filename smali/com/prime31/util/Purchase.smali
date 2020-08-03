.class public Lcom/prime31/util/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field _developerPayload:Ljava/lang/String;

.field _itemType:Ljava/lang/String;

.field _orderId:Ljava/lang/String;

.field _originalJson:Ljava/lang/String;

.field _originalJsonWithSignature:Ljava/lang/String;

.field _packageName:Ljava/lang/String;

.field _purchaseState:I

.field _purchaseTime:J

.field _signature:Ljava/lang/String;

.field _sku:Ljava/lang/String;

.field _token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/prime31/util/Purchase;->_originalJson:Ljava/lang/String;

    .line 46
    new-instance p2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/prime31/util/Purchase;->_originalJson:Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "orderId"

    .line 47
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/Purchase;->_orderId:Ljava/lang/String;

    const-string v0, "packageName"

    .line 48
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/Purchase;->_packageName:Ljava/lang/String;

    const-string v0, "productId"

    .line 49
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/Purchase;->_sku:Ljava/lang/String;

    const-string v0, "purchaseTime"

    .line 50
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prime31/util/Purchase;->_purchaseTime:J

    const-string v0, "purchaseState"

    .line 51
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/prime31/util/Purchase;->_purchaseState:I

    const-string v0, "developerPayload"

    .line 52
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/Purchase;->_developerPayload:Ljava/lang/String;

    const-string v0, "purchaseToken"

    .line 53
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/util/Purchase;->_token:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, "NO SIGNATURE RETURNED FROM PLAY"

    :cond_0
    const-string v0, "signature"

    .line 58
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_originalJson:Ljava/lang/String;

    const-string v1, "originalJson"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "itemType"

    .line 62
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/util/Purchase;->_originalJsonWithSignature:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/prime31/util/Purchase;->_signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_originalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/prime31/util/Purchase;->_purchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/prime31/util/Purchase;->_purchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public isTestSku()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_sku:Ljava/lang/String;

    const-string v1, "android.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/prime31/util/Purchase;->_originalJsonWithSignature:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prime31/util/Purchase;->_originalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
