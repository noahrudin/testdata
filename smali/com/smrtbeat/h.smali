.class final enum Lcom/smrtbeat/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/smrtbeat/h;

.field public static final enum b:Lcom/smrtbeat/h;

.field public static final enum c:Lcom/smrtbeat/h;

.field private static final synthetic d:[Lcom/smrtbeat/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/smrtbeat/h;

    const/4 v1, 0x0

    const-string v2, "ENone"

    invoke-direct {v0, v2, v1}, Lcom/smrtbeat/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    new-instance v0, Lcom/smrtbeat/h;

    const/4 v2, 0x1

    const-string v3, "ENative"

    invoke-direct {v0, v3, v2}, Lcom/smrtbeat/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/h;->b:Lcom/smrtbeat/h;

    new-instance v0, Lcom/smrtbeat/h;

    const/4 v3, 0x2

    const-string v4, "EGles"

    invoke-direct {v0, v4, v3}, Lcom/smrtbeat/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smrtbeat/h;

    sget-object v4, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    aput-object v4, v0, v1

    sget-object v1, Lcom/smrtbeat/h;->b:Lcom/smrtbeat/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smrtbeat/h;->c:Lcom/smrtbeat/h;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smrtbeat/h;->d:[Lcom/smrtbeat/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smrtbeat/h;
    .locals 1

    const-class v0, Lcom/smrtbeat/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smrtbeat/h;

    return-object p0
.end method

.method public static values()[Lcom/smrtbeat/h;
    .locals 4

    sget-object v0, Lcom/smrtbeat/h;->d:[Lcom/smrtbeat/h;

    array-length v1, v0

    new-array v2, v1, [Lcom/smrtbeat/h;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
