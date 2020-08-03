.class public Lcom/growthbeat/link/model/Click;
.super Lcom/growthbeat/model/Model;
.source "Click.java"


# instance fields
.field private accessed:Ljava/util/Date;

.field private clientId:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private install:Z

.field private open:Z

.field private pattern:Lcom/growthbeat/link/model/Pattern;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/growthbeat/model/Model;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/growthbeat/model/Model;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static deeplink(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/growthbeat/link/model/Click;
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "clientId"

    .line 37
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "clickId"

    .line 39
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "install"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string p0, "credentialId"

    .line 42
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthbeat/link/GrowthLink;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "1/deeplink"

    invoke-virtual {p0, p1, v0}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_3
    new-instance p1, Lcom/growthbeat/link/model/Click;

    invoke-direct {p1, p0}, Lcom/growthbeat/link/model/Click;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method


# virtual methods
.method public getAccessed()Ljava/util/Date;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/growthbeat/link/model/Click;->accessed:Ljava/util/Date;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/growthbeat/link/model/Click;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/growthbeat/link/model/Click;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/growthbeat/link/model/Click;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Click;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 115
    iget-object v2, p0, Lcom/growthbeat/link/model/Click;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/growthbeat/link/model/Click;->pattern:Lcom/growthbeat/link/model/Pattern;

    if-eqz v1, :cond_1

    const-string v1, "pattern"

    .line 117
    iget-object v2, p0, Lcom/growthbeat/link/model/Click;->pattern:Lcom/growthbeat/link/model/Pattern;

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Pattern;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/growthbeat/link/model/Click;->clientId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "clientId"

    .line 119
    iget-object v2, p0, Lcom/growthbeat/link/model/Click;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "open"

    .line 120
    iget-boolean v2, p0, Lcom/growthbeat/link/model/Click;->open:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "install"

    .line 121
    iget-boolean v2, p0, Lcom/growthbeat/link/model/Click;->install:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 122
    iget-object v1, p0, Lcom/growthbeat/link/model/Click;->created:Ljava/util/Date;

    if-eqz v1, :cond_3

    const-string v1, "created"

    .line 123
    iget-object v2, p0, Lcom/growthbeat/link/model/Click;->created:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/growthbeat/link/model/Click;->accessed:Ljava/util/Date;

    if-eqz v1, :cond_4

    const-string v1, "accessed"

    .line 125
    iget-object v2, p0, Lcom/growthbeat/link/model/Click;->accessed:Ljava/util/Date;

    invoke-static {v2}, Lcom/growthbeat/utils/DateUtils;->formatToDateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPattern()Lcom/growthbeat/link/model/Pattern;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/growthbeat/link/model/Click;->pattern:Lcom/growthbeat/link/model/Pattern;

    return-object v0
.end method

.method public isInstall()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/growthbeat/link/model/Click;->install:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/growthbeat/link/model/Click;->open:Z

    return v0
.end method

.method public setAccessed(Ljava/util/Date;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/growthbeat/link/model/Click;->accessed:Ljava/util/Date;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/growthbeat/link/model/Click;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/growthbeat/link/model/Click;->created:Ljava/util/Date;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/growthbeat/link/model/Click;->id:Ljava/lang/String;

    return-void
.end method

.method public setInstall(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/growthbeat/link/model/Click;->install:Z

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "accessed"

    const-string v1, "created"

    const-string v2, "install"

    const-string v3, "open"

    const-string v4, "clientId"

    const-string v5, "pattern"

    const-string v6, "id"

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    :try_start_0
    invoke-static {p1, v6}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/growthbeat/link/model/Click;->setId(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-static {p1, v5}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    new-instance v6, Lcom/growthbeat/link/model/Pattern;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/growthbeat/link/model/Pattern;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v6}, Lcom/growthbeat/link/model/Click;->setPattern(Lcom/growthbeat/link/model/Pattern;)V

    .line 145
    :cond_2
    invoke-static {p1, v4}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/growthbeat/link/model/Click;->setClientId(Ljava/lang/String;)V

    .line 147
    :cond_3
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/link/model/Click;->setOpen(Z)V

    .line 149
    :cond_4
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/link/model/Click;->setInstall(Z)V

    .line 151
    :cond_5
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/link/model/Click;->setCreated(Ljava/util/Date;)V

    .line 153
    :cond_6
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/growthbeat/utils/DateUtils;->parseFromDateTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/link/model/Click;->setAccessed(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOpen(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/growthbeat/link/model/Click;->open:Z

    return-void
.end method

.method public setPattern(Lcom/growthbeat/link/model/Pattern;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/growthbeat/link/model/Click;->pattern:Lcom/growthbeat/link/model/Pattern;

    return-void
.end method
