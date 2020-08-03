.class public Lcom/google/firebase/messaging/cpp/FcmInstanceIDListenerService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FcmInstanceIDListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->refreshToken(Landroid/content/Context;)V

    return-void
.end method
