.class public Lcom/growthbeat/link/handler/SynchronizationHandler;
.super Ljava/lang/Object;
.source "SynchronizationHandler.java"


# static fields
.field private static INSTALLREFERRER_TIMEOUT:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 15
    sget-wide v0, Lcom/growthbeat/link/handler/SynchronizationHandler;->INSTALLREFERRER_TIMEOUT:J

    return-wide v0
.end method


# virtual methods
.method public synchronizeWithCookieTracking(Lcom/growthbeat/link/model/Synchronization;)V
    .locals 3

    .line 42
    :try_start_0
    invoke-static {}, Lcom/growthbeat/utils/DeviceUtils;->getAdvertisingId()Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get advertisingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/GrowthLink;->getSyncronizationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?applicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/link/GrowthLink;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&advertisingId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/growthbeat/link/handler/SynchronizationHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/growthbeat/link/handler/SynchronizationHandler$2;-><init>(Lcom/growthbeat/link/handler/SynchronizationHandler;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synchronizeWithDeviceFingerprint(Lcom/growthbeat/link/model/Synchronization;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Lcom/growthbeat/link/model/Synchronization;->getClickId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?clickId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/growthbeat/link/model/Synchronization;->getClickId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/growthbeat/link/GrowthLink;->handleOpenUrl(Landroid/net/Uri;)V

    return-void
.end method

.method public synchronizeWithInstallReferrer(Lcom/growthbeat/link/model/Synchronization;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/Growthbeat;->getExecutor()Lcom/growthbeat/GrowthbeatThreadExecutor;

    move-result-object p1

    new-instance v0, Lcom/growthbeat/link/handler/SynchronizationHandler$1;

    invoke-direct {v0, p0}, Lcom/growthbeat/link/handler/SynchronizationHandler$1;-><init>(Lcom/growthbeat/link/handler/SynchronizationHandler;)V

    invoke-virtual {p1, v0}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
