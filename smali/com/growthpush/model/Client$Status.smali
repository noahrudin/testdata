.class public final enum Lcom/growthpush/model/Client$Status;
.super Ljava/lang/Enum;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthpush/model/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/model/Client$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/model/Client$Status;

.field public static final enum active:Lcom/growthpush/model/Client$Status;

.field public static final enum inactive:Lcom/growthpush/model/Client$Status;

.field public static final enum invalid:Lcom/growthpush/model/Client$Status;

.field public static final enum unknown:Lcom/growthpush/model/Client$Status;

.field public static final enum validating:Lcom/growthpush/model/Client$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 204
    new-instance v0, Lcom/growthpush/model/Client$Status;

    const/4 v1, 0x0

    const-string v2, "unknown"

    invoke-direct {v0, v2, v1}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->unknown:Lcom/growthpush/model/Client$Status;

    new-instance v0, Lcom/growthpush/model/Client$Status;

    const/4 v2, 0x1

    const-string v3, "validating"

    invoke-direct {v0, v3, v2}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->validating:Lcom/growthpush/model/Client$Status;

    new-instance v0, Lcom/growthpush/model/Client$Status;

    const/4 v3, 0x2

    const-string v4, "active"

    invoke-direct {v0, v4, v3}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->active:Lcom/growthpush/model/Client$Status;

    new-instance v0, Lcom/growthpush/model/Client$Status;

    const/4 v4, 0x3

    const-string v5, "inactive"

    invoke-direct {v0, v5, v4}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->inactive:Lcom/growthpush/model/Client$Status;

    new-instance v0, Lcom/growthpush/model/Client$Status;

    const/4 v5, 0x4

    const-string v6, "invalid"

    invoke-direct {v0, v6, v5}, Lcom/growthpush/model/Client$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Client$Status;->invalid:Lcom/growthpush/model/Client$Status;

    const/4 v0, 0x5

    .line 203
    new-array v0, v0, [Lcom/growthpush/model/Client$Status;

    sget-object v6, Lcom/growthpush/model/Client$Status;->unknown:Lcom/growthpush/model/Client$Status;

    aput-object v6, v0, v1

    sget-object v1, Lcom/growthpush/model/Client$Status;->validating:Lcom/growthpush/model/Client$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/growthpush/model/Client$Status;->active:Lcom/growthpush/model/Client$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/growthpush/model/Client$Status;->inactive:Lcom/growthpush/model/Client$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/growthpush/model/Client$Status;->invalid:Lcom/growthpush/model/Client$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/growthpush/model/Client$Status;->$VALUES:[Lcom/growthpush/model/Client$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/model/Client$Status;
    .locals 1

    .line 203
    const-class v0, Lcom/growthpush/model/Client$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/model/Client$Status;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/model/Client$Status;
    .locals 1

    .line 203
    sget-object v0, Lcom/growthpush/model/Client$Status;->$VALUES:[Lcom/growthpush/model/Client$Status;

    invoke-virtual {v0}, [Lcom/growthpush/model/Client$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/model/Client$Status;

    return-object v0
.end method
