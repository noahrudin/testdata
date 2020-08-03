.class public Lcom/adjust/sdk/PackageHandler;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IPackageHandler;


# static fields
.field private static final PACKAGE_QUEUE_FILENAME:Ljava/lang/String; = "AdjustIoPackageQueue"

.field private static final PACKAGE_QUEUE_NAME:Ljava/lang/String; = "Package queue"


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

.field private backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private basePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private requestHandler:Lcom/adjust/sdk/IRequestHandler;

.field private scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor;

    const-string v1, "PackageHandler"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 75
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 76
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandlerBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/PackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 80
    iget-object p1, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance p2, Lcom/adjust/sdk/PackageHandler$1;

    invoke-direct {p2, p0}, Lcom/adjust/sdk/PackageHandler$1;-><init>(Lcom/adjust/sdk/PackageHandler;)V

    invoke-virtual {p1, p2}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->initI()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PackageHandler;->addI(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendFirstI()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/PackageHandler;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendNextI()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/PackageHandler;)Lcom/adjust/sdk/ILogger;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/adjust/sdk/PackageHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private addI(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, "Added package %d (%s)"

    invoke-interface {v0, v4, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%s"

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->writePackageQueueI()V

    return-void
.end method

.method public static deletePackageQueue(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "AdjustIoPackageQueue"

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static deleteState(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/adjust/sdk/PackageHandler;->deletePackageQueue(Landroid/content/Context;)Ljava/lang/Boolean;

    return-void
.end method

.method private initI()V
    .locals 1

    .line 208
    invoke-static {p0}, Lcom/adjust/sdk/AdjustFactory;->getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->readPackageQueueI()V

    return-void
.end method

.method private readPackageQueueI()V
    .locals 6

    const-string v0, "Package queue"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    :try_start_0
    iget-object v3, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    const-string v4, "AdjustIoPackageQueue"

    const-class v5, Ljava/util/List;

    invoke-static {v3, v4, v0, v5}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 284
    iget-object v4, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "Failed to read %s file (%s)"

    invoke-interface {v4, v0, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 289
    iget-object v3, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Package handler read %d packages"

    invoke-interface {v3, v0, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private sendFirstI()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Package handler is paused"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Package handler is already sending"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 238
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    iget-object v3, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v0, v3}, Lcom/adjust/sdk/IRequestHandler;->sendPackage(Lcom/adjust/sdk/ActivityPackage;I)V

    return-void
.end method

.method private sendNextI()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->writePackageQueueI()V

    .line 244
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Package handler can send"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->sendFirstI()V

    return-void
.end method

.method private writePackageQueueI()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    const-string v2, "AdjustIoPackageQueue"

    const-string v3, "Package queue"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Package handler wrote %d packages"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addPackage(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/PackageHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/PackageHandler$2;-><init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public closeFirstPackage(Lcom/adjust/sdk/ResponseData;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 7

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p1, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 140
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/IActivityHandler;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1, p1}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    .line 145
    :cond_0
    new-instance p1, Lcom/adjust/sdk/PackageHandler$5;

    invoke-direct {p1, p0}, Lcom/adjust/sdk/PackageHandler$5;-><init>(Lcom/adjust/sdk/PackageHandler;)V

    if-nez p2, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 161
    :cond_1
    invoke-virtual {p2}, Lcom/adjust/sdk/ActivityPackage;->increaseRetries()I

    move-result p2

    .line 163
    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    invoke-static {p2, v1}, Lcom/adjust/sdk/Util;->getWaitingTime(ILcom/adjust/sdk/BackoffStrategy;)J

    move-result-wide v1

    long-to-double v3, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 166
    sget-object v5, Lcom/adjust/sdk/Util;->SecondsDisplayFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 168
    iget-object v4, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v0

    const-string p2, "Waiting for %s seconds before retrying the %d time"

    invoke-interface {v4, p2, v5}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object p2, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, v1, v2, v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V
    .locals 1

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 91
    iput-object p2, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    xor-int/lit8 p2, p3, 0x1

    .line 92
    iput-boolean p2, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    .line 93
    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->getBasePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler;->basePath:Ljava/lang/String;

    return-void
.end method

.method public pauseSending()V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    return-void
.end method

.method public resumeSending()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/adjust/sdk/PackageHandler;->paused:Z

    return-void
.end method

.method public sendFirstPackage()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/PackageHandler$3;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/PackageHandler$3;-><init>(Lcom/adjust/sdk/PackageHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public sendNextPackage(Lcom/adjust/sdk/ResponseData;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/PackageHandler$4;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/PackageHandler$4;-><init>(Lcom/adjust/sdk/PackageHandler;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 129
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    :cond_0
    return-void
.end method

.method public teardown()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PackageHandler teardown"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {v0}, Lcom/adjust/sdk/CustomScheduledExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Lcom/adjust/sdk/IRequestHandler;->teardown()V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    .line 58
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 59
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    .line 61
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->isSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->context:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 64
    iput-object v0, p0, Lcom/adjust/sdk/PackageHandler;->backoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method public updatePackages(Lcom/adjust/sdk/SessionParameters;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/adjust/sdk/SessionParameters;->deepCopy()Lcom/adjust/sdk/SessionParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->scheduledExecutor:Lcom/adjust/sdk/CustomScheduledExecutor;

    new-instance v1, Lcom/adjust/sdk/PackageHandler$6;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/PackageHandler$6;-><init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/SessionParameters;)V

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/CustomScheduledExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updatePackagesI(Lcom/adjust/sdk/SessionParameters;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Updating package handler queue"

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    aput-object v4, v3, v1

    const-string v4, "Session callback parameters: %s"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    aput-object v3, v2, v1

    const-string v1, "Session partner parameters: %s"

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler;->packageQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/ActivityPackage;

    .line 259
    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v2

    .line 261
    iget-object v3, p1, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    .line 262
    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityPackage;->getCallbackParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Callback"

    .line 261
    invoke-static {v3, v4, v5}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "callback_params"

    .line 265
    invoke-static {v2, v4, v3}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    iget-object v3, p1, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    .line 268
    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityPackage;->getPartnerParameters()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Partner"

    .line 267
    invoke-static {v3, v1, v4}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "partner_params"

    .line 271
    invoke-static {v2, v3, v1}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/adjust/sdk/PackageHandler;->writePackageQueueI()V

    return-void
.end method
