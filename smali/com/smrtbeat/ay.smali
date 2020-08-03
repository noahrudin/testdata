.class Lcom/smrtbeat/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/ay;->a:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smrtbeat/ac;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/smrtbeat/ay;->a:Ljava/io/File;

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/io/File;J)V

    invoke-static {}, Lcom/smrtbeat/bd;->l()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    if-eqz v2, :cond_0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/ar;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smrtbeat/ar;->a(Ljava/lang/String;)Lcom/smrtbeat/as;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method
