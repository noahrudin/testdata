.class Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;
.super Ljava/lang/Object;
.source "PackageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/PackageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityStateCopy"
.end annotation


# instance fields
.field eventCount:I

.field lastInterval:J

.field pushToken:Ljava/lang/String;

.field sessionCount:I

.field sessionLength:J

.field subsessionCount:I

.field final synthetic this$0:Lcom/adjust/sdk/PackageBuilder;

.field timeSpent:J

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageBuilder;Lcom/adjust/sdk/ActivityState;)V
    .locals 3

    .line 58
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->this$0:Lcom/adjust/sdk/PackageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->lastInterval:J

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->eventCount:I

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->uuid:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionCount:I

    .line 53
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->subsessionCount:I

    .line 54
    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionLength:J

    .line 55
    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->timeSpent:J

    .line 56
    iput-object v2, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->pushToken:Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->lastInterval:J

    .line 63
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->eventCount:I

    .line 64
    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->uuid:Ljava/lang/String;

    .line 65
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionCount:I

    .line 66
    iget p1, p2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->subsessionCount:I

    .line 67
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionLength:J

    .line 68
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->timeSpent:J

    .line 69
    iget-object p1, p2, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->pushToken:Ljava/lang/String;

    return-void
.end method
