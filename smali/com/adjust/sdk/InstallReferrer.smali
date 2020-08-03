.class public Lcom/adjust/sdk/InstallReferrer;
.super Ljava/lang/Object;
.source "InstallReferrer.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final PACKAGE_BASE_NAME:Ljava/lang/String; = "com.android.installreferrer."

.field private static final STATUS_DEVELOPER_ERROR:I = 0x3

.field private static final STATUS_FEATURE_NOT_SUPPORTED:I = 0x2

.field private static final STATUS_OK:I = 0x0

.field private static final STATUS_SERVICE_DISCONNECTED:I = -0x1

.field private static final STATUS_SERVICE_UNAVAILABLE:I = 0x1


# instance fields
.field private activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/adjust/sdk/IActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final flagLock:Ljava/lang/Object;

.field private hasInstallReferrerBeenRead:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private referrerClient:Ljava/lang/Object;

.field private retries:I

.field private retryTimer:Lcom/adjust/sdk/TimerOnce;

.field private retryWaitTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adjust/sdk/IActivityHandler;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 55
    iput v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryWaitTime:I

    .line 104
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    .line 105
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->context:Landroid/content/Context;

    .line 106
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    .line 108
    iput p1, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    .line 109
    new-instance p1, Lcom/adjust/sdk/TimerOnce;

    new-instance v0, Lcom/adjust/sdk/InstallReferrer$1;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/InstallReferrer$1;-><init>(Lcom/adjust/sdk/InstallReferrer;)V

    const-string v1, "InstallReferrer"

    invoke-direct {p1, v0, v1}, Lcom/adjust/sdk/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    .line 115
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private closeReferrerClient()V
    .locals 6

    .line 467
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "endConnection"

    .line 472
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 474
    iget-object v3, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 476
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "closeReferrerClient error (%s) thrown by (%s)"

    .line 474
    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :goto_0
    iput-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    return-void
.end method

