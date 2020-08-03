.class public Lcom/adjust/sdk/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IRequestHandler;


# instance fields
.field private basePath:Ljava/lang/String;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/adjust/sdk/IPackageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 27
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "RequestHandler"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 28
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/RequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 29
    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->getBasePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler;->basePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/RequestHandler;->sendI(Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method

.method private closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 99
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p2, p3, v0

    const-string p2, "%s. (%s) Will retry later"

    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 100
    iget-object p3, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p3, p2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object p3

    .line 103
    iput-object p2, p3, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 105
    iget-object p2, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/adjust/sdk/IPackageHandler;

    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-interface {p2, p3, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private sendI(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->basePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/adjust/sdk/UtilNetworking;->createPOSTHttpsURLConnection(Ljava/lang/String;Lcom/adjust/sdk/ActivityPackage;I)Lcom/adjust/sdk/ResponseData;

    move-result-object p2

    .line 73
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IPackageHandler;

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v1, p2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    .line 79
    invoke-interface {v0, p2, p1}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V

    return-void

    .line 83
    :cond_2
    invoke-interface {v0, p2}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Runtime exception"

    .line 91
    invoke-direct {p0, p1, v0, p2}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p2

    const-string v0, "Request failed"

    .line 89
    invoke-direct {p0, p1, v0, p2}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p2

    const-string v0, "Request timed out"

    .line 87
    invoke-direct {p0, p1, v0, p2}, Lcom/adjust/sdk/RequestHandler;->closePackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p2

    const-string v0, "Failed to encode parameters"

    .line 85
    invoke-direct {p0, p1, v0, p2}, Lcom/adjust/sdk/RequestHandler;->sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendNextPackageI(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    .line 117
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p2, p3, v0

    const-string p2, "%s. (%s)"

    invoke-static {p2, p3}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 118
    iget-object p3, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p3, p2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {p1}, Lcom/adjust/sdk/ResponseData;->buildResponseData(Lcom/adjust/sdk/ActivityPackage;)Lcom/adjust/sdk/ResponseData;

    move-result-object p1

    .line 121
    iput-object p2, p1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 123
    iget-object p2, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/adjust/sdk/IPackageHandler;

    if-nez p2, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-interface {p2, p1}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage(Lcom/adjust/sdk/ResponseData;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/RequestHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/RequestHandler$1;-><init>(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;I)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public teardown()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RequestHandler teardown"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 59
    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method
