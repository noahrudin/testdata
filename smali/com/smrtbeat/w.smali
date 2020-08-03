.class Lcom/smrtbeat/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/smrtbeat/ExceptionHander;

.field private final synthetic b:Lorg/json/JSONObject;

.field private final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/smrtbeat/ExceptionHander;Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/w;->a:Lcom/smrtbeat/ExceptionHander;

    iput-object p2, p0, Lcom/smrtbeat/w;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/smrtbeat/w;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/smrtbeat/w;->b:Lorg/json/JSONObject;

    const-wide/16 v3, 0x1388

    invoke-static {v2, v3, v4}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v0, p0, Lcom/smrtbeat/w;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    sub-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/w;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smrtbeat/ar;->a(Ljava/lang/String;)Lcom/smrtbeat/as;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/w;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
