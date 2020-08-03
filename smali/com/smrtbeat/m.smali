.class Lcom/smrtbeat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "suppressCap"

    const-string v1, "suppressSdk"

    sget-boolean v2, Lcom/smrtbeat/g;->ad:Z

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/smrtbeat/bd;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    :try_start_0
    const-string v7, "https://control.smbeat.jp/api/remote"

    invoke-static {}, Lcom/smrtbeat/ac;->b()Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/smrtbeat/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object v7

    iget-object v8, v7, Lcom/smrtbeat/ar;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/smrtbeat/i;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    iget-object v7, v7, Lcom/smrtbeat/ar;->b:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3, v1, v9}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v6, v1}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences$Editor;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3, v0, v9}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v6, v0}, Lcom/smrtbeat/bd;->b(Landroid/content/SharedPreferences$Editor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v6}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences$Editor;)V

    if-eqz v9, :cond_4

    if-eq v1, v2, :cond_3

    invoke-static {v6}, Lcom/smrtbeat/bd;->c(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v5}, Lcom/smrtbeat/bd;->e(Landroid/content/SharedPreferences;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {v6}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    sput-object v4, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    throw v0

    :catch_0
    invoke-static {v6}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_4
    :goto_2
    invoke-static {v6}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_5
    sput-object v4, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    return-void
.end method
