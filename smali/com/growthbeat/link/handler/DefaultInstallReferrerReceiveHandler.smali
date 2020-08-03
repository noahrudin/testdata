.class public Lcom/growthbeat/link/handler/DefaultInstallReferrerReceiveHandler;
.super Ljava/lang/Object;
.source "DefaultInstallReferrerReceiveHandler.java"

# interfaces
.implements Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "referrer"

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "utf-8"

    .line 21
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 23
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode install referrer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const-string p2, ""

    .line 27
    :goto_0
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getPreference()Lcom/growthbeat/Preference;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/growthbeat/link/GrowthLink;->setInstallReferrer(Ljava/lang/String;)V

    return-void
.end method
