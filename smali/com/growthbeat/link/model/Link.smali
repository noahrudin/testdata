.class public Lcom/growthbeat/link/model/Link;
.super Lcom/growthbeat/model/Model;
.source "Link.java"


# instance fields
.field private alias:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/growthbeat/link/model/Link;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/growthbeat/link/model/Link;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/growthbeat/link/model/Link;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Link;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 63
    iget-object v2, p0, Lcom/growthbeat/link/model/Link;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Link;->alias:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "alias"

    .line 65
    iget-object v2, p0, Lcom/growthbeat/link/model/Link;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/link/model/Link;->applicationId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "applicationId"

    .line 67
    iget-object v2, p0, Lcom/growthbeat/link/model/Link;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/link/model/Link;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "name"

    .line 69
    iget-object v2, p0, Lcom/growthbeat/link/model/Link;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/growthbeat/link/model/Link;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/growthbeat/link/model/Link;->alias:Ljava/lang/String;

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/growthbeat/link/model/Link;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/growthbeat/link/model/Link;->id:Ljava/lang/String;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "name"

    const-string v1, "applicationId"

    const-string v2, "alias"

    const-string v3, "id"

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/link/model/Link;->setId(Ljava/lang/String;)V

    .line 87
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/link/model/Link;->setAlias(Ljava/lang/String;)V

    .line 89
    :cond_2
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/link/model/Link;->setApplicationId(Ljava/lang/String;)V

    .line 91
    :cond_3
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/link/model/Link;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/growthbeat/link/model/Link;->name:Ljava/lang/String;

    return-void
.end method
