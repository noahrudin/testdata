.class Lcom/smrtbeat/SmartBeatJni;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SmartBeatNdk"

.field private static final b:Ljava/lang/String; = "SmartBeatOpenGLNdk"

.field private static final c:Ljava/lang/String; = "libSmartBeatNdk.so.bin"

.field private static final d:Ljava/lang/String; = "libSmartBeatOpenGLNdk.so.bin"

.field private static final e:Ljava/lang/String; = "com.smrtbeat"

.field private static final f:I = 0x2000


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeatJni;->getVersion()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/smrtbeat/bd;->g()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/smrtbeat/ay;

    invoke-direct {v1}, Lcom/smrtbeat/ay;-><init>()V

    invoke-virtual {v1, v0}, Lcom/smrtbeat/ay;->a(Ljava/io/File;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/smrtbeat/bb;

    invoke-direct {p0, p1}, Lcom/smrtbeat/bb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Lcom/smrtbeat/az;

    invoke-direct {v0}, Lcom/smrtbeat/az;-><init>()V

    const-string v1, "SmartBeatNdk"

    const-string v2, "libSmartBeatNdk.so.bin"

    const/16 v3, 0x8

    invoke-static {p0, v1, v2, v3, v0}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/dump_tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smrtbeat/SmartBeatJni;->initNdk(Ljava/lang/String;)V

    sget-object v0, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    const-string v1, "NDK is initialized"

    invoke-static {v0, v1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    invoke-static {p1, p2}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    const-string v1, "Install NDK Library from assets"

    invoke-static {v0, v1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v1}, Lcom/smrtbeat/bd;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    sget-object p0, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/smrtbeat/bd;->f()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Failed to install NDK Library SUPPORTED_ABIS:%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "com.smrtbeat/"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z
    .locals 1

    invoke-static {p1, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.smrtbeat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {p1, p2, p3, p4}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private static a(Ljava/io/File;ILjava/util/concurrent/Callable;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p0, -0x1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/4 p2, 0x1

    if-eq p0, p1, :cond_1

    :try_start_2
    sget-object v1, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    const-string v2, "Library might be old. The file shall be updated. Installed:%d, Current:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, p2

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :cond_1
    sget-object p0, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success to load NDK Lib (file) ver = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return p2

    :catch_1
    sget-object p0, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    const-string p1, "NDK Libarry(file) Link Error"

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6

    const-string v0, "Failed to install NDK Library err:%s"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x2000

    :try_start_1
    new-array p1, p1, [B

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v5, :cond_2

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v1, 0x1

    goto :goto_6

    :cond_2
    :try_start_4
    invoke-virtual {v4, p1, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v2, v4

    goto :goto_1

    :catch_3
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    :goto_1
    :try_start_5
    sget-object v4, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_6

    :catch_6
    move-exception p1

    :goto_4
    :try_start_8
    sget-object v4, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p0, :cond_4

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    goto :goto_3

    :catch_8
    :cond_5
    :goto_6
    return v1

    :goto_7
    if-eqz p0, :cond_6

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    nop

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :cond_7
    throw p1
.end method

.method private static a(Ljava/lang/String;ILjava/util/concurrent/Callable;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    if-eq v1, p1, :cond_0

    :try_start_2
    sget-object p0, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Loaded ndk from libs folder but incompatible version. version must be "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Success to load NDK Lib ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    :catch_1
    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/smrtbeat/bd;->a(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p2, p3}, Lcom/smrtbeat/SmartBeatJni;->a(Ljava/io/File;ILjava/util/concurrent/Callable;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b()I
    .locals 1

    invoke-static {}, Lcom/smrtbeat/SmartBeatJni;->getGlLibVersion()I

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/smrtbeat/bd;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-instance v1, Lcom/smrtbeat/ba;

    invoke-direct {v1}, Lcom/smrtbeat/ba;-><init>()V

    const-string v2, "SmartBeatOpenGLNdk"

    const-string v3, "libSmartBeatOpenGLNdk.so.bin"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/smrtbeat/SmartBeatJni;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Callable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static native copyTextureBuffer(Ljava/nio/ByteBuffer;)Z
.end method

.method private static native getGlLibVersion()I
.end method

.method static native getTextureLongerSideLength()I
.end method

.method private static native getVersion()I
.end method

.method private static native initNdk(Ljava/lang/String;)V
.end method

.method static native newImageTargetTexture(IIII)I
.end method
