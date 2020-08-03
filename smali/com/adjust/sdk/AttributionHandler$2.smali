.class Lcom/adjust/sdk/AttributionHandler$2;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;->getAttribution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/AttributionHandler;->access$000(Lcom/adjust/sdk/AttributionHandler;J)V

    return-void
.end method
