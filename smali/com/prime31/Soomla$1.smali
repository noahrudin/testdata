.class Lcom/prime31/Soomla$1;
.super Ljava/lang/Object;
.source "Soomla.java"

# interfaces
.implements Lcom/soomla/highway/lite/HighwayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prime31/Soomla;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prime31/Soomla;


# direct methods
.method constructor <init>(Lcom/prime31/Soomla;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/prime31/Soomla$1;->this$0:Lcom/prime31/Soomla;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighwayConnected()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    const-string v1, "Soomla Highway connected"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighwayDisconnected()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    const-string v1, "Soomla Highway disconnected"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHighwayInitialized()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    const-string v1, "Soomla Highway initialized async"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
