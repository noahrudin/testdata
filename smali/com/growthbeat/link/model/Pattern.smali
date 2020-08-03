.class public Lcom/growthbeat/link/model/Pattern;
.super Lcom/growthbeat/model/Model;
.source "Pattern.java"


# instance fields
.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private intent:Lcom/growthbeat/model/Intent;

.field private link:Lcom/growthbeat/link/model/Link;

.field private updated:Ljava/util/Date;

.field private url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Lcom/growthbeat/model/Intent;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->intent:Lcom/growthbeat/model/Intent;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 85
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "url"

    .line 87
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->link:Lcom/growthbeat/link/model/Link;

    if-eqz v1, :cond_2

    const-string v1, "link"

    .line 89
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->link:Lcom/growthbeat/link/model/Link;

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Link;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->intent:Lcom/growthbeat/model/Intent;

    if-eqz v1, :cond_3

    const-string v1, "intent"

    .line 91
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->intent:Lcom/growthbeat/model/Intent;

    invoke-virtual {v2}, Lcom/growthbeat/model/Intent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->created:Ljava/util/Date;

    if-eqz v1, :cond_4

    const-string v1, "created"

    .line 93
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/growthbeat/link/model/Pattern;->updated:Ljava/util/Date;

    if-eqz v1, :cond_5

    const-string v1, "updated"

    .line 95
    iget-object v2, p0, Lcom/growthbeat/link/model/Pattern;->updated:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLink()Lcom/growthbeat/link/model/Link;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->link:Lcom/growthbeat/link/model/Link;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/growthbeat/link/model/Pattern;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->id:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Lcom/growthbeat/model/Intent;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->intent:Lcom/growthbeat/model/Intent;

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "updated"

    const-string v1, "created"

    const-string v2, "intent"

    const-string v3, "link"

    const-string v4, "url"

    const-string v5, "id"

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p1, v5}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/growthbeat/link/model/Pattern;->setId(Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/link/model/Pattern;->setUrl(Ljava/lang/String;)V

    .line 115
    :cond_2
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    new-instance v4, Lcom/growthbeat/link/model/Link;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/growthbeat/link/model/Link;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v4}, Lcom/growthbeat/link/model/Pattern;->setLink(Lcom/growthbeat/link/model/Link;)V

    .line 117
    :cond_3
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/model/Intent;->getFromJsonObject(Lorg/json/JSONObject;)Lcom/growthbeat/model/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/link/model/Pattern;->setIntent(Lcom/growthbeat/model/Intent;)V

    .line 119
    :cond_4
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/link/model/Pattern;->setCreated(Ljava/util/Date;)V

    .line 121
    :cond_5
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/link/model/Pattern;->setUpdated(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setLink(Lcom/growthbeat/link/model/Link;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->link:Lcom/growthbeat/link/model/Link;

    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->updated:Ljava/util/Date;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/growthbeat/link/model/Pattern;->url:Ljava/lang/String;

    return-void
.end method
