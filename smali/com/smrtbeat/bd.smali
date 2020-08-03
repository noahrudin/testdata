.class Lcom/smrtbeat/bd;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "no permission"

.field private static final b:Ljava/lang/String; = "unknown"

.field private static final c:Ljava/lang/String; = "com.smrtbeat.pref1"

.field private static final d:Ljava/lang/String; = "com.smrtbeat.pref3"

.field private static final e:Ljava/lang/String; = "com.smrtbeat.pref4"

.field private static final f:Ljava/lang/String; = "com.smrtbeat.pref5"

.field private static final g:Ljava/lang/String; = "com.smrtbeat.pref6"

.field private static final h:J = 0x5265c00L

.field private static synthetic i:[I

.field private static synthetic j:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    return-wide p2
.end method

.method static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/smrtbeat/an;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-gt v2, p0, :cond_0

    return-object v1

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/smrtbeat/aq;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/smrtbeat/aq;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "android.os.SystemProperties"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "get"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7

    const-string v0, "readResponse :%s"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x400

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v4, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    :try_start_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v5, v1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v5, v1

    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    :goto_2
    :try_start_5
    sget-object v4, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    sget-object v1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_1
    :goto_3
    const-string p0, ""

    return-object p0

    :catchall_2
    move-exception v1

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    sget-object v4, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_2
    :goto_5
    throw v1
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/bd;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/app/Activity;Z)V
    .locals 3

    const-class v0, Lcom/smrtbeat/bd;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sput-object v1, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/bd;->r()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    sput-object v1, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/smrtbeat/bd;->i()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smrtbeat/g;->N:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smrtbeat/g;->N:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v1, Lcom/smrtbeat/e;

    invoke-direct {v1}, Lcom/smrtbeat/e;-><init>()V

    sput-object v1, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/smrtbeat/g;->N:Ljava/lang/Thread;

    sget-object v1, Lcom/smrtbeat/g;->N:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    if-eqz p1, :cond_5

    sget-object p1, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    invoke-virtual {p1, p0}, Lcom/smrtbeat/e;->a(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    invoke-virtual {p1, p0}, Lcom/smrtbeat/e;->b(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->p:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/bd;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->t:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/smrtbeat/g;->o:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->t:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->u:Ljava/lang/String;

    invoke-static {}, Lcom/smrtbeat/bd;->q()Z

    move-result v0

    sput-boolean v0, Lcom/smrtbeat/g;->v:Z

    invoke-static {p0}, Lcom/smrtbeat/bd;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->r:Ljava/lang/String;

    invoke-static {p0}, Lcom/smrtbeat/bd;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smrtbeat/g;->s:Ljava/lang/String;

    invoke-static {p0}, Lcom/smrtbeat/bd;->h(Landroid/content/Context;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/smrtbeat/g;->w:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/smrtbeat/g;->x:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/smrtbeat/g;->y:I

    invoke-static {p0}, Lcom/smrtbeat/bd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "com.smrtbeat.pref3"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 1

    const-string v0, "com.smrtbeat.pref1"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sput-boolean p1, Lcom/smrtbeat/g;->ad:Z

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.smrtbeat.pref1"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/smrtbeat/g;->ad:Z

    const-string v1, "com.smrtbeat.pref5"

    invoke-static {p0, v1, v0}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/smrtbeat/g;->ae:Z

    return-void
.end method

.method static a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bd;->o()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/bg;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "]"

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[V/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[D/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[I/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[W/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[E/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smrtbeat/ae;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static a(Lcom/smrtbeat/bg;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smrtbeat/bd;->o()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/smrtbeat/bg;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const-string v2, "\n"

    const-string v3, "]"

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[V/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[D/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[I/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[W/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/smrtbeat/ae;->a()Lcom/smrtbeat/ae;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[E/"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smrtbeat/ae;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/smrtbeat/bd;->p()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/smrtbeat/h;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    if-eq p0, p1, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    if-eq p0, p1, :cond_2

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    return-void
.end method

.method static declared-synchronized a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;J)V
    .locals 3

    const-class v0, Lcom/smrtbeat/bd;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/smrtbeat/g;->ab:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_7

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/smrtbeat/bd;->p()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/smrtbeat/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    if-eq v1, p1, :cond_3

    sget-object v1, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sput-object p1, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    :cond_3
    sput-wide p2, Lcom/smrtbeat/g;->V:J

    sget-object p1, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    const-string p2, "save screen capture (gl)"

    :goto_0
    invoke-static {p1, p2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    if-eq v1, p1, :cond_6

    sget-object v1, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    sput-object p1, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    :cond_6
    sput-wide p2, Lcom/smrtbeat/g;->V:J

    sget-object p1, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    const-string p2, "save screen capture"

    goto :goto_0

    :goto_1
    sput-object p0, Lcom/smrtbeat/g;->W:Lcom/smrtbeat/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/smrtbeat/bd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/smrtbeat/g;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/smrtbeat/g;->F:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/smrtbeat/g;->F:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/smrtbeat/bd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/smrtbeat/g;->ac:Z

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    return p2
.end method

.method static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, v8

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_0

    :try_start_4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :goto_1
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_11

    :catch_3
    nop

    goto/16 :goto_11

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_4
    nop

    goto :goto_8

    :catch_5
    nop

    goto/16 :goto_d

    :catchall_1
    move-exception p0

    move-object v9, v0

    goto :goto_3

    :catch_6
    move-object v9, v0

    goto :goto_8

    :catch_7
    move-object v9, v0

    goto :goto_d

    :catchall_2
    move-exception p0

    move-object v8, v0

    goto :goto_2

    :catch_8
    move-object v8, v0

    goto :goto_7

    :catch_9
    move-object v8, v0

    goto :goto_c

    :catchall_3
    move-exception p0

    move-object v1, v0

    move-object v8, v1

    :goto_2
    move-object v9, v8

    :goto_3
    if-eqz v8, :cond_2

    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_4

    :catch_a
    nop

    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_5

    :catch_b
    nop

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_6

    :catch_c
    nop

    :cond_4
    :goto_6
    if-eqz v9, :cond_5

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    :catch_d
    :cond_5
    throw p0

    :catch_e
    move-object v1, v0

    move-object v8, v1

    :goto_7
    move-object v9, v8

    :goto_8
    if-eqz v8, :cond_6

    :try_start_c
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_9

    :catch_f
    nop

    :cond_6
    :goto_9
    if-eqz v0, :cond_7

    :try_start_d
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_a

    :catch_10
    nop

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    goto :goto_b

    :catch_11
    nop

    :cond_8
    :goto_b
    if-eqz v9, :cond_c

    goto :goto_1

    :catch_12
    move-object v1, v0

    move-object v8, v1

    :goto_c
    move-object v9, v8

    :goto_d
    if-eqz v8, :cond_9

    :try_start_f
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_13

    goto :goto_e

    :catch_13
    nop

    :cond_9
    :goto_e
    if-eqz v0, :cond_a

    :try_start_10
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    goto :goto_f

    :catch_14
    nop

    :cond_a
    :goto_f
    if-eqz v1, :cond_b

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_10

    :catch_15
    nop

    :cond_b
    :goto_10
    if-eqz v9, :cond_c

    goto :goto_1

    :cond_c
    :goto_11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_d
    return p1
.end method

.method static b(Landroid/content/SharedPreferences;)J
    .locals 3

    const-string v0, "com.smrtbeat.pref3"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/smrtbeat/bd;->p()[I

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/g;->W:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-string v2, ".jpg"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/smrtbeat/g;->V:J

    invoke-static {p0, v0, v1, v2}, Lcom/smrtbeat/au;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/smrtbeat/g;->V:J

    invoke-static {p0, v0, v1, v2}, Lcom/smrtbeat/au;->b(Ljava/lang/String;JLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    :goto_0
    invoke-static {p0, v0}, Lcom/smrtbeat/au;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/ProxyClassApiLess23;->getMobileNetworkStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/ao;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smrtbeat/bd;->a(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/smrtbeat/i;->a()V

    invoke-static {}, Lcom/smrtbeat/i;->c()V

    invoke-static {}, Lcom/smrtbeat/i;->b()V

    return-void
.end method

.method static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "com.smrtbeat.pref6"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static b(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 1

    const-string v0, "com.smrtbeat.pref5"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sput-boolean p1, Lcom/smrtbeat/g;->ae:Z

    return-void
.end method

.method static c(Landroid/content/SharedPreferences;)J
    .locals 3

    const-string v0, "com.smrtbeat.pref6"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static c()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/smrtbeat/g;->J:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -d "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v4, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    const-string v0, "no permission (android.permission.READ_LOGS)"

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit16 v4, v4, -0x1f4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    const/4 v2, 0x0

    :goto_1
    if-ltz v5, :cond_4

    if-ge v5, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v2, v7

    const/high16 v7, 0x10000

    if-le v2, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :try_start_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "error to read logcat(%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/ProxyClassApiLess23;->getWifiStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/smrtbeat/ao;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smrtbeat/bd;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static c(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    const-string v0, "com.smrtbeat.pref4"

    const-wide/32 v1, 0x5265c00

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static d(Landroid/content/SharedPreferences;)J
    .locals 4

    const-wide/32 v0, 0x5265c00

    const-string v2, "com.smrtbeat.pref4"

    invoke-static {p0, v2, v0, v1}, Lcom/smrtbeat/bd;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    const-wide/32 v2, 0x2932e000

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/smrtbeat/g;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ro.board.platform"

    invoke-static {v0, v1}, Lcom/smrtbeat/bd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "ROTATION_270"

    goto :goto_0

    :cond_1
    const-string p0, "ROTATION_180"

    goto :goto_0

    :cond_2
    const-string p0, "ROTATION_90"

    goto :goto_0

    :cond_3
    const-string p0, "ROTATION_0"

    :goto_0
    return-object p0
.end method

.method static d(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/smrtbeat/ap;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/bf;

    invoke-direct {v1}, Lcom/smrtbeat/bf;-><init>()V

    invoke-virtual {v1, p0}, Lcom/smrtbeat/bf;->a(Landroid/content/SharedPreferences$Editor;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.smrtbeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method static e(Landroid/content/SharedPreferences;)V
    .locals 5

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/32 v2, 0x2932e000

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "com.smrtbeat.pref4"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static f()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, " / "

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    invoke-static {}, Lcom/smrtbeat/an;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/smrtbeat/aq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smrtbeat/aq;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "uuid"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/smrtbeat/bd;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "android:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/smrtbeat/g;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "idv2"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static g()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->ac:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smrtbeat/g;->ad:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/be;

    invoke-direct {v1, p0}, Lcom/smrtbeat/be;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static h()Z
    .locals 1

    sget-boolean v0, Lcom/smrtbeat/g;->ad:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "SmartBeat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/smrtbeat/g;->ae:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smrtbeat/g;->O:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static j()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/bd;->k()Z

    move-result v0

    return v0
.end method

.method static k()Z
    .locals 1

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/smrtbeat/g;->ae:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static l()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/smrtbeat/bd;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static m()Z
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static n()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/smrtbeat/ao;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method static synthetic o()[I
    .locals 3

    sget-object v0, Lcom/smrtbeat/bd;->i:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/bg;->values()[Lcom/smrtbeat/bg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    invoke-virtual {v1}, Lcom/smrtbeat/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    invoke-virtual {v1}, Lcom/smrtbeat/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    invoke-virtual {v1}, Lcom/smrtbeat/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/smrtbeat/bg;->e:Lcom/smrtbeat/bg;

    invoke-virtual {v1}, Lcom/smrtbeat/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    invoke-virtual {v1}, Lcom/smrtbeat/bg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/smrtbeat/bd;->i:[I

    return-object v0
.end method

.method static synthetic p()[I
    .locals 3

    sget-object v0, Lcom/smrtbeat/bd;->j:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/smrtbeat/h;->values()[Lcom/smrtbeat/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/smrtbeat/h;->b:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    invoke-virtual {v1}, Lcom/smrtbeat/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/smrtbeat/bd;->j:[I

    return-object v0
.end method

.method private static q()Z
    .locals 8

    const-string v0, "/sbin/"

    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/data/local/xbin/"

    const-string v4, "/data/local/bin/"

    const-string v5, "/system/sd/xbin/"

    const-string v6, "/system/bin/failsafe/"

    const-string v7, "/data/local/"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static r()V
    .locals 3

    sget-object v0, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    sget-object v1, Lcom/smrtbeat/g;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/smrtbeat/g;->X:Z

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
