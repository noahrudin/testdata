.class public final Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
.super Lcom/google/flatbuffers/Table;
.source "SerializedTokenReceived.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 23
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 24
    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .locals 2

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    move-result-object p0

    return-object p0
.end method

.method public static startSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->bb_pos:I

    iput-object p2, p0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public token()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public tokenAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public tokenInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
