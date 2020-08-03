.class public Lcom/prime31/GoogleIABProxyActivity;
.super Landroid/app/Activity;
.source "GoogleIABProxyActivity.java"


# static fields
.field private static final RC_REQUEST:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "Prime31-Proxy"


# instance fields
.field private _created:Ljava/lang/Boolean;

.field private _didCompletePurcaseFlow:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_didCompletePurcaseFlow:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/GoogleIABProxyActivity;->_didCompletePurcaseFlow:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string v0, "onActivityResult"

    invoke-static {v1, v0, v2}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const-string v1, "Prime31-Proxy"

    if-nez v0, :cond_0

    const-string v0, "FATAL ERROR: Plugin singleton helper is null in onActivityResult. Attempting to abort operation to avoid a crash."

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prime31/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "onActivityResult handled by IABUtil. All done here."

    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "Prime31-Proxy"

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object p1, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Prime31"

    const-string v0, "activity created twice. stopping one instance"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/GoogleIABProxyActivity;->_created:Ljava/lang/Boolean;

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "sku"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "itemType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "developerPayload"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "proxy received action. sku: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v1

    iget-object v4, v1, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const/16 v8, 0x2711

    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v9

    move-object v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/prime31/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/prime31/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unhandled exception while attempting to purchase item: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "going to end the async operation with null data to clear out the queue"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/GoogleIABProxyActivity;->_didCompletePurcaseFlow:Ljava/lang/Boolean;

    .line 52
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object p1

    iget-object p1, p1, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    if-nez p1, :cond_1

    const-string p1, "FATAL ERROR: Plugin singleton helper is null. Aborting operation."

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object p1

    iget-object p1, p1, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/prime31/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABProxyActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "Prime31-Proxy"

    const-string v1, "GoogleIABProxyActivity onDestroy"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 97
    iget-object v0, p0, Lcom/prime31/GoogleIABProxyActivity;->_didCompletePurcaseFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Prime31-Proxy"

    if-nez v0, :cond_0

    const-string v0, "in onStop but we didnt complete the purchase flow. Canceling it now."

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/prime31/GoogleIABPlugin;->instance()Lcom/prime31/GoogleIABPlugin;

    move-result-object v0

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    const/16 v2, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/prime31/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    const-string v0, "GoogleIABProxyActivity onStop"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
