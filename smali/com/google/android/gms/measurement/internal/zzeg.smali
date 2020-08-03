.class final Lcom/google/android/gms/measurement/internal/zzeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

.field private final synthetic zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

.field private final synthetic zzasl:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/zzdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzc(Lcom/google/android/gms/measurement/internal/zzk;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzcp(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanj:Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zzcd(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/String;)V

    return-void

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Lcom/google/android/gms/internal/measurement/zzdq;Ljava/lang/String;)V

    throw v0
.end method
