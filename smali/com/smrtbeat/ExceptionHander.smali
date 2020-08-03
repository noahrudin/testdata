.class public Lcom/smrtbeat/ExceptionHander;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smrtbeat/ExceptionHander;->mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static logCocos2dJsException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p4}, Lcom/smrtbeat/bd;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/smrtbeat/z;

    invoke-direct {p3, p0, p1}, Lcom/smrtbeat/z;-><init>(Lorg/json/JSONObject;Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static logHandledException(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    const-string p1, "Throwable should not be null when calling logHandledException()"

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/smrtbeat/x;

    invoke-direct {v0}, Lcom/smrtbeat/x;-><init>()V

    invoke-virtual {v0, p0}, Lcom/smrtbeat/x;->a(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static logUnityLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/smrtbeat/y;

    invoke-direct {p2}, Lcom/smrtbeat/y;-><init>()V

    invoke-virtual {p2, p0}, Lcom/smrtbeat/y;->a(Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/smrtbeat/g;->ab:Z

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p2, v1}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/smrtbeat/bd;->l()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/smrtbeat/w;

    invoke-direct {v3, p0, v0, v1}, Lcom/smrtbeat/w;-><init>(Lcom/smrtbeat/ExceptionHander;Lorg/json/JSONObject;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smrtbeat/ExceptionHander;->mDefaultHander:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    const-wide/16 p1, 0x1388

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
