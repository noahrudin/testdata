.class final enum Lcom/smrtbeat/bg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/smrtbeat/bg;

.field public static final enum b:Lcom/smrtbeat/bg;

.field public static final enum c:Lcom/smrtbeat/bg;

.field public static final enum d:Lcom/smrtbeat/bg;

.field public static final enum e:Lcom/smrtbeat/bg;

.field private static final synthetic f:[Lcom/smrtbeat/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/smrtbeat/bg;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lcom/smrtbeat/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    new-instance v0, Lcom/smrtbeat/bg;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lcom/smrtbeat/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    new-instance v0, Lcom/smrtbeat/bg;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3}, Lcom/smrtbeat/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    new-instance v0, Lcom/smrtbeat/bg;

    const/4 v4, 0x3

    const-string v5, "DEBUG"

    invoke-direct {v0, v5, v4}, Lcom/smrtbeat/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    new-instance v0, Lcom/smrtbeat/bg;

    const/4 v5, 0x4

    const-string v6, "VERBOSE"

    invoke-direct {v0, v6, v5}, Lcom/smrtbeat/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/bg;->e:Lcom/smrtbeat/bg;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smrtbeat/bg;

    sget-object v6, Lcom/smrtbeat/bg;->a:Lcom/smrtbeat/bg;

    aput-object v6, v0, v1

    sget-object v1, Lcom/smrtbeat/bg;->b:Lcom/smrtbeat/bg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smrtbeat/bg;->c:Lcom/smrtbeat/bg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smrtbeat/bg;->d:Lcom/smrtbeat/bg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smrtbeat/bg;->e:Lcom/smrtbeat/bg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smrtbeat/bg;->f:[Lcom/smrtbeat/bg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smrtbeat/bg;
    .locals 1

    const-class v0, Lcom/smrtbeat/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smrtbeat/bg;

    return-object p0
.end method

.method public static values()[Lcom/smrtbeat/bg;
    .locals 4

    sget-object v0, Lcom/smrtbeat/bg;->f:[Lcom/smrtbeat/bg;

    array-length v1, v0

    new-array v2, v1, [Lcom/smrtbeat/bg;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
