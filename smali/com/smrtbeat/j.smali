.class Lcom/smrtbeat/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/i;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Landroid/content/SharedPreferences;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/smrtbeat/i;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/smrtbeat/ac;->a()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v2, "SendPingData"

    invoke-static {v1, v2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/smrtbeat/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/bd;->b(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {}, Lcom/smrtbeat/i;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/smrtbeat/i;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
