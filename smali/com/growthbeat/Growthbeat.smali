.class public Lcom/growthbeat/Growthbeat;
.super Ljava/lang/Object;
.source "Growthbeat.java"


# static fields
.field private static final HTTP_CLIENT_DEFAULT_BASE_URL:Ljava/lang/String; = "https://api.growthbeat.com/"

.field private static final HTTP_CLIENT_DEFAULT_CONNECT_TIMEOUT:I = 0xea60

.field private static final HTTP_CLIENT_DEFAULT_READ_TIMEOUT:I = 0xea60

.field private static final LOGGER_DEFAULT_TAG:Ljava/lang/String; = "Growthbeat"

.field private static final PREFERENCE_DEFAULT_FILE_NAME:Ljava/lang/String; = "growthbeat-preferences"

.field private static final instance:Lcom/growthbeat/Growthbeat;


# instance fields
.field private client:Lcom/growthbeat/model/Client;

.field private context:Landroid/content/Context;

.field private final executor:Lcom/growthbeat/GrowthbeatThreadExecutor;

.field private final httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

.field private initialized:Z

.field private intentHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/growthbeat/intenthandler/IntentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/growthbeat/Logger;

.field private final preference:Lcom/growthbeat/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/growthbeat/Growthbeat;

    invoke-direct {v0}, Lcom/growthbeat/Growthbeat;-><init>()V

    sput-object v0, Lcom/growthbeat/Growthbeat;->instance:Lcom/growthbeat/Growthbeat;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/growthbeat/Logger;

    const-string v1, "Growthbeat"

    invoke-direct {v0, v1}, Lcom/growthbeat/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    .line 29
    new-instance v0, Lcom/growthbeat/http/GrowthbeatHttpClient;

    const v1, 0xea60

    const-string v2, "https://api.growthbeat.com/"

    invoke-direct {v0, v2, v1, v1}, Lcom/growthbeat/http/GrowthbeatHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/growthbeat/Growthbeat;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    .line 31
    new-instance v0, Lcom/growthbeat/GrowthbeatThreadExecutor;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/growthbeat/GrowthbeatThreadExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/growthbeat/Growthbeat;->executor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    .line 32
    new-instance v0, Lcom/growthbeat/Preference;

    const-string v1, "growthbeat-preferences"

    invoke-direct {v0, v1}, Lcom/growthbeat/Preference;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/growthbeat/Growthbeat;->preference:Lcom/growthbeat/Preference;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/growthbeat/Growthbeat;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/growthbeat/Growthbeat;->initialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/growthbeat/Growthbeat;)Lcom/growthbeat/Logger;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/growthbeat/Growthbeat;Lcom/growthbeat/model/Client;)Lcom/growthbeat/model/Client;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->client:Lcom/growthbeat/model/Client;

    return-object p1
.end method

.method public static getInstance()Lcom/growthbeat/Growthbeat;
    .locals 1

    .line 46
    sget-object v0, Lcom/growthbeat/Growthbeat;->instance:Lcom/growthbeat/Growthbeat;

    return-object v0
.end method


# virtual methods
.method public getClient()Lcom/growthbeat/model/Client;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->client:Lcom/growthbeat/model/Client;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getExecutor()Lcom/growthbeat/GrowthbeatThreadExecutor;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->executor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    return-object v0
.end method

.method public getHttpClient()Lcom/growthbeat/http/GrowthbeatHttpClient;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->httpClient:Lcom/growthbeat/http/GrowthbeatHttpClient;

    return-object v0
.end method

.method public getLogger()Lcom/growthbeat/Logger;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    return-object v0
.end method

.method public getPreference()Lcom/growthbeat/Preference;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->preference:Lcom/growthbeat/Preference;

    return-object v0
.end method

.method public handleIntent(Lcom/growthbeat/model/Intent;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->intentHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/growthbeat/intenthandler/IntentHandler;

    .line 127
    invoke-interface {v1, p1}, Lcom/growthbeat/intenthandler/IntentHandler;->handle(Lcom/growthbeat/model/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    iget-boolean v0, p0, Lcom/growthbeat/Growthbeat;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/growthbeat/Growthbeat;->initialized:Z

    if-nez p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    const-string p2, "The context parameter cannot be null."

    invoke-virtual {p1, p2}, Lcom/growthbeat/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->context:Landroid/content/Context;

    const/4 p1, 0x2

    .line 62
    new-array p1, p1, [Lcom/growthbeat/intenthandler/IntentHandler;

    new-instance v1, Lcom/growthbeat/intenthandler/UrlIntentHandler;

    iget-object v2, p0, Lcom/growthbeat/Growthbeat;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/growthbeat/intenthandler/UrlIntentHandler;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    new-instance v1, Lcom/growthbeat/intenthandler/NoopIntentHandler;

    invoke-direct {v1}, Lcom/growthbeat/intenthandler/NoopIntentHandler;-><init>()V

    aput-object v1, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->intentHandlers:Ljava/util/List;

    .line 64
    iget-object p1, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string v3, "Initializing... (applicationId:%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/growthbeat/Growthbeat;->preference:Lcom/growthbeat/Preference;

    iget-object v1, p0, Lcom/growthbeat/Growthbeat;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/growthbeat/Preference;->setContext(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/growthbeat/model/Client;->load()Lcom/growthbeat/model/Client;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/growthbeat/model/Client;->getApplication()Lcom/growthbeat/model/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthbeat/model/Application;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-static {}, Lcom/growthbeat/model/GrowthPushClient;->removeClient()V

    .line 71
    iget-object p2, p0, Lcom/growthbeat/Growthbeat;->logger:Lcom/growthbeat/Logger;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/growthbeat/model/Client;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    const-string v0, "Client already exists. (id:%s)"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->client:Lcom/growthbeat/model/Client;

    return-void

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/growthbeat/Growthbeat;->preference:Lcom/growthbeat/Preference;

    invoke-virtual {p1}, Lcom/growthbeat/Preference;->removeAll()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->client:Lcom/growthbeat/model/Client;

    .line 79
    iget-object p1, p0, Lcom/growthbeat/Growthbeat;->executor:Lcom/growthbeat/GrowthbeatThreadExecutor;

    new-instance v0, Lcom/growthbeat/Growthbeat$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/growthbeat/Growthbeat$1;-><init>(Lcom/growthbeat/Growthbeat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/growthbeat/GrowthbeatThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntentHandlers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/growthbeat/intenthandler/IntentHandler;",
            ">;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/growthbeat/Growthbeat;->intentHandlers:Ljava/util/List;

    return-void
.end method

.method public setLoggerSilent(Z)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/growthbeat/Growthbeat;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->setSilent(Z)V

    .line 169
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->setSilent(Z)V

    .line 170
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/message/GrowthMessage;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->setSilent(Z)V

    .line 171
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/growthbeat/Logger;->setSilent(Z)V

    return-void
.end method

.method public waitClient()Lcom/growthbeat/model/Client;
    .locals 2

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/growthbeat/Growthbeat;->client:Lcom/growthbeat/model/Client;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x64

    .line 141
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0
.end method
