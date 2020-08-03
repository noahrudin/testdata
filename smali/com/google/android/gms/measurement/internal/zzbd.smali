.class final Lcom/google/android/gms/measurement/internal/zzbd;
.super Lcom/google/android/gms/measurement/internal/zzcs;


# static fields
.field static final zzana:Landroid/util/Pair;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzabr:Landroid/content/SharedPreferences;

.field public zzanb:Lcom/google/android/gms/measurement/internal/zzbh;

.field public final zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzand:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzane:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzang:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanh:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzani:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanj:Lcom/google/android/gms/measurement/internal/zzbi;

.field private zzank:Ljava/lang/String;

.field private zzanl:Z

.field private zzanm:J

.field public final zzann:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzano:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

.field public final zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

.field public zzans:Z

.field public zzant:Lcom/google/android/gms/measurement/internal/zzbf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzana:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;)V
    .locals 5

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcs;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    .line 28
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-wide/16 v0, 0x0

    const-string v2, "last_upload"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanc:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 29
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "last_upload_attempt"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzand:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 30
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "backoff"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzane:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 31
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "last_delete_stale"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 32
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzann:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 33
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 34
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v2, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanp:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 35
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "last_pause_time"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 36
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "time_active"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanr:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 37
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "midnight_offset"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzang:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 38
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "first_open_time"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 39
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbg;

    const-string v2, "app_install_time"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzani:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 40
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbi;

    const-string v0, "app_instance_id"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbi;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanj:Lcom/google/android/gms/measurement/internal/zzbi;

    .line 41
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v0, "app_backgrounded"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzant:Lcom/google/android/gms/measurement/internal/zzbf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbd;)Landroid/content/SharedPreferences;
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final zzju()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method final setMeasurementEnabled(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting measurementEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    .line 104
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzaf(J)Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanq:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzbz(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    .line 4
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzai;->zzaiv:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzai$zza;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 7
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:J

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanl:Z

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 20
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzank:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanl:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zzca(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzbz(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfx;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzcb(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    .line 59
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzcc(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "admob_app_id"

    .line 66
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzg(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting useService"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    .line 78
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final zzgy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    const-string v2, "has_been_opened"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzans:Z

    .line 46
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzans:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 48
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbh;

    const-wide/16 v1, 0x0

    .line 51
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzai;->zzaiw:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzbh;-><init>(Lcom/google/android/gms/measurement/internal/zzbd;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbe;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanb:Lcom/google/android/gms/measurement/internal/zzbh;

    return-void
.end method

.method final zzh(Z)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final zzi(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Updating deferred analytics collection"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 129
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzjv()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzjw()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzjx()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final zzjy()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgv()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzale:Lcom/google/android/gms/measurement/internal/zzai$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Lcom/google/android/gms/measurement/internal/zzai$zza;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzjz()Ljava/lang/Boolean;

    move-result-object v0

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 86
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbd;->setMeasurementEnabled(Z)V

    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->zzh(Z)Z

    move-result v1

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbd;->setMeasurementEnabled(Z)V

    :cond_3
    return-void
.end method

.method final zzjz()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final zzka()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgp()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcs;->zzcl()V

    .line 117
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 121
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method final zzkb()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzaf()V

    .line 133
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbd;->zzju()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final zzkc()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzabr:Landroid/content/SharedPreferences;

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
