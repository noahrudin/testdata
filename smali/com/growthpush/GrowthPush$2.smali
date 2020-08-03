.class Lcom/growthpush/GrowthPush$2;
.super Ljava/lang/Object;
.source "GrowthPush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/GrowthPush;->requestRegistrationId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/GrowthPush;


# direct methods
.method constructor <init>(Lcom/growthpush/GrowthPush;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->registerFCM()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-static {v1}, Lcom/growthpush/GrowthPush;->access$000(Lcom/growthpush/GrowthPush;)Lcom/growthbeat/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FCM registration token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/growthbeat/Logger;->info(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/growthpush/GrowthPush$2;->this$0:Lcom/growthpush/GrowthPush;

    invoke-virtual {v1, v0}, Lcom/growthpush/GrowthPush;->registerClient(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
