.class public Lcom/growthbeat/link/GrowthLink;
.super Ljava/lang/Object;
.source "GrowthLink.java"


# static fields
.field private static final DEFAULT_SYNCRONIZATION_URL:Ljava/lang/String; = "https://gbt.io/l/synchronize"

.field private static final HTTP_CLIENT_DEFAULT_BASE_URL:Ljava/lang/String; = "https://api.link.growthbeat.com/"

.field private static final HTTP_CLIENT_DEFAULT_CONNECTION_TIMEOUT:I = 0xea60

.field private static final HTTP_CLIENT_DEFAULT_SOCKET_TIMEOUT:I = 0xea60

.field private static final INSTALL_REFERRER_KEY:Ljava/lang/String; = "installReferrer"

.field private static final LOGGER_DEFAULT_TAG:Ljava/lang/String; = "GrowthLink"

.field private static final PREFERENCE_DEFAULT_FILE_NAME:Ljava/lang/String; = "growthlink-preferences"

.field private static final instance:Lcom/growthbeat/link/GrowthLink;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private credentialId:Ljava/lang/String;

.field private firstSession:Z

.field private final httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

.field private initialized:Z

.field private installReferrerLatch:Ljava/util/concurrent/CountDownLatch;

.field private installReferrerReceiveHandler:Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;

.field private final logger:Lcom/growthbeat/Logger;

.field private final preference:Lcom/growthbeat/Preference;

.field private synchronizationCallback:Lcom/growthbeat/link/callback/SynchronizationCallback;

.field private syncronizationUrl:Ljava/lang/String;

.field private webViewUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/growthbeat/link/GrowthLink;

    invoke-direct {v0}, Lcom/growthbeat/link/GrowthLink;-><init>()V

    sput-object v0, Lcom/growthbeat/link/GrowthLink;->instance:Lcom/growthbeat/link/GrowthLink;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/growthbeat/Logger;

    const-string v1, "GrowthLink"

    invoke-direct {v0, v1}, Lcom/growthbeat/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    .line 41
    new-instance v0, Lcom/growthbeat/http/GrowthbeatHttpClient;

    const v1, 0xea60

    const-string v2, "https://api.link.growthbeat.com/"

    invoke-direct {v0, v2, v1, v1}, Lcom/growthbeat/http/GrowthbeatHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    .line 43
    new-instance v0, Lcom/growthbeat/Preference;

    const-string v1, "growthlink-preferences"

    invoke-direct {v0, v1}, Lcom/growthbeat/Preference;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->context:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->applicationId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->credentialId:Ljava/lang/String;

    const-string v1, "https://gbt.io/l/synchronize"

    .line 49
    iput-object v1, p0, Lcom/growthbeat/link/GrowthLink;->syncronizationUrl:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->webViewUserAgent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/growthbeat/link/GrowthLink;->initialized:Z

    .line 53
    iput-boolean v0, p0, Lcom/growthbeat/link/GrowthLink;->firstSession:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v0, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;

    invoke-direct {v0}, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->synchronizationCallback:Lcom/growthbeat/link/callback/SynchronizationCallback;

    .line 57
    new-instance v0, Lcom/growthbeat/link/handler/DefaultInstallReferrerReceiveHandler;

    invoke-direct {v0}, Lcom/growthbeat/link/handler/DefaultInstallReferrerReceiveHandler;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerReceiveHandler:Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->webViewUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/growthbeat/link/GrowthLink;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink;->webViewUserAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/growthbeat/link/GrowthLink;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/growthbeat/link/GrowthLink;->synchronize()V

    return-void
.end method

