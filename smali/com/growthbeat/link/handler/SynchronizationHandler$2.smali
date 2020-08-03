.class Lcom/growthbeat/link/handler/SynchronizationHandler$2;
.super Ljava/lang/Object;
.source "SynchronizationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/handler/SynchronizationHandler;->synchronizeWithCookieTracking(Lcom/growthbeat/link/model/Synchronization;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/link/handler/SynchronizationHandler;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/handler/SynchronizationHandler;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$2;->this$0:Lcom/growthbeat/link/handler/SynchronizationHandler;

    iput-object p2, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$2;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$2;->val$urlString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 61
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
