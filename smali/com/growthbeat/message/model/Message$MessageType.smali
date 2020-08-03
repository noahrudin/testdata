.class public final enum Lcom/growthbeat/message/model/Message$MessageType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/growthbeat/message/model/Message$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum card:Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum plain:Lcom/growthbeat/message/model/Message$MessageType;

.field public static final enum swipe:Lcom/growthbeat/message/model/Message$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 221
    new-instance v0, Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v1, 0x0

    const-string v2, "plain"

    invoke-direct {v0, v2, v1}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Message$MessageType;->plain:Lcom/growthbeat/message/model/Message$MessageType;

    .line 222
    new-instance v0, Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v2, 0x1

    const-string v3, "card"

    invoke-direct {v0, v3, v2}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    .line 223
    new-instance v0, Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v3, 0x2

    const-string v4, "swipe"

    invoke-direct {v0, v4, v3}, Lcom/growthbeat/message/model/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/growthbeat/message/model/Message$MessageType;->swipe:Lcom/growthbeat/message/model/Message$MessageType;

    const/4 v0, 0x3

    .line 220
    new-array v0, v0, [Lcom/growthbeat/message/model/Message$MessageType;

    sget-object v4, Lcom/growthbeat/message/model/Message$MessageType;->plain:Lcom/growthbeat/message/model/Message$MessageType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->card:Lcom/growthbeat/message/model/Message$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/growthbeat/message/model/Message$MessageType;->swipe:Lcom/growthbeat/message/model/Message$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/growthbeat/message/model/Message$MessageType;->$VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/growthbeat/message/model/Message$MessageType;
    .locals 1

    .line 220
    const-class v0, Lcom/growthbeat/message/model/Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/growthbeat/message/model/Message$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/growthbeat/message/model/Message$MessageType;
    .locals 1

    .line 220
    sget-object v0, Lcom/growthbeat/message/model/Message$MessageType;->$VALUES:[Lcom/growthbeat/message/model/Message$MessageType;

    invoke-virtual {v0}, [Lcom/growthbeat/message/model/Message$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/growthbeat/message/model/Message$MessageType;

    return-object v0
.end method
