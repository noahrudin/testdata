.class Lcom/prime31/GoogleIABPluginBase$1;
.super Ljava/lang/Object;
.source "GoogleIABPluginBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPluginBase;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/GoogleIABPluginBase;

.field private final synthetic val$methodName:Ljava/lang/String;

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPluginBase;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPluginBase$1;->this$0:Lcom/prime31/GoogleIABPluginBase;

    iput-object p2, p0, Lcom/prime31/GoogleIABPluginBase$1;->val$r:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/prime31/GoogleIABPluginBase$1;->val$methodName:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/prime31/GoogleIABPluginBase$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/prime31/GoogleIABPluginBase$1;->val$methodName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/prime31/GoogleIABPluginBase$1;->this$0:Lcom/prime31/GoogleIABPluginBase;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/prime31/GoogleIABPluginBase;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception running command on UI thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prime31"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
