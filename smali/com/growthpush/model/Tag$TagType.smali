.class public final enum Lcom/growthpush/model/Tag$TagType;
.super Ljava/lang/Enum;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthpush/model/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthpush/model/Tag$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthpush/model/Tag$TagType;

.field public static final enum custom:Lcom/growthpush/model/Tag$TagType;

.field public static final enum message:Lcom/growthpush/model/Tag$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 141
    new-instance v0, Lcom/growthpush/model/Tag$TagType;

    const/4 v1, 0x0

    const-string v2, "custom"

    invoke-direct {v0, v2, v1}, Lcom/growthpush/model/Tag$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Tag$TagType;->custom:Lcom/growthpush/model/Tag$TagType;

    .line 142
    new-instance v0, Lcom/growthpush/model/Tag$TagType;

    const/4 v2, 0x1

    const-string v3, "message"

    invoke-direct {v0, v3, v2}, Lcom/growthpush/model/Tag$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthpush/model/Tag$TagType;->message:Lcom/growthpush/model/Tag$TagType;

    const/4 v0, 0x2

    .line 140
    new-array v0, v0, [Lcom/growthpush/model/Tag$TagType;

    sget-object v3, Lcom/growthpush/model/Tag$TagType;->custom:Lcom/growthpush/model/Tag$TagType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/growthpush/model/Tag$TagType;->message:Lcom/growthpush/model/Tag$TagType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/growthpush/model/Tag$TagType;->$VALUES:[Lcom/growthpush/model/Tag$TagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthpush/model/Tag$TagType;
    .locals 1

    .line 140
    const-class v0, Lcom/growthpush/model/Tag$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthpush/model/Tag$TagType;

    return-object p0
.end method

.method public static values()[Lcom/growthpush/model/Tag$TagType;
    .locals 1

    .line 140
    sget-object v0, Lcom/growthpush/model/Tag$TagType;->$VALUES:[Lcom/growthpush/model/Tag$TagType;

    invoke-virtual {v0}, [Lcom/growthpush/model/Tag$TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthpush/model/Tag$TagType;

    return-object v0
.end method
