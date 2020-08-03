.class public Lcom/adjust/sdk/SessionResponseData;
.super Lcom/adjust/sdk/ResponseData;
.source "SessionResponseData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/adjust/sdk/ResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailureResponseData()Lcom/adjust/sdk/AdjustSessionFailure;
    .locals 2

    .line 28
    iget-boolean v0, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionFailure;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionFailure;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->message:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->timestamp:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->adid:Ljava/lang/String;

    .line 36
    iget-boolean v1, p0, Lcom/adjust/sdk/SessionResponseData;->willRetry:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->willRetry:Z

    .line 37
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionFailure;->jsonResponse:Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method

.method public getSuccessResponseData()Lcom/adjust/sdk/AdjustSessionSuccess;
    .locals 2

    .line 10
    iget-boolean v0, p0, Lcom/adjust/sdk/SessionResponseData;->success:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustSessionSuccess;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustSessionSuccess;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->message:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->timestamp:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->adid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->adid:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/adjust/sdk/SessionResponseData;->jsonResponse:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/AdjustSessionSuccess;->jsonResponse:Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method
