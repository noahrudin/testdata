.class public final enum Lcom/growthpush/model/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/model/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/model/Environment;

.field public static final enum development:Lcom/growthpush/model/Environment;

.field public static final enum production:Lcom/growthpush/model/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/growthpush/model/Environment;

    const/4 v1, 0x0

    const-string v2, "production"

    invoke-direct {v0, v2, v1}, Lcom/growthpush/model/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Environment;->production:Lcom/growthpush/model/Environment;

    .line 8
    new-instance v0, Lcom/growthpush/model/Environment;

    const/4 v2, 0x1

    const-string v3, "development"

    invoke-direct {v0, v3, v2}, Lcom/growthpush/model/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Environment;->development:Lcom/growthpush/model/Environment;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/growthpush/model/Environment;

    sget-object v3, Lcom/growthpush/model/Environment;->production:Lcom/growthpush/model/Environment;

    aput-object v3, v0, v1

    sget-object v1, Lcom/growthpush/model/Environment;->development:Lcom/growthpush/model/Environment;

    aput-object v1, v0, v2

    sput-object v0, Lcom/growthpush/model/Environment;->$VALUES:[Lcom/growthpush/model/Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/model/Environment;
    .locals 1

    .line 6
    const-class v0, Lcom/growthpush/model/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/model/Environment;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/model/Environment;
    .locals 1

    .line 6
    sget-object v0, Lcom/growthpush/model/Environment;->$VALUES:[Lcom/growthpush/model/Environment;

    invoke-virtual {v0}, [Lcom/growthpush/model/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/model/Environment;

    return-object v0
.end method
