.class Lcom/smrtbeat/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/io/File;

.field final synthetic b:Lcom/smrtbeat/aw;


# direct methods
.method constructor <init>(Lcom/smrtbeat/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/ax;->b:Lcom/smrtbeat/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/io/File;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/ax;->a:Ljava/io/File;

    return-object p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/smrtbeat/ax;->a:Ljava/io/File;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/ar;

    iget-object v0, p0, Lcom/smrtbeat/ax;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
