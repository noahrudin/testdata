.class Lcom/smrtbeat/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = ".id"

.field private static final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final d:J = 0x36ee80L

.field private static synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/smrtbeat/i;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/smrtbeat/i;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/File;J)Lcom/smrtbeat/ar;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->k()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/smrtbeat/ar;

    invoke-direct {p0}, Lcom/smrtbeat/ar;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Lcom/smrtbeat/r;

    invoke-direct {v0}, Lcom/smrtbeat/r;-><init>()V

    invoke-virtual {v0, p0}, Lcom/smrtbeat/r;->a(Ljava/io/File;)Lcom/smrtbeat/at;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/smrtbeat/bc;->a(Lcom/smrtbeat/at;J)Lcom/smrtbeat/ar;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lcom/smrtbeat/ar;

    invoke-direct {p0}, Lcom/smrtbeat/ar;-><init>()V

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smrtbeat/i;->b(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;
    .locals 0

    invoke-static {p0, p1}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object p0

    return-object p0
.end method

.method static a()V
    .locals 3

    sget-boolean v0, Lcom/smrtbeat/g;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/smrtbeat/bd;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/i;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/j;

    invoke-direct {v2}, Lcom/smrtbeat/j;-><init>()V

    invoke-virtual {v2, v0}, Lcom/smrtbeat/j;->a(Landroid/content/SharedPreferences;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/i;->c(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method static a(Lorg/json/JSONObject;J)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/i;->l()V

    sget-object v0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v1, "SendCrashEvent"

    invoke-static {v0, v1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    new-instance v0, Lcom/smrtbeat/n;

    invoke-direct {v0}, Lcom/smrtbeat/n;-><init>()V

    invoke-virtual {v0, p0}, Lcom/smrtbeat/n;->a(Lorg/json/JSONObject;)Lcom/smrtbeat/at;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/smrtbeat/bc;->a(Lcom/smrtbeat/at;J)Lcom/smrtbeat/ar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object p1

    sget-object p2, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-eq p1, p2, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/io/File;J)V
    .locals 4

    invoke-static {}, Lcom/smrtbeat/i;->k()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/smrtbeat/i;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/smrtbeat/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/smrtbeat/i;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/smrtbeat/o;

    invoke-direct {v1}, Lcom/smrtbeat/o;-><init>()V

    invoke-virtual {v1, v0, p1, p0}, Lcom/smrtbeat/o;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/smrtbeat/at;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/smrtbeat/bc;->a(Lcom/smrtbeat/at;J)Lcom/smrtbeat/ar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object p2

    sget-object p3, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lcom/smrtbeat/i;->n()I

    move-result p3

    sget v3, Lcom/smrtbeat/g;->R:I

    if-lt p3, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/smrtbeat/i;->q()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_3
    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smrtbeat/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Z
    .locals 0

    invoke-static {p0}, Lcom/smrtbeat/i;->b(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/File;[Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".id"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return v0

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/smrtbeat/i;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;
    .locals 5

    new-instance v0, Lcom/smrtbeat/ar;

    invoke-direct {v0}, Lcom/smrtbeat/ar;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    const-string p1, "Data cannot send due to invalide api key."

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x4e20

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v2, "X-SmartBeat-Api-Key"

    sget-object v3, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p2

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, v0, Lcom/smrtbeat/ar;->a:I

    iget p1, v0, Lcom/smrtbeat/ar;->a:I

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    invoke-static {p0}, Lcom/smrtbeat/bd;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/smrtbeat/ar;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v1

    :goto_0
    :try_start_3
    sget-object p2, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to send data"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz p0, :cond_6

    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    :goto_1
    return-object v0

    :catchall_2
    move-exception p1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_2
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_8
    throw p1
.end method

.method private static b(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;
    .locals 1

    const-string v0, "https://api.smbeat.jp/api/errors"

    invoke-static {v0, p0, p1}, Lcom/smrtbeat/i;->b(Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object p0

    return-object p0
.end method

.method static b()V
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smrtbeat/i;->i()V

    :cond_1
    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p0, v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/smrtbeat/i;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    :try_start_0
    invoke-static {}, Lcom/smrtbeat/i;->f()[I

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v5, v3}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smrtbeat/as;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_3

    const/4 v3, 0x2

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/smrtbeat/i;->c(Ljava/io/File;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/i;->n()I

    move-result v0

    sget v1, Lcom/smrtbeat/g;->R:I

    if-lt v0, v1, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v0, "Dropped CrashData due to Event full"

    invoke-static {p0, v0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/p;

    invoke-direct {v1}, Lcom/smrtbeat/p;-><init>()V

    invoke-virtual {v1, p1, p0}, Lcom/smrtbeat/p;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;)Z
    .locals 10

    invoke-static {}, Lcom/smrtbeat/bd;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/bd;->c(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v2, v6

    if-eqz p0, :cond_2

    sub-long v6, v4, v2

    const-wide/32 v8, 0x1499700

    cmp-long p0, v6, v8

    if-gtz p0, :cond_2

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "OK"

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    :catch_0
    :cond_0
    return p2
.end method

.method static c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/t;

    invoke-direct {v1}, Lcom/smrtbeat/t;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static c(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/i;->s()I

    move-result v0

    sget v1, Lcom/smrtbeat/g;->R:I

    if-lt v0, v1, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v0, "Dropped ExceptionData due to Event full"

    invoke-static {p0, v0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/smrtbeat/i;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smrtbeat/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static c(Ljava/io/File;)Z
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x3

    if-lt v4, v6, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v5

    :cond_1
    if-ltz v2, :cond_3

    if-gez v1, :cond_2

    move v1, v2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v1, v5

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return v3
.end method

.method private static d(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    throw p0

    :catch_2
    nop

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_2
    const-string p0, ""

    :catch_4
    :goto_3
    return-object p0
.end method

.method static synthetic d()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/smrtbeat/i;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/smrtbeat/i;->k()V

    return-void
.end method

.method static synthetic f()[I
    .locals 3

    sget-object v0, Lcom/smrtbeat/i;->e:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/as;->values()[Lcom/smrtbeat/as;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smrtbeat/as;->b:Lcom/smrtbeat/as;

    invoke-virtual {v1}, Lcom/smrtbeat/as;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/smrtbeat/as;->c:Lcom/smrtbeat/as;

    invoke-virtual {v1}, Lcom/smrtbeat/as;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    invoke-virtual {v1}, Lcom/smrtbeat/as;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/smrtbeat/i;->e:[I

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    sget-object v0, Lcom/smrtbeat/i;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/smrtbeat/i;->m()V

    return-void
.end method

.method private static declared-synchronized i()V
    .locals 3

    const-class v0, Lcom/smrtbeat/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/smrtbeat/m;

    invoke-direct {v2}, Lcom/smrtbeat/m;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    sget-object v1, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static j()Z
    .locals 9

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    const-string v2, "failed to check remote controle due to context is null"

    invoke-static {v0, v2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {v0}, Lcom/smrtbeat/bd;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/bd;->b(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x1

    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    sub-long v4, v6, v4

    cmp-long v8, v4, v2

    if-lez v8, :cond_1

    return v0

    :cond_1
    const-wide/32 v4, 0x36ee80

    sub-long/2addr v2, v4

    cmp-long v4, v6, v2

    if-gez v4, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private static k()V
    .locals 2

    invoke-static {}, Lcom/smrtbeat/i;->u()I

    move-result v0

    sget v1, Lcom/smrtbeat/g;->R:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v1, "Dropped CaputredImages due to Event full"

    invoke-static {v0, v1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/smrtbeat/i;->v()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static l()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/q;

    invoke-direct {v1}, Lcom/smrtbeat/q;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static declared-synchronized m()V
    .locals 16

    const-class v1, Lcom/smrtbeat/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/start/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/crash/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/i;->b(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/exception/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smrtbeat/i;->b(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/dump/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_b

    array-length v6, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_3
    array-length v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    move-object v11, v10

    move-object v12, v11

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v9, :cond_8

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Lcom/smrtbeat/ab;

    const-string v10, "errors"

    const-string v13, "json.txt"

    invoke-direct {v9, v10, v13, v12}, Lcom/smrtbeat/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/smrtbeat/ab;

    const-string v10, "minidump"

    invoke-static {v11}, Lcom/smrtbeat/bd;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12, v11}, Lcom/smrtbeat/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/smrtbeat/aa;

    const-string v10, "https://minidumps.smbeat.jp/api/errors/multi"

    invoke-direct {v9, v10, v0}, Lcom/smrtbeat/aa;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v0, 0x7d0

    invoke-virtual {v9, v0, v5}, Lcom/smrtbeat/aa;->a(IZ)Lcom/smrtbeat/ar;

    move-result-object v0

    invoke-static {}, Lcom/smrtbeat/i;->f()[I

    move-result-object v9

    invoke-virtual {v0}, Lcom/smrtbeat/ar;->a()Lcom/smrtbeat/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smrtbeat/as;->ordinal()I

    move-result v0

    aget v0, v9, v0

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v11}, Lcom/smrtbeat/i;->c(Ljava/io/File;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v9, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    const-string v10, "failed to send dump: %s"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    invoke-static {v8}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    aget-object v13, v0, v10

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".dmp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v11, v13

    goto :goto_5

    :cond_9
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".dat"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object v12, v13

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_b
    :goto_6
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/smrtbeat/s;

    invoke-direct {v2}, Lcom/smrtbeat/s;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/capture/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    array-length v6, v2

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v6, :cond_c

    goto/16 :goto_d

    :cond_c
    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v4, 0x2

    goto/16 :goto_c

    :cond_d
    invoke-static {v8, v0}, Lcom/smrtbeat/i;->a(Ljava/io/File;[Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_12

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    if-lt v11, v10, :cond_e

    const/4 v4, 0x2

    goto :goto_b

    :cond_e
    aget-object v13, v9, v11

    invoke-static {}, Lcom/smrtbeat/i;->f()[I

    move-result-object v14

    const-wide/16 v3, 0x0

    invoke-static {v13, v3, v4}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/ar;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smrtbeat/ar;->a(Ljava/lang/String;)Lcom/smrtbeat/as;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smrtbeat/as;->ordinal()I

    move-result v3

    aget v3, v14, v3

    if-eq v3, v5, :cond_10

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    :goto_9
    const/4 v12, 0x1

    goto :goto_a

    :cond_f
    invoke-static {v13}, Lcom/smrtbeat/i;->c(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_9

    :cond_10
    const/4 v4, 0x2

    invoke-static {v13}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    :cond_11
    :goto_a
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    const/4 v4, 0x2

    const/4 v12, 0x0

    :goto_b
    if-nez v12, :cond_14

    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    invoke-static {v8}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V

    goto :goto_c

    :cond_13
    const/4 v4, 0x2

    invoke-static {v8}, Lcom/smrtbeat/i;->a(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_14
    :goto_c
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_15
    :goto_d
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static n()I
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/crash/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/dump/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/smrtbeat/k;

    invoke-direct {v2}, Lcom/smrtbeat/k;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private static o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/crash/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static p()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/dump_tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static q()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/dump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/dump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static s()I
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/exception/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static t()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/exception/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static u()I
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/smrtbeat/l;

    invoke-direct {v1}, Lcom/smrtbeat/l;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static v()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
