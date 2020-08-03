.class Lcom/growthbeat/link/GrowthLink$3;
.super Ljava/lang/Object;
.source "GrowthLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/link/GrowthLink;->synchronize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/link/GrowthLink;


# direct methods
.method constructor <init>(Lcom/growthbeat/link/GrowthLink;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v0}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "Synchronizing..."

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v2}, Lcom/growthbeat/link/GrowthLink;->access$500(Lcom/growthbeat/link/GrowthLink;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/growthbeat/utils/AppUtils;->getaAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$600(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v4

    invoke-static {v4}, Lcom/growthbeat/link/GrowthLink;->access$000(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v5}, Lcom/growthbeat/link/GrowthLink;->access$400(Lcom/growthbeat/link/GrowthLink;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v3, v2, v4, v5}, Lcom/growthbeat/link/model/Synchronization;->synchronize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/growthbeat/link/model/Synchronization;

    move-result-object v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v2}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v2

    const-string v3, "Failed to Synchronize."

    invoke-virtual {v2, v3}, Lcom/growthbeat/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v3

    const-string v4, "Synchronize success. (installReferrer: %s, cookieTracking: %s, deviceFingerprint: %s, clickId: %s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 185
    invoke-virtual {v2}, Lcom/growthbeat/link/model/Synchronization;->getInstallReferrer()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Synchronization;->getCookieTracking()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    .line 186
    invoke-virtual {v2}, Lcom/growthbeat/link/model/Synchronization;->getDeviceFingerprint()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Lcom/growthbeat/link/model/Synchronization;->getClickId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 183
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$700(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/link/callback/SynchronizationCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$700(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/link/callback/SynchronizationCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/growthbeat/link/callback/SynchronizationCallback;->onComplete(Lcom/growthbeat/link/model/Synchronization;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 193
    invoke-static {v2}, Lcom/growthbeat/link/model/Synchronization;->save(Lcom/growthbeat/link/model/Synchronization;)V
    :try_end_0
    .catch Lcom/growthbeat/GrowthbeatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 197
    iget-object v3, p0, Lcom/growthbeat/link/GrowthLink$3;->this$0:Lcom/growthbeat/link/GrowthLink;

    invoke-static {v3}, Lcom/growthbeat/link/GrowthLink;->access$100(Lcom/growthbeat/link/GrowthLink;)Lcom/growthbeat/Logger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/growthbeat/GrowthbeatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Synchronization is not found. %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