.method private createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.android.installreferrer.api.InstallReferrerClient"

    const-string v5, "newBuilder"

    .line 164
    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/adjust/sdk/Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "build"

    .line 167
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1, v4, v0, v5}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 173
    iget-object v4, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "createInstallReferrerClient error (%s) from (%s)"

    .line 173
    invoke-interface {v4, p1, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 169
    iget-object v4, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "InstallReferrer not integrated in project (%s) thrown by (%s)"

    .line 169
    invoke-interface {v4, p1, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    aput-object p1, v2, v0

    .line 207
    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Null argument passed to InstallReferrer proxy"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :catch_1
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InstallReferrer proxy violating parameter restrictions"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private getInstallBeginTimestampSeconds(Ljava/lang/Object;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getInstallBeginTimestampSeconds"

    const/4 v4, 0x0

    .line 427
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 429
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 431
    iget-object v3, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "getInstallBeginTimestampSeconds error (%s) thrown by (%s)"

    .line 431
    invoke-interface {v3, p1, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method private getInstallReferrer()Ljava/lang/Object;
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getInstallReferrer"

    .line 362
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 365
    iget-object v3, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 367
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "getInstallReferrer error (%s) thrown by (%s)"

    .line 365
    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getInstallReferrerStateListenerClass()Ljava/lang/Class;
    .locals 5

    :try_start_0
    const-string v0, "com.android.installreferrer.api.InstallReferrerStateListener"

    .line 188
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "getInstallReferrerStateListenerClass error (%s) from (%s)"

    .line 190
    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getReferrerClickTimestampSeconds(Ljava/lang/Object;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getReferrerClickTimestampSeconds"

    const/4 v4, 0x0

    .line 405
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4, v5}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 407
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 409
    iget-object v3, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "getReferrerClickTimestampSeconds error (%s) thrown by (%s)"

    .line 409
    invoke-interface {v3, p1, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method private getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getInstallReferrer"

    .line 383
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v0, v3}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 387
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 388
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "getStringInstallReferrer error (%s) thrown by (%s)"

    .line 387
    invoke-interface {v2, p1, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private onInstallReferrerSetupFinishedInt(I)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Unexpected response code of install referrer response: %d"

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->closeReferrerClient()V

    goto/16 :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Install referrer general errors caused by incorrect usage. Retrying ..."

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto/16 :goto_0

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Install referrer not available on the current Play Store app."

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not initiate connection to the Install Referrer service. Retrying ..."

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto :goto_0

    .line 306
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->getInstallReferrer()Ljava/lang/Object;

    move-result-object p1

    .line 307
    invoke-direct {p0, p1}, Lcom/adjust/sdk/InstallReferrer;->getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 308
    invoke-direct {p0, p1}, Lcom/adjust/sdk/InstallReferrer;->getReferrerClickTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v5

    .line 309
    invoke-direct {p0, p1}, Lcom/adjust/sdk/InstallReferrer;->getInstallBeginTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v7

    .line 310
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "installReferrer: %s, clickTime: %d, installBeginTime: %d"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v1

    .line 311
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v0, v2

    .line 310
    invoke-interface {p1, v4, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/adjust/sdk/IActivityHandler;

    if-eqz v4, :cond_4

    .line 316
    invoke-interface/range {v4 .. v9}, Lcom/adjust/sdk/IActivityHandler;->sendInstallReferrer(JJLjava/lang/String;)V

    .line 318
    :cond_4
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :try_start_1
    iput-boolean v3, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    .line 320
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->closeReferrerClient()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 320
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 323
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Couldn\'t get install referrer from client (%s). Retrying ..."

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    goto :goto_0

    .line 342
    :cond_5
    iget-object p1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Play Store service is not connected now. Retrying ..."

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->retry()V

    :goto_0
    return-void
.end method

.method private retry()V
    .locals 7

    .line 442
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-boolean v1, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Install referrer has already been read"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    monitor-exit v0

    return-void

    .line 447
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    .line 450
    iget v0, p0, Lcom/adjust/sdk/InstallReferrer;->retries:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 451
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Limit number of retry for install referrer surpassed"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Already waiting to retry to read install referrer in %d milliseconds"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->retryTimer:Lcom/adjust/sdk/TimerOnce;

    iget v1, p0, Lcom/adjust/sdk/InstallReferrer;->retryWaitTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    return-void

    :catchall_0
    move-exception v1

    .line 447
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startConnection(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    const-string v3, "startConnection"

    new-array v4, v0, [Ljava/lang/Class;

    aput-object p1, v4, v1

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    invoke-static {v2, v3, v4, p1}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "startConnection error (%s) thrown by (%s)"

    .line 238
    invoke-interface {p2, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 233
    invoke-static {p1}, Lcom/adjust/sdk/Util;->hasRootCause(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getRootCause(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "InstallReferrer encountered an InvocationTargetException %s"

    .line 234
    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 251
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrer invoke method null"

    invoke-interface {p2, v0, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 256
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrer invoke method name null"

    invoke-interface {p2, v0, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v0

    const-string v4, "InstallReferrer invoke method name: %s"

    invoke-interface {v1, v4, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_2

    .line 262
    iget-object p3, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "InstallReferrer invoke args null"

    invoke-interface {p3, v3, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-array p3, v0, [Ljava/lang/Object;

    .line 265
    :cond_2
    array-length v1, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p3, v3

    .line 266
    iget-object v5, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "InstallReferrer invoke arg: %s"

    invoke-interface {v5, v4, v6}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "onInstallReferrerSetupFinished"

    .line 270
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 271
    array-length p2, p3

    if-eq p2, v2, :cond_4

    .line 272
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v0

    const-string p3, "InstallReferrer invoke onInstallReferrerSetupFinished args lenght not 1: %d"

    invoke-interface {p2, p3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 276
    :cond_4
    aget-object p2, p3, v0

    .line 277
    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_5

    .line 278
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrer invoke onInstallReferrerSetupFinished arg not int"

    invoke-interface {p2, v0, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 282
    :cond_5
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_6

    .line 284
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrer invoke onInstallReferrerSetupFinished responseCode arg is null"

    invoke-interface {p2, v0, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 288
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/adjust/sdk/InstallReferrer;->onInstallReferrerSetupFinishedInt(I)V

    goto :goto_1

    :cond_7
    const-string p3, "onInstallReferrerServiceDisconnected"

    .line 289
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 290
    iget-object p2, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "InstallReferrer onInstallReferrerServiceDisconnected"

    invoke-interface {p2, v0, p3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-object p1
.end method

.method public startConnection()V
    .locals 4

    .line 122
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTryInstallReferrer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->closeReferrerClient()V

    .line 127
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->flagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/adjust/sdk/InstallReferrer;->hasInstallReferrerBeenRead:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/adjust/sdk/InstallReferrer;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Install referrer has already been read"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-direct {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/adjust/sdk/InstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_3

    return-void

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/adjust/sdk/InstallReferrer;->getInstallReferrerStateListenerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 148
    :cond_4
    invoke-direct {p0, v0}, Lcom/adjust/sdk/InstallReferrer;->createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    .line 153
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/InstallReferrer;->startConnection(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
