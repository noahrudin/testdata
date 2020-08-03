.class Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;
.super Ljava/lang/Object;
.source "SynchronizationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/handler/SynchronizationHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthbeat/link/handler/SynchronizationHandler$1;

.field final synthetic val$uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/handler/SynchronizationHandler$1;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;->this$1:Lcom/growthbeat/link/handler/SynchronizationHandler$1;

    iput-object p2, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;->val$uriString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    iget-object v1, p0, Lcom/growthbeat/link/handler/SynchronizationHandler$1$1;->val$uriString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/growthbeat/link/GrowthLink;->handleOpenUrl(Landroid/net/Uri;)V

    return-void
.end method
