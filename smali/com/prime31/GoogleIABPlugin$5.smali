.class Lcom/prime31/GoogleIABPlugin$5;
.super Ljava/lang/Object;
.source "GoogleIABPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/GoogleIABPlugin;->consumeProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/GoogleIABPlugin;

.field private final synthetic val$p:Lcom/prime31/util/Purchase;


# direct methods
.method constructor <init>(Lcom/prime31/GoogleIABPlugin;Lcom/prime31/util/Purchase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/GoogleIABPlugin$5;->this$0:Lcom/prime31/GoogleIABPlugin;

    iput-object p2, p0, Lcom/prime31/GoogleIABPlugin$5;->val$p:Lcom/prime31/util/Purchase;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/prime31/GoogleIABPlugin$5;->this$0:Lcom/prime31/GoogleIABPlugin;

    iget-object v0, v0, Lcom/prime31/GoogleIABPlugin;->helper:Lcom/prime31/util/IabHelper;

    iget-object v1, p0, Lcom/prime31/GoogleIABPlugin$5;->val$p:Lcom/prime31/util/Purchase;

    iget-object v2, p0, Lcom/prime31/GoogleIABPlugin$5;->this$0:Lcom/prime31/GoogleIABPlugin;

    invoke-virtual {v0, v1, v2}, Lcom/prime31/util/IabHelper;->consumeAsync(Lcom/prime31/util/Purchase;Lcom/prime31/util/IabHelper$OnConsumeFinishedListener;)V

    return-void
.end method