.method static synthetic access$300(Lcom/growthbeat/link/GrowthLink;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/growthbeat/link/GrowthLink;->firstSession:Z

    return p0
.end method

.method static synthetic access$302(Lcom/growthbeat/link/GrowthLink;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/growthbeat/link/GrowthLink;->firstSession:Z

    return p1
.end method

.method static synthetic access$400(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->credentialId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/growthbeat/link/GrowthLink;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/link/callback/SynchronizationCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/growthbeat/link/GrowthLink;->synchronizationCallback:Lcom/growthbeat/link/callback/SynchronizationCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/growthbeat/link/GrowthLink;
    .locals 1

    .line 64
    sget-object v0, Lcom/growthbeat/link/GrowthLink;->instance:Lcom/growthbeat/link/GrowthLink;

    return-object v0
.end method

.method private synchronize()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    const-string v1, "Check initialization..."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/growthbeat/link/model/Synchronization;->load()Lcom/growthbeat/link/model/Synchronization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    const-string v1, "Already initialized."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/growthbeat/link/GrowthLink;->firstSession:Z

    .line 169
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getExecutor()Lcom/growthbeat/GrowthbeatThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/growthbeat/link/GrowthLink$3;

    invoke-direct {v1, p0}, Lcom/growthbeat/link/GrowthLink$3;-><init>(Lcom/growthbeat/link/GrowthLink;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCredentialId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->credentialId:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    return-object v0
.end method

.method public getInstallReferrer()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    const-string v1, "installReferrer"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Preference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerReceiveHandler()Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerReceiveHandler:Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;

    return-object v0
.end method

.method public getLogger()Lcom/growthbeat/Logger;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    return-object v0
.end method

.method public getPreference()Lcom/growthbeat/Preference;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    return-object v0
.end method

.method public getSynchronizationCallback()Lcom/growthbeat/link/callback/SynchronizationCallback;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->synchronizationCallback:Lcom/growthbeat/link/callback/SynchronizationCallback;

    return-object v0
.end method

.method public getSyncronizationUrl()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->syncronizationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleOpenUrl(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "clickId"

    .line 111
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    const-string v0, "Unabled to get clickId from url."

    invoke-virtual {p1, v0}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/Growthbeat;->getExecutor()Lcom/growthbeat/GrowthbeatThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/growthbeat/link/GrowthLink$2;

    invoke-direct {v1, p0, p1}, Lcom/growthbeat/link/GrowthLink$2;-><init>(Lcom/growthbeat/link/GrowthLink;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcom/growthbeat/link/GrowthLink;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/growthbeat/link/GrowthLink;->initialized:Z

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    const-string p2, "This SDK not supported this os."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->logger:Lcom/growthbeat/Logger;

    const-string p2, "The context parameter cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/growthbeat/link/GrowthLink;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/growthbeat/link/GrowthLink;->applicationId:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/growthbeat/link/GrowthLink;->credentialId:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/growthbeat/Growthbeat;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p3

    invoke-virtual {p3}, Lcom/growthbeat/Growthbeat;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/Growthbeat;->getClient()Lcom/growthbeat/model/Client;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/Growthbeat;->getClient()Lcom/growthbeat/model/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/model/Client;->getApplication()Lcom/growthbeat/model/Application;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/growthbeat/Growthbeat;->getInstance()Lcom/growthbeat/Growthbeat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/Growthbeat;->getClient()Lcom/growthbeat/model/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/growthbeat/model/Client;->getApplication()Lcom/growthbeat/model/Application;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/growthbeat/model/Application;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 91
    :cond_3
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    invoke-virtual {p1}, Lcom/growthbeat/Preference;->removeAll()V

    .line 94
    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/growthbeat/link/GrowthLink$1;

    invoke-direct {p2, p0}, Lcom/growthbeat/link/GrowthLink$1;-><init>(Lcom/growthbeat/link/GrowthLink;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setInstallReferrer(Ljava/lang/String;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->preference:Lcom/growthbeat/Preference;

    const-string v1, "installReferrer"

    invoke-virtual {v0, v1, p1}, Lcom/growthbeat/Preference;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setInstallReferrerReceiveHandler(Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerReceiveHandler:Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;

    return-void
.end method

.method public setSynchronizationCallback(Lcom/growthbeat/link/callback/SynchronizationCallback;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink;->synchronizationCallback:Lcom/growthbeat/link/callback/SynchronizationCallback;

    return-void
.end method

.method public setSyncronizationUrl(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink;->syncronizationUrl:Ljava/lang/String;

    return-void
.end method

.method public waitInstallReferrer(J)Ljava/lang/String;
    .locals 2

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink;->installReferrerLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    invoke-virtual {p0}, Lcom/growthbeat/link/GrowthLink;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
