.class Lcom/smrtbeat/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lorg/json/JSONObject;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/z;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/smrtbeat/z;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/smrtbeat/z;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/smrtbeat/z;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/smrtbeat/i;->a(Ljava/io/File;J)Lcom/smrtbeat/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/smrtbeat/z;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smrtbeat/ar;->a(Ljava/lang/String;)Lcom/smrtbeat/as;

    move-result-object v0

    sget-object v1, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smrtbeat/z;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
