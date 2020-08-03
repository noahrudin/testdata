.class public Lcom/adjust/sdk/EventResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "EventResponseData.java"


# instance fields
.field public eventToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "event_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustEventFailure;
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustEventFailure;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventFailure;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->message:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->timestamp:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->adid:Ljava/lang/String;

    .line 43
    iget-boolean v1, p0, Lcom/adjust/sdk/EventResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->willRetry:Z

    .line 44
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->jsonResponse:Lorg/json/JSONObject;

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventFailure;->eventToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustEventSuccess;
    .locals 2

    .line 16
    iget-boolean v0, p0, Lcom/adjust/sdk/EventResponseData;->success:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustEventSuccess;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustEventSuccess;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->message:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->timestamp:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->adid:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->jsonResponse:Lorg/json/JSONObject;

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/adjust/sdk/EventResponseData;->eventToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustEventSuccess;->eventToken:Ljava/lang/String;

    return-object v0
.end method
