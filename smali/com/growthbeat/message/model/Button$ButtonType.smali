.class public final enum Lcom/growthbeat/message/model/Button$ButtonType;
.super Ljava/lang/Enum;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/Button$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum close:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum image:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum plain:Lcom/growthbeat/message/model/Button$ButtonType;

.field public static final enum screen:Lcom/growthbeat/message/model/Button$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 122
    new-instance v0, Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v1, 0x0

    const-string v2, "plain"

    invoke-direct {v0, v2, v1}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->plain:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 123
    new-instance v0, Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v2, 0x1

    const-string v3, "image"

    invoke-direct {v0, v3, v2}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 124
    new-instance v0, Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v3, 0x2

    const-string v4, "screen"

    invoke-direct {v0, v4, v3}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->screen:Lcom/growthbeat/message/model/Button$ButtonType;

    .line 125
    new-instance v0, Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v4, 0x3

    const-string v5, "close"

    invoke-direct {v0, v5, v4}, Lcom/growthbeat/message/model/Button$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    const/4 v0, 0x4

    .line 121
    new-array v0, v0, [Lcom/growthbeat/message/model/Button$ButtonType;

    sget-object v5, Lcom/growthbeat/message/model/Button$ButtonType;->plain:Lcom/growthbeat/message/model/Button$ButtonType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/growthbeat/message/model/Button$ButtonType;->image:Lcom/growthbeat/message/model/Button$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/growthbeat/message/model/Button$ButtonType;->screen:Lcom/growthbeat/message/model/Button$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/growthbeat/message/model/Button$ButtonType;->close:Lcom/growthbeat/message/model/Button$ButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->$VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Button$ButtonType;
    .locals 1

    .line 121
    const-class v0, Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/Button$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/Button$ButtonType;
    .locals 1

    .line 121
    sget-object v0, Lcom/growthbeat/message/model/Button$ButtonType;->$VALUES:[Lcom/growthbeat/message/model/Button$ButtonType;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/Button$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/Button$ButtonType;

    return-object v0
.end method
