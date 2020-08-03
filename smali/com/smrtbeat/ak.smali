.class Lcom/smrtbeat/ak;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    new-instance v0, Lcom/smrtbeat/al;

    invoke-direct {v0}, Lcom/smrtbeat/al;-><init>()V

    return-object v0
.end method

.method static a(Landroid/app/Application;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smrtbeat/ak;->a()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    const-string v0, "Failed to register activity lifecycle callback"

    invoke-static {p0, v0}, Lcom/smrtbeat/bd;->a(Lcom/smrtbeat/bg;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
