.class public final enum Lcom/growthbeat/model/Intent$Type;
.super Ljava/lang/Enum;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/model/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/model/Intent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/model/Intent$Type;

.field public static final enum custom:Lcom/growthbeat/model/Intent$Type;

.field public static final enum noop:Lcom/growthbeat/model/Intent$Type;

.field public static final enum url:Lcom/growthbeat/model/Intent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 128
    new-instance v0, Lcom/growthbeat/model/Intent$Type;

    const/4 v1, 0x0

    const-string v2, "custom"

    invoke-direct {v0, v2, v1}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    .line 129
    new-instance v0, Lcom/growthbeat/model/Intent$Type;

    const/4 v2, 0x1

    const-string v3, "noop"

    invoke-direct {v0, v3, v2}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    .line 130
    new-instance v0, Lcom/growthbeat/model/Intent$Type;

    const/4 v3, 0x2

    const-string v4, "url"

    invoke-direct {v0, v4, v3}, Lcom/growthbeat/model/Intent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    const/4 v0, 0x3

    .line 127
    new-array v0, v0, [Lcom/growthbeat/model/Intent$Type;

    sget-object v4, Lcom/growthbeat/model/Intent$Type;->custom:Lcom/growthbeat/model/Intent$Type;

    aput-object v4, v0, v1

    sget-object v1, Lcom/growthbeat/model/Intent$Type;->noop:Lcom/growthbeat/model/Intent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/growthbeat/model/Intent$Type;->url:Lcom/growthbeat/model/Intent$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/growthbeat/model/Intent$Type;->$VALUES:[Lcom/growthbeat/model/Intent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/model/Intent$Type;
    .locals 1

    .line 127
    const-class v0, Lcom/growthbeat/model/Intent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/model/Intent$Type;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/model/Intent$Type;
    .locals 1

    .line 127
    sget-object v0, Lcom/growthbeat/model/Intent$Type;->$VALUES:[Lcom/growthbeat/model/Intent$Type;

    invoke-virtual {v0}, [Lcom/growthbeat/model/Intent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/model/Intent$Type;

    return-object v0
.end method
