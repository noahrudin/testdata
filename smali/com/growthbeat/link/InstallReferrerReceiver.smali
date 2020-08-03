.class public Lcom/growthbeat/link/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v0

    const-string v1, "InstallReferrerReceiver onReceive called"

    invoke-virtual {v0, v1}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/growthbeat/link/GrowthLink;->getInstance()Lcom/growthbeat/link/GrowthLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthbeat/link/GrowthLink;->getInstallReferrerReceiveHandler()Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/growthbeat/link/handler/InstallReferrerReceiveHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
