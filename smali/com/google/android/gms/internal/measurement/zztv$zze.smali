.class final Lcom/google/android/gms/internal/measurement/zztv$zze;
.super Lcom/google/android/gms/internal/measurement/zztv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zztv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzbus:Ljava/nio/ByteBuffer;

.field private final zzbut:Ljava/nio/ByteBuffer;

.field private final zzbuu:J

.field private final zzbuv:J

.field private final zzbuw:J

.field private final zzbux:J

.field private zzbuy:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zztv;-><init>(Lcom/google/android/gms/internal/measurement/zztw;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbus:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuv:J

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbux:J

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    return-void
.end method

.method private final zzbc(J)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    .line 164
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    .line 165
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbus:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 159
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 160
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final write([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 119
    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    .line 124
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzxj;->zza([BJJJ)V

    .line 125
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 121
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zztv;->zzat(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzte;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zza(Lcom/google/android/gms/internal/measurement/zzte;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzvv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zzb(Lcom/google/android/gms/internal/measurement/zzvv;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzvv;Lcom/google/android/gms/internal/measurement/zzwl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zztv;->zza(Lcom/google/android/gms/internal/measurement/zzvv;Lcom/google/android/gms/internal/measurement/zzwl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzte;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzte;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzte;->zza(Lcom/google/android/gms/internal/measurement/zztd;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzvv;Lcom/google/android/gms/internal/measurement/zzwl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzsx;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsx;->zztx()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 60
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzwl;->zzai(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsx;->zzai(I)V

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbup:Lcom/google/android/gms/internal/measurement/zztx;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzwl;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxy;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zztv;->write([BII)V

    return-void
.end method

.method public final zzat(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbux:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_1

    :goto_0
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    return-void

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_3

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_2

    add-long/2addr v9, v0

    .line 108
    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    return-void

    :cond_2
    add-long v2, v0, v9

    .line 110
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_1

    .line 112
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzav(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 115
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 116
    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 117
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    return-void
.end method

.method public final zzaz(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zztv;->zzat(J)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzte;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    const/4 v2, 0x2

    .line 50
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zze(II)V

    .line 51
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zza(ILcom/google/android/gms/internal/measurement/zzte;)V

    const/4 p1, 0x4

    .line 52
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzvv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    const/4 v2, 0x2

    .line 45
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zze(II)V

    .line 46
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zza(ILcom/google/android/gms/internal/measurement/zzvv;)V

    const/4 p1, 0x4

    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zzgb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    int-to-byte p1, p2

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(B)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzvv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzvv;->zzvx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    .line 55
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzvv;->zzb(Lcom/google/android/gms/internal/measurement/zztv;)V

    return-void
.end method

.method public final zzba(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbux:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 83
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    return-void

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_2

    add-long/2addr v4, v0

    .line 89
    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    return-void

    :cond_2
    add-long v2, v0, v4

    .line 91
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 93
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzbc(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 96
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 97
    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    return-void
.end method

.method public final zzc(B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 69
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzxj;->zza(JB)V

    return-void

    .line 67
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    return-void
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zztv;->zzav(J)V

    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zzaz(I)V

    return-void
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    return-void
.end method

.method public final zze([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zztv;->write([BII)V

    return-void
.end method

.method public final zzg(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zztv;->zzc(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zztv;->zzbc(I)V

    return-void
.end method

.method public final zzgb(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 131
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbf(I)I

    move-result v2

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbf(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 134
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 135
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuu:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 137
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzxl;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    .line 141
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    return-void

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxl;->zza(Ljava/lang/CharSequence;)I

    move-result v2

    .line 144
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zztv;->zzba(I)V

    .line 145
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbc(J)V

    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbut:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzxl;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 147
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzxp; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Lcom/google/android/gms/internal/measurement/zztv$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zztv$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    .line 150
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    .line 151
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbc(J)V

    .line 152
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zztv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxp;)V

    return-void
.end method

.method public final zzvj()I
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuw:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zztv$zze;->zzbuy:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method
