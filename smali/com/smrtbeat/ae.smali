.class Lcom/smrtbeat/ae;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS Z"

.field private static b:Lcom/smrtbeat/ae;


# instance fields
.field private c:Ljava/util/List;

.field private d:I

.field private e:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smrtbeat/ae;

    invoke-direct {v0}, Lcom/smrtbeat/ae;-><init>()V

    sput-object v0, Lcom/smrtbeat/ae;->b:Lcom/smrtbeat/ae;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/smrtbeat/ae;->d:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smrtbeat/ae;->e:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/smrtbeat/ae;->e:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static a()Lcom/smrtbeat/ae;
    .locals 1

    sget-object v0, Lcom/smrtbeat/ae;->b:Lcom/smrtbeat/ae;

    return-object v0
.end method

.method private a(II)V
    .locals 6

    iget-object v0, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    iget v3, p0, Lcom/smrtbeat/ae;->d:I

    if-gt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    if-gtz v0, :cond_2

    sget-object p1, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    const-string p2, "Count or size of log data is strange."

    invoke-static {p1, p2}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/smrtbeat/ae;->d:I

    iget-object v4, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smrtbeat/af;

    iget v2, v2, Lcom/smrtbeat/af;->b:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/smrtbeat/ae;->d:I

    add-int/lit8 v0, v0, -0x1

    move v2, v5

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/smrtbeat/af;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smrtbeat/ae;->e:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/smrtbeat/af;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/smrtbeat/ae;->d:I

    iget v0, v0, Lcom/smrtbeat/af;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/smrtbeat/ae;->d:I

    const/16 p1, 0x1f4

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lcom/smrtbeat/ae;->a(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/smrtbeat/ae;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smrtbeat/af;

    iget-object v2, v2, Lcom/smrtbeat/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
