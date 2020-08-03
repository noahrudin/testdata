.class final enum Lcom/smrtbeat/as;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/smrtbeat/as;

.field public static final enum b:Lcom/smrtbeat/as;

.field public static final enum c:Lcom/smrtbeat/as;

.field private static final synthetic d:[Lcom/smrtbeat/as;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/smrtbeat/as;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/smrtbeat/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    new-instance v0, Lcom/smrtbeat/as;

    const/4 v2, 0x1

    const-string v3, "FAILED_BY_DATA"

    invoke-direct {v0, v3, v2}, Lcom/smrtbeat/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/as;->b:Lcom/smrtbeat/as;

    new-instance v0, Lcom/smrtbeat/as;

    const/4 v3, 0x2

    const-string v4, "FAILED_BY_OTHER"

    invoke-direct {v0, v4, v3}, Lcom/smrtbeat/as;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/as;->c:Lcom/smrtbeat/as;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smrtbeat/as;

    sget-object v4, Lcom/smrtbeat/as;->a:Lcom/smrtbeat/as;

    aput-object v4, v0, v1

    sget-object v1, Lcom/smrtbeat/as;->b:Lcom/smrtbeat/as;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smrtbeat/as;->c:Lcom/smrtbeat/as;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smrtbeat/as;->d:[Lcom/smrtbeat/as;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smrtbeat/as;
    .locals 1

    const-class v0, Lcom/smrtbeat/as;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smrtbeat/as;

    return-object p0
.end method

.method public static values()[Lcom/smrtbeat/as;
    .locals 4

    sget-object v0, Lcom/smrtbeat/as;->d:[Lcom/smrtbeat/as;

    array-length v1, v0

    new-array v2, v1, [Lcom/smrtbeat/as;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
