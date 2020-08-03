.class Lcom/smrtbeat/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/graphics/Canvas;

.field c:J

.field d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/graphics/Canvas;JLandroid/graphics/Bitmap;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/av;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/smrtbeat/av;->b:Landroid/graphics/Canvas;

    iput-wide p3, p0, Lcom/smrtbeat/av;->c:J

    iput-object p5, p0, Lcom/smrtbeat/av;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/smrtbeat/av;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/smrtbeat/av;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-object v0, Lcom/smrtbeat/h;->b:Lcom/smrtbeat/h;

    iget-object v1, p0, Lcom/smrtbeat/av;->d:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/smrtbeat/av;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/h;Landroid/graphics/Bitmap;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smrtbeat/av;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/smrtbeat/av;->b:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/smrtbeat/av;->d:Landroid/graphics/Bitmap;

    return-void
.end method
