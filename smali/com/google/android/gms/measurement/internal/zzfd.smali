.class public final Lcom/google/android/gms/measurement/internal/zzfd;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private handler:Landroid/os/Handler;

.field private zzatb:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzatc:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzatd:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzate:Lcom/google/android/gms/measurement/internal/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzff;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzff;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfd;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlq()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfd;J)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzai(J)V

    return-void
.end method

.method private final zzai(J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaky:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzant:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    .line 23
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:J

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbi(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzaj(J)V

    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzaf(J)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbf;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v2

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 36
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    const-wide/32 v2, 0x36ee80

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void
.end method

.method private final zzak(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzai;->zzaky:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzant:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_1
    return-void
.end method

.method private final zzal(J)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x3e8

    .line 80
    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzq;->zzbh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v1, -0x1

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    .line 84
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sno"

    move-object v5, v1

    .line 86
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    .line 88
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzq;->zzbg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    .line 92
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzfd;J)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzak(J)V

    return-void
.end method

.method private final zzlm()V
    .locals 2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->handler:Landroid/os/Handler;

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzlq()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(ZZ)Z

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzm(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(JZ)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbd;->zzaf(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzbf;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    :cond_0
    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/zzq;->zzbj(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbf;->get()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfd;->zzal(J)V

    return-void

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    const-wide/32 p2, 0x36ee80

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v3

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 60
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return-void
.end method

.method public final zza(ZZ)Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    .line 106
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    .line 115
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdy;->zzle()Lcom/google/android/gms/measurement/internal/zzdx;

    move-result-object v2

    const/4 v3, 0x1

    .line 118
    invoke-static {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzdy;->zza(Lcom/google/android/gms/measurement/internal/zzdx;Landroid/os/Bundle;Z)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zzbk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzalc:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-wide/16 v4, 0x1

    const-string v2, "_fr"

    .line 124
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlp()J

    .line 126
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzal()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzalc:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzq;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_5

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object p2

    const-string v2, "auto"

    const-string v4, "_e"

    .line 128
    invoke-virtual {p2, v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    :cond_5
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    .line 130
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(J)V

    return v3
.end method

.method public final bridge synthetic zzaf()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()V

    return-void
.end method

.method final zzaj(J)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfd;->zzlm()V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(JZ)V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .locals 0

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzda;
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzam;
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgk()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzeb;
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdy;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzao;
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgn()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzfd;
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzaa;
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzaq;
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgq()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfx;
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbr;
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzas;
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbd;
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzq;
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzln()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatd:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzate:Lcom/google/android/gms/measurement/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzy;->cancel()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatb:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:J

    return-void
.end method

.method protected final zzlo()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzal(J)V

    return-void
.end method

.method final zzlp()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 99
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:J

    sub-long v2, v0, v2

    .line 100
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfd;->zzatc:J

    return-wide v2
.end method
