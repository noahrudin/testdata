.class public abstract Lcom/google/android/gms/internal/measurement/zzsi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzbro:Ljava/lang/Object;

.field private static zzbrp:Z

.field private static final zzbrs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static zzri:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private volatile zzall:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

.field private final zzbrr:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile zzbrt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbro:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrp:Z

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrt:I

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzso;->zza(Lcom/google/android/gms/internal/measurement/zzso;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzsi;->name:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrr:Ljava/lang/Object;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzsj;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsi;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsm;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsm;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsk;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsk;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsj;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsj;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsn;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzso;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/measurement/zzsi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsl;-><init>(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static zzae(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbro:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 5
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    if-eq v1, p0, :cond_1

    .line 6
    const-class v1, Lcom/google/android/gms/internal/measurement/zzrx;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzrx;->zzbrd:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    const-class v1, Lcom/google/android/gms/internal/measurement/zzsp;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 10
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzsp;->zzbsb:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 11
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    const-class v1, Lcom/google/android/gms/internal/measurement/zzse;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v2, 0x0

    .line 13
    :try_start_5
    sput-object v2, Lcom/google/android/gms/internal/measurement/zzse;->zzbrl:Lcom/google/android/gms/internal/measurement/zzse;

    .line 14
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :try_start_6
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_1
    move-exception p0

    .line 11
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_2
    move-exception p0

    .line 8
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0

    .line 17
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 0

    .line 95
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsi;->zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 0

    .line 94
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsi;->zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;I)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 0

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzsi;->zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsi;->zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsi;
    .locals 0

    .line 93
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsi;->zza(Lcom/google/android/gms/internal/measurement/zzso;Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzsi;

    move-result-object p0

    return-object p0
.end method

.method private final zzfr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->name:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zztq()V
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method private final zzts()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzse;->zzad(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzse;

    move-result-object v0

    const-string v1, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzse;->zzfn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzru;->zzbqq:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzso;->zza(Lcom/google/android/gms/internal/measurement/zzso;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzso;->zza(Lcom/google/android/gms/internal/measurement/zzso;)Landroid/net/Uri;

    move-result-object v2

    .line 66
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzrx;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 69
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsp;->zzi(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzsp;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->zztr()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/zzsb;->zzfn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsi;->zzs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "Bypass reading Phenotype values for flag: "

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->zztr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    const-string v2, "PhenotypeFlag"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method private final zztt()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 78
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzse;->zzad(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzse;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 82
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzso;->zzc(Lcom/google/android/gms/internal/measurement/zzso;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzsi;->zzfr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzsb;->zzfn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsi;->zzs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrt:I

    if-ge v1, v0, :cond_4

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrt:I

    if-ge v1, v0, :cond_3

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsi;->zzri:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->zzts()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsi;->zztt()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrr:Ljava/lang/Object;

    .line 50
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzall:Ljava/lang/Object;

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrt:I

    goto :goto_1

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzall:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrr:Ljava/lang/Object;

    return-object v0
.end method

.method abstract zzs(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final zztr()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsi;->zzbrq:Lcom/google/android/gms/internal/measurement/zzso;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzso;->zzb(Lcom/google/android/gms/internal/measurement/zzso;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsi;->zzfr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
