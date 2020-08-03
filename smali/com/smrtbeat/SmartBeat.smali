.class public Lcom/smrtbeat/SmartBeat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addExtraData(Ljava/util/HashMap;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/smrtbeat/SmartBeat;->addExtraData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static beginOnDrawFrame()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/ag;->a()Z

    move-result v0

    return v0
.end method

.method public static disable()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smrtbeat/bd;->a(Z)V

    return-void
.end method

.method public static disableAutoScreenCapture()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smrtbeat/g;->O:Z

    return-void
.end method

.method public static enable()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smrtbeat/bd;->a(Z)V

    return-void
.end method

.method public static enableAutoScreenCapture()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smrtbeat/g;->O:Z

    return-void
.end method

.method public static enableDebugLog(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    return-void
.end method

.method public static enableLogCat()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smrtbeat/g;->I:Z

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->J:Ljava/lang/String;

    return-void
.end method

.method public static enableLogCat(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smrtbeat/g;->I:Z

    sput-object p0, Lcom/smrtbeat/g;->J:Ljava/lang/String;

    return-void
.end method

.method public static endOnDrawFrame()V
    .locals 0

    invoke-static {}, Lcom/smrtbeat/ag;->b()V

    return-void
.end method

.method public static flush()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/smrtbeat/i;->c()V

    return-void
.end method

.method public static initAndStartSession(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "This Android version(%d) is not supported"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid api key:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartBeat"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v0}, Lcom/smrtbeat/bd;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;)V

    sput-object p1, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/smrtbeat/bd;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/smrtbeat/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smrtbeat/g;->C:Z

    invoke-static {p0}, Lcom/smrtbeat/SmartBeatJni;->b(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/smrtbeat/g;->D:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    new-instance v0, Lcom/smrtbeat/ExceptionHander;

    invoke-direct {v0, p1}, Lcom/smrtbeat/ExceptionHander;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_3

    invoke-static {p0}, Lcom/smrtbeat/ak;->a(Landroid/app/Application;)V

    :cond_3
    invoke-static {}, Lcom/smrtbeat/i;->c()V

    invoke-static {}, Lcom/smrtbeat/i;->b()V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "apiKey must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initAndStartSession(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/smrtbeat/bd;->a(Z)V

    invoke-static {p0, p1}, Lcom/smrtbeat/SmartBeat;->initAndStartSession(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->ac:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhiteListed()Z
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/smrtbeat/ag;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static leaveBreadcrumbs(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Breadcrumb length should be up to %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/smrtbeat/bd;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smrtbeat/ae;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static logHandleExceptionForCocos2dJs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/smrtbeat/ExceptionHander;->logCocos2dJsException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logHandleExceptionForUnity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/smrtbeat/ExceptionHander;->logUnityLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logHandleExceptionForUnity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/smrtbeat/ExceptionHander;->logUnityLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/smrtbeat/aw;

    invoke-direct {p1}, Lcom/smrtbeat/aw;-><init>()V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/smrtbeat/aw;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public static logHandledException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/smrtbeat/ExceptionHander;->logHandledException(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static notifyDump(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyOnPause(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Lcom/smrtbeat/bd;->c(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static notifyOnResume(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Lcom/smrtbeat/bd;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/smrtbeat/bd;->a(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static notifyRunning()V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/smrtbeat/i;->a()V

    return-void
.end method

.method public static onSurfaceCreated(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smrtbeat/SmartBeat;->onSurfaceCreated(IZ)V

    return-void
.end method

.method public static onSurfaceCreated(IZ)V
    .locals 0

    sput p0, Lcom/smrtbeat/g;->E:I

    invoke-static {p1}, Lcom/smrtbeat/ag;->a(Z)V

    return-void
.end method

.method public static setActivityAsSensitive(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/smrtbeat/g;->Q:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static setActivityAsSensitive(Ljava/util/List;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/smrtbeat/g;->Q:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static setOpenGLESVersion(I)V
    .locals 1

    const-string p0, "SmartBeat"

    const-string v0, "deprecated API (SmartBeat.setOpenGLESVersion) is used."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeat;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    return-void
.end method

.method public static whiteListBoardForOpenGLES(Ljava/lang/String;)V
    .locals 1

    const-string p0, "SmartBeat"

    const-string v0, "deprecated API (SmartBeat.whiteListBoardForOpenGLES) is used."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static whiteListModelForOpenGLES(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/smrtbeat/ag;->a(Ljava/lang/String;)V

    return-void
.end method
