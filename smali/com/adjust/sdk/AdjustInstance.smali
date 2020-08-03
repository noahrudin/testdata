.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "AdjustInstance.java"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private basePath:Ljava/lang/String;

.field private preLaunchActionsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pushToken:Ljava/lang/String;

.field private startEnabled:Ljava/lang/Boolean;

.field private startOffline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    return-void
.end method

.method private checkActivityHandler()Z
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkActivityHandler(Ljava/lang/String;)Z
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 434
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Adjust not initialized, but %s saved for launch"

    invoke-interface {v2, p1, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Adjust not initialized correctly"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 419
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 421
    :cond_0
    invoke-direct {p0, p3}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isInstanceEnabled()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 471
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/adjust/sdk/AdjustInstance$8;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;)V

    .line 478
    invoke-static {v0}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 7

    .line 454
    new-instance v6, Lcom/adjust/sdk/AdjustInstance$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/AdjustInstance$7;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Ljava/lang/String;J)V

    .line 461
    invoke-static {v6}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSendingReferrersAsNotSent(Landroid/content/Context;)V
    .locals 1

    .line 482
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$9;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/AdjustInstance$9;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;)V

    .line 490
    invoke-static {v0}, Lcom/adjust/sdk/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "adding session callback parameter"

    .line 203
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addSessionCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$1;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "adding session partner parameter"

    .line 227
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addSessionPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$2;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v2, p1, v0, v1}, Lcom/adjust/sdk/IActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    return-void
.end method

.method public getAdid()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribution()Lcom/adjust/sdk/AdjustAttribution;
    .locals 1

    .line 393
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->isInstanceEnabled()Z

    move-result v0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdjustConfig missing"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdjustConfig not initialized correctly"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-eqz v1, :cond_2

    .line 59
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adjust already initialized"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->preLaunchActionsArray:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->startEnabled:Ljava/lang/Boolean;

    .line 66
    iget-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    iput-boolean v0, p1, Lcom/adjust/sdk/AdjustConfig;->startOffline:Z

    .line 67
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->basePath:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/adjust/sdk/AdjustFactory;->getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 71
    iget-object p1, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustInstance;->setSendingReferrersAsNotSent(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onResume()V

    return-void
.end method

.method public removeSessionCallbackParameter(Ljava/lang/String;)V
    .locals 2

    const-string v0, "removing session callback parameter"

    .line 250
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeSessionCallbackParameter(Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$3;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$3;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSessionPartnerParameter(Ljava/lang/String;)V
    .locals 2

    const-string v0, "removing session partner parameter"

    .line 273
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeSessionPartnerParameter(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AdjustInstance$4;-><init>(Lcom/adjust/sdk/AdjustInstance;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSessionCallbackParameters()V
    .locals 2

    const-string v0, "resetting session callback parameters"

    .line 294
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->resetSessionCallbackParameters()V

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$5;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$5;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSessionPartnerParameters()V
    .locals 2

    const-string v0, "resetting session partner parameters"

    .line 315
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->resetSessionPartnerParameters()V

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$6;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/AdjustInstance$6;-><init>(Lcom/adjust/sdk/AdjustInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendFirstPackages()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->sendFirstPackages()V

    return-void
.end method

.method public sendReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adjust/sdk/AdjustInstance;->saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V

    const-string p1, "referrer"

    .line 165
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->sendReftagReferrer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    const-string v0, "enabled mode"

    const-string v1, "disabled mode"

    .line 117
    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOfflineMode(Z)V
    .locals 2

    const-string v0, "offline mode"

    const-string v1, "online mode"

    .line 178
    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->setOfflineMode(Z)V

    :goto_0
    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 2

    const-string v0, "push token"

    .line 351
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/adjust/sdk/IActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setPushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->savePushToken(Ljava/lang/String;Landroid/content/Context;)V

    const-string p2, "push token"

    .line 367
    invoke-direct {p0, p2}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p2}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 369
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/IActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setTestOptions(Lcom/adjust/sdk/AdjustTestOptions;)V
    .locals 2

    .line 503
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->basePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->basePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->basePath:Ljava/lang/String;

    .line 506
    :cond_0
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->baseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setBaseUrl(Ljava/lang/String;)V

    .line 509
    :cond_1
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->useTestConnectionOptions:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->useTestConnectionOptions:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->useTestConnectionOptions()V

    .line 512
    :cond_2
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerIntervalInMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setTimerInterval(J)V

    .line 515
    :cond_3
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerStartInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerIntervalInMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setTimerStart(J)V

    .line 518
    :cond_4
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->sessionIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->sessionIntervalInMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setSessionInterval(J)V

    .line 521
    :cond_5
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->subsessionIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 522
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->subsessionIntervalInMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setSubsessionInterval(J)V

    .line 524
    :cond_6
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->tryInstallReferrer:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 525
    iget-object p1, p1, Lcom/adjust/sdk/AdjustTestOptions;->tryInstallReferrer:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/adjust/sdk/AdjustFactory;->setTryInstallReferrer(Z)V

    :cond_7
    return-void
.end method

.method public teardown()V
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->teardown()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    return-void
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method
