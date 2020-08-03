.class Lcom/prime31/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/util/IabHelper;->startSetup(Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/util/IabHelper;

.field private final synthetic val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/prime31/util/IabHelper;Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iput-object p2, p0, Lcom/prime31/util/IabHelper$1;->val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 270
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iget-boolean p1, p1, Lcom/prime31/util/IabHelper;->_disposed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Billing service connected."

    .line 273
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, p1, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    .line 275
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iget-object p1, p1, Lcom/prime31/util/IabHelper;->_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "Checking for in-app billing 3 support."

    .line 278
    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iget-object p2, p2, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const-string v0, "inapp"

    const/4 v1, 0x3

    invoke-interface {p2, v1, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 284
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/prime31/util/IabResult;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, p2, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/prime31/util/IabResult;)V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iput-boolean v0, p1, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    return-void

    .line 292
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing version 3 supported for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 295
    iget-object p2, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iget-object p2, p2, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    const-string v2, "subs"

    invoke-interface {p2, v1, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    const-string p1, "Subscriptions AVAILABLE."

    .line 298
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iput-boolean p2, p1, Lcom/prime31/util/IabHelper;->_subscriptionsSupported:Z

    goto :goto_0

    .line 303
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    iput-boolean p2, p1, Lcom/prime31/util/IabHelper;->_setupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_4

    .line 317
    new-instance p2, Lcom/prime31/util/IabResult;

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/prime31/util/IabResult;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 310
    iget-object p2, p0, Lcom/prime31/util/IabHelper$1;->val$listener:Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p2, :cond_5

    .line 311
    new-instance v0, Lcom/prime31/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/prime31/util/IabResult;)V

    .line 312
    :cond_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Billing service disconnected."

    .line 262
    invoke-static {p1}, Lcom/prime31/IABConstants;->logDebug(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/prime31/util/IabHelper$1;->this$0:Lcom/prime31/util/IabHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prime31/util/IabHelper;->_service:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
