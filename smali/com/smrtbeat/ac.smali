.class Lcom/smrtbeat/ac;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "ping"

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    const-string v3, "userId"

    invoke-static {v1, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "occuredAt"

    invoke-static {v1, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(J)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "breakpad-exception-report"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    const-string v2, "userId"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    const-string v2, "requestId"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "occuredAt"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(JZ)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    const-string v2, "userId"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "requestId"

    if-nez p2, :cond_0

    sget-object p2, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {v0, v1, p2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "occuredAt"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/smrtbeat/ac;->a(J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "request"

    invoke-static {v0, v4, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smrtbeat/ac;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "exception"

    invoke-static {v0, v4, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/ac;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "performance"

    invoke-static {v0, v4, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v1, v2}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "environment"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "sdk"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;JZ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;JZ)Lorg/json/JSONObject;
    .locals 3

    invoke-static {}, Lcom/smrtbeat/ac;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/bd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileNet"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smrtbeat/bd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screenRotation"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget p0, Lcom/smrtbeat/g;->w:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screenDpi"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/smrtbeat/g;->x:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screenWidth"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/smrtbeat/g;->y:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screenHeight"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/bd;->e()Ljava/lang/String;

    move-result-object p0

    const-string v1, "board"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/bd;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "boardPlatform"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/bd;->f()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cpuAbi"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "manufacturer"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "buildType"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;JZ)V

    invoke-static {v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/ac;->a(JZ)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "unity-exception-report"

    invoke-static {v3, v4, v5}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "requestId"

    invoke-static {v3, v4, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v4, "occuredAt"

    invoke-static {v3, v4, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "request"

    invoke-static {v0, p3, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, p2}, Lcom/smrtbeat/ac;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "exception"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/ac;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "performance"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v1, v2}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "environment"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "sdk"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/ac;->a(JZ)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    const-string v6, "cocos2djs-exception-report"

    invoke-static {v4, v5, v6}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "requestId"

    invoke-static {v4, v5, p5}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    const-string v5, "occuredAt"

    invoke-static {v4, v5, p5}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "request"

    invoke-static {v0, p5, v4}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, p2, p3, p4}, Lcom/smrtbeat/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "exception"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/ac;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "performance"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v1, v2, v3}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;JZ)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "environment"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "sdk"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;Z)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, p2}, Lcom/smrtbeat/ac;->a(JZ)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "exception-report"

    invoke-static {v3, v4, v5}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "request"

    invoke-static {v0, v4, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1, p2}, Lcom/smrtbeat/ac;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "exception"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/smrtbeat/ac;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "performance"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0, v1, v2}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "environment"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "sdk"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "stackTrace"

    invoke-static {v0, p0, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/ac;->b(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handled"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cause"

    invoke-static {v0, v1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {v0, p0, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "stackTrace"

    invoke-static {v0, p0, p2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/ac;->b(Lorg/json/JSONObject;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handled"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/ac;->b(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/ac;->c(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, Lcom/smrtbeat/ac;->d(Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v0}, Lcom/smrtbeat/ac;->b(Lorg/json/JSONObject;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handled"

    invoke-static {v0, p1, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 4

    sget-object v0, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "customMeta"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;JZ)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-boolean v1, Lcom/smrtbeat/g;->I:Z

    const-string v2, "log"

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/smrtbeat/bd;->c()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p3

    invoke-virtual {p3}, Lcom/smrtbeat/ae;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    invoke-static {v0, v2, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean p3, Lcom/smrtbeat/g;->v:Z

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "hacked"

    invoke-static {v0, v1, p3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v3, Lcom/smrtbeat/g;->z:J

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msFromStart"

    invoke-static {v0, p2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appPss"

    const-string v2, "sysThreshold"

    const-string v3, "sysLow"

    const-string v4, "sysAvail"

    if-eqz p1, :cond_0

    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v5, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v5, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    invoke-static {v0, v4, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appAvail"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appMax"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appTotal"

    invoke-static {v0, v1, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "memory"

    invoke-static {p0, p1, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "engineVersion"

    invoke-static {v0, v1, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scriptDirPath"

    const-string v1, "assets"

    invoke-static {v0, p1, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "auxData"

    invoke-static {p0, p1, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "message"

    invoke-static {p0, v0, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "remote"

    invoke-static {v1, v2, v3}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    const-string v3, "userId"

    invoke-static {v1, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "occuredAt"

    invoke-static {v1, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "request"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "environment"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/smrtbeat/ac;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 5

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smrtbeat/g;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\\|"

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v1, "breadcrumbs"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cause"

    invoke-static {p0, v0, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->r:Ljava/lang/String;

    const-string v2, "uid"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    const-string v2, "idv2"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    const-string v2, "model"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->p:Ljava/lang/String;

    const-string v2, "brand"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    const-string v2, "appVer"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->t:Ljava/lang/String;

    const-string v2, "appVerCode"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    const-string v2, "appName"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    const-string v2, "appIdentifier"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/smrtbeat/g;->u:Ljava/lang/String;

    const-string v2, "osVer"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/bd;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/smrtbeat/g;->ac:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "optOutCrashLog"

    invoke-static {v0, v2, v1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-static {v0, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "line"

    invoke-static {v0, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-static {v0, v3, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "method"

    invoke-static {v0, v1, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "location"

    invoke-static {p0, p1, v0}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "SmartBeat-Android"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "1.18"

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "stackTrace"

    invoke-static {p0, v0, p1}, Lcom/smrtbeat/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
