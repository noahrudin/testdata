.class Lcom/smrtbeat/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/smrtbeat/at;


# instance fields
.field a:Lcom/smrtbeat/ar;

.field b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/ar;

    iput-object v0, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/smrtbeat/ar;
    .locals 1

    iget-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/ar;

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)Lcom/smrtbeat/at;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/smrtbeat/n;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smrtbeat/i;->a(Lorg/json/JSONObject;Z)Lcom/smrtbeat/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/smrtbeat/n;->a:Lcom/smrtbeat/ar;

    return-void
.end method
