.class public Lcom/growthbeat/link/model/Synchronization;
.super Lcom/growthbeat/model/Model;
.source "Synchronization.java"


# static fields
.field private static final PREFERENCE_SYNCHRONIZATION_KEY:Ljava/lang/String; = "synchronization"


# instance fields
.field private clickId:Ljava/lang/String;

.field private cookieTracking:Z

.field private deviceFingerprint:Z

.field private installReferrer:Z


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

.method public static load()Lcom/growthbeat/link/model/Synchronization;
    .locals 5

    .line 60
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    const-string v1, "synchronization"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 62
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "growthanalytics-preferences"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/growthbeat/Preference;

    invoke-direct {v0, v2}, Lcom/growthbeat/Preference;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->get(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 72
    :cond_1
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v3

    invoke-virtual {v3}, Lcom/growthbeat/link/GrowthLink;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v3

    new-instance v4, Lcom/growthbeat/link/model/Synchronization;

    invoke-direct {v4, v0}, Lcom/growthbeat/link/model/Synchronization;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/growthbeat/link/model/Synchronization;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/GrowthLink;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    :goto_0
    return-object v3

    .line 76
    :cond_3
    :goto_1
    new-instance v1, Lcom/growthbeat/link/model/Synchronization;

    invoke-direct {v1, v0}, Lcom/growthbeat/link/model/Synchronization;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static save(Lcom/growthbeat/link/model/Synchronization;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/growthbeat/link/model/Synchronization;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "synchronization"

    invoke-virtual {v0, v1, p0}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synchronize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/link/model/Synchronization;
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "applicationId"

    .line 38
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "os"

    const-string v1, "android"

    .line 39
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p0, "version"

    .line 41
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, "credentialId"

    .line 43
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object p0

    invoke-virtual {p0}, Lcom/growthbeat/link/GrowthLink;->getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;

    move-result-object p0

    const-string p1, "2.1/synchronize"

    invoke-virtual {p0, p1, v0, p2}, Lcom/growthbeat/http/GrowthbeatHttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_3
    new-instance p1, Lcom/growthbeat/link/model/Synchronization;

    invoke-direct {p1, p0}, Lcom/growthbeat/link/model/Synchronization;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method


# virtual methods
.method public getClickId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/growthbeat/link/model/Synchronization;->clickId:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieTracking()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/growthbeat/link/model/Synchronization;->cookieTracking:Z

    return v0
.end method

.method public getDeviceFingerprint()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/growthbeat/link/model/Synchronization;->deviceFingerprint:Z

    return v0
.end method

.method public getInstallReferrer()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/growthbeat/link/model/Synchronization;->installReferrer:Z

    return v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "installReferrer"

    .line 117
    iget-boolean v2, p0, Lcom/growthbeat/link/model/Synchronization;->installReferrer:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "cookieTracking"

    .line 118
    iget-boolean v2, p0, Lcom/growthbeat/link/model/Synchronization;->cookieTracking:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "deviceFingerprint"

    .line 119
    iget-boolean v2, p0, Lcom/growthbeat/link/model/Synchronization;->deviceFingerprint:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    iget-object v1, p0, Lcom/growthbeat/link/model/Synchronization;->clickId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "clickId"

    .line 121
    iget-object v2, p0, Lcom/growthbeat/link/model/Synchronization;->clickId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get JSON."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setClickId(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/growthbeat/link/model/Synchronization;->clickId:Ljava/lang/String;

    return-void
.end method

.method public setCookieTracking(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/growthbeat/link/model/Synchronization;->cookieTracking:Z

    return-void
.end method

.method public setDeviceFingerprint(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/growthbeat/link/model/Synchronization;->deviceFingerprint:Z

    return-void
.end method

.method public setInstallReferrer(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/growthbeat/link/model/Synchronization;->installReferrer:Z

    return-void
.end method

.method public setJsonObject(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "clickId"

    const-string v1, "deviceFingerprint"

    const-string v2, "cookieTracking"

    const-string v3, "installReferrer"

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-static {p1, v3}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/growthbeat/link/model/Synchronization;->setInstallReferrer(Z)V

    .line 139
    :cond_1
    invoke-static {p1, v2}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/growthbeat/link/model/Synchronization;->setCookieTracking(Z)V

    .line 141
    :cond_2
    invoke-static {p1, v1}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/growthbeat/link/model/Synchronization;->setDeviceFingerprint(Z)V

    .line 143
    :cond_3
    invoke-static {p1, v0}, Lcom/growthbeat/utils/JSONObjectUtils;->hasAndIsNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/growthbeat/link/model/Synchronization;->setClickId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse JSON."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
