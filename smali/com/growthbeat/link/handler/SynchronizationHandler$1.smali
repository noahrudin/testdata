.class Lcom/growthbeat/link/handler/SynchronizationHandler$1;
.super Ljava/lang/Object;
.source "SynchronizationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/handler/SynchronizationHandler;->synchronizeWithInstallReferrer(Lcom/growthbeat/link/model/Synchronization;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/link/handler/SynchronizationHandler;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/handler/SynchronizationHandler;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$1;->this$0:Lcom/growthbeat/link/handler/SynchronizationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 23
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-static {}, Lcom/growthbeat/link/handler/SynchronizationHandler;->access$000()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/growthbeat/link/GrowthLink;->waitInstallReferrer(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "growthlink.clickId"

    const-string v3, "clickId"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "growthbeat.uuid"

    const-string v3, "uuid"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;-><init>(Lcom/growthbeat/link/handler/SynchronizationHandler$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
