.class public Lcom/growthpush/TokenRefreshService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "TokenRefreshService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .line 9
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v1

    invoke-virtual {v1}, Lcom/growthpush/GrowthPush;->getLogger()Lcom/growthbeat/Logger;

    move-result-object v1

    const-string v2, "FCM registration token was refresh"

    invoke-virtual {v1, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/growthpush/GrowthPush;->registerClient(Ljava/lang/String;)V

    return-void
.end method
