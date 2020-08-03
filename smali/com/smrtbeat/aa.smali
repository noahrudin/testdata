.class Lcom/smrtbeat/aa;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "----------V2ymHFg03ehbqgZCaKO6jy"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smrtbeat/aa;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/smrtbeat/aa;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/smrtbeat/ab;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/smrtbeat/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/smrtbeat/ab;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\"\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Content-Type: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "application/octet-stream"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\r\n\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/File;)[B
    .locals 7

    const-string v0, "HttpMultipartRequest:%s"

    const/16 v1, 0xa

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz p1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_4

    :cond_0
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v5, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_1
    :try_start_5
    sget-object v1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    if-eqz v5, :cond_1

    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_5
    move-exception p1

    :goto_3
    :try_start_8
    sget-object v1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    if-eqz v5, :cond_1

    goto :goto_2

    :catch_7
    :cond_1
    :goto_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    if-eqz v5, :cond_2

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_2
    throw p1
.end method


# virtual methods
.method public a(IZ)Lcom/smrtbeat/ar;
    .locals 5

    new-instance v0, Lcom/smrtbeat/ar;

    invoke-direct {v0}, Lcom/smrtbeat/ar;-><init>()V

    sget-object v1, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object p1, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    const-string p2, "Data cannot send due to invalide api key."

    invoke-static {p1, p2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/smrtbeat/aa;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p1, "X-SmartBeat-Api-Key"

    sget-object v3, Lcom/smrtbeat/g;->m:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v3, "multipart/form-data; boundary=----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v2, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "Content-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v2, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz p2, :cond_2

    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p1

    :cond_2
    iget-object p1, p0, Lcom/smrtbeat/aa;->c:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/smrtbeat/aa;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smrtbeat/ab;

    invoke-direct {p0, p2}, Lcom/smrtbeat/aa;->a(Lcom/smrtbeat/ab;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lcom/smrtbeat/ab;->c()Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/smrtbeat/aa;->a(Ljava/io/File;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "\r\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string p1, "------------V2ymHFg03ehbqgZCaKO6jy--\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, v0, Lcom/smrtbeat/ar;->a:I

    iget p1, v0, Lcom/smrtbeat/ar;->a:I

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_5

    invoke-static {v2}, Lcom/smrtbeat/bd;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/smrtbeat/ar;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v1, :cond_8

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p2, v1

    :goto_2
    :try_start_3
    sget-object v2, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to send data"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz p2, :cond_8

    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_8
    :goto_3
    return-object v0

    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v1, p2

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v1, :cond_a

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_a
    throw p1
.end method
