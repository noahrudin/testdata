.class public final Lcom/google/android/gms/measurement/internal/zzai$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaan:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private zzalj:Lcom/google/android/gms/internal/measurement/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzalk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private volatile zzall:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzoj:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalk:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;DD)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai$zza;

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p0, p2, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method static zzb(Ljava/lang/String;JJ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzc(Ljava/lang/String;II)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzai$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/measurement/internal/zzai$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzai$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static zzja()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 68
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 73
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 76
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 79
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    goto :goto_2

    .line 81
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 82
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    goto :goto_3

    .line 84
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 85
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 88
    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    .line 89
    :cond_4
    monitor-exit v0

    return-void

    .line 71
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic zzjb()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzq()V

    return-void
.end method

.method private static zzq()V
    .locals 7

    .line 22
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai$zza;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaik:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 25
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/zzso;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 26
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 28
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 30
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzso;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzail:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 34
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/zzso;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 35
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 37
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzso;->zzy(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    goto :goto_1

    .line 40
    :cond_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaij:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 42
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/zzso;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 43
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 45
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 46
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 47
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzso;->zze(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    goto :goto_2

    .line 49
    :cond_2
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaii:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 51
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/zzso;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 52
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 54
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 56
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzso;->zzd(Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    goto :goto_3

    .line 58
    :cond_3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzaim:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzai$zza;

    .line 60
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai;->zziz()Lcom/google/android/gms/internal/measurement/zzso;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    .line 61
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 63
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    .line 64
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 65
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzso;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    goto :goto_4

    .line 67
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 93
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    return-object v0

    .line 95
    :cond_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsi;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 101
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    .line 103
    :cond_1
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzai;->zzaih:Lcom/google/android/gms/measurement/internal/zzn;

    .line 104
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzaan:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzall:Ljava/lang/Object;

    return-object p1

    .line 106
    :cond_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzja()V

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsi;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Ljava/lang/Exception;)V

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzalj:Lcom/google/android/gms/internal/measurement/zzsi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzsi;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai$zza;->zzoj:Ljava/lang/String;

    return-object v0
.end method
