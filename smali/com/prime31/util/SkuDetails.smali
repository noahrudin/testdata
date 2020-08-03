.class public Lcom/prime31/util/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field _description:Ljava/lang/String;

.field _itemType:Ljava/lang/String;

.field _json:Ljava/lang/String;

.field _price:Ljava/lang/String;

.field _price_amount_micros:Ljava/lang/String;

.field _price_currency_code:Ljava/lang/String;

.field _sku:Ljava/lang/String;

.field _title:Ljava/lang/String;

.field _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "inapp"

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/prime31/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/prime31/util/SkuDetails;->_itemType:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "productId"

    .line 52
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_sku:Ljava/lang/String;

    const-string p2, "type"

    .line 53
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_type:Ljava/lang/String;

    const-string p2, "price"

    .line 54
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_price:Ljava/lang/String;

    const-string p2, "title"

    .line 55
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_title:Ljava/lang/String;

    const-string p2, "description"

    .line 56
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_description:Ljava/lang/String;

    const-string p2, "price_currency_code"

    .line 57
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_price_currency_code:Ljava/lang/String;

    const-string p2, "price_amount_micros"

    .line 58
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/prime31/util/SkuDetails;->_price_amount_micros:Ljava/lang/String;

    const-string p2, "itemType"

    .line 60
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/util/SkuDetails;->_json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_price_currency_code:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_price:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_price_amount_micros:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/prime31/util/SkuDetails;->_json:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkuDetails:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prime31/util/SkuDetails;->_json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
