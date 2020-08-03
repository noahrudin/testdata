.class Lcom/prime31/GoogleIABPlugin$2;
.super Ljava/lang/Object;
.source "GoogleIABPlugin.java"

# interfaces
.implements Lcom/prime31/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPlugin;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/GoogleIABPlugin;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin$2;->this$0:Lcom/prime31/GoogleIABPlugin;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/prime31/util/IabResult;)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin$2;->this$0:Lcom/prime31/GoogleIABPlugin;

    const-string v0, "billingSupported"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prime31/Soomla;->onBillingSupported()V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "billing not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prime31"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin$2;->this$0:Lcom/prime31/GoogleIABPlugin;

    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "billingNotSupported"

    invoke-virtual {v0, v1, p1}, Lcom/prime31/GoogleIABPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/prime31/GoogleIABPlugin$2;->this$0:Lcom/prime31/GoogleIABPlugin;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    .line 147
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prime31/Soomla;->onBillingNotSupported()V

    :goto_0
    return-void
.end method
