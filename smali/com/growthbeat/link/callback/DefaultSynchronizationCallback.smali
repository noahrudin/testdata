.class public Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;
.super Ljava/lang/Object;
.source "DefaultSynchronizationCallback.java"

# interfaces
.implements Lcom/growthbeat/link/callback/SynchronizationCallback;


# instance fields
.field private synchronizationHandler:Lcom/growthbeat/link/handler/SynchronizationHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/growthbeat/link/handler/SynchronizationHandler;

    invoke-direct {v0}, Lcom/growthbeat/link/handler/SynchronizationHandler;-><init>()V

    iput-object v0, p0, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;->synchronizationHandler:Lcom/growthbeat/link/handler/SynchronizationHandler;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/growthbeat/link/model/Synchronization;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/growthbeat/link/model/Synchronization;->getInstallReferrer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;->synchronizationHandler:Lcom/growthbeat/link/handler/SynchronizationHandler;

    invoke-virtual {v0, p1}, Lcom/growthbeat/link/handler/SynchronizationHandler;->synchronizeWithInstallReferrer(Lcom/growthbeat/link/model/Synchronization;)V

    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/growthbeat/link/model/Synchronization;->getCookieTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;->synchronizationHandler:Lcom/growthbeat/link/handler/SynchronizationHandler;

    invoke-virtual {v0, p1}, Lcom/growthbeat/link/handler/SynchronizationHandler;->synchronizeWithCookieTracking(Lcom/growthbeat/link/model/Synchronization;)V

    return-void

    .line 30
    :cond_2
    invoke-virtual {p1}, Lcom/growthbeat/link/model/Synchronization;->getDeviceFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/growthbeat/link/callback/DefaultSynchronizationCallback;->synchronizationHandler:Lcom/growthbeat/link/handler/SynchronizationHandler;

    invoke-virtual {v0, p1}, Lcom/growthbeat/link/handler/SynchronizationHandler;->synchronizeWithDeviceFingerprint(Lcom/growthbeat/link/model/Synchronization;)V

    :cond_3
    return-void
.end method
