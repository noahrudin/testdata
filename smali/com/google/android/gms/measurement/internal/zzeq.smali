.class final Lcom/google/android/gms/measurement/internal/zzeq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzads:Ljava/lang/String;

.field private final synthetic zzadz:Ljava/lang/String;

.field private final synthetic zzaeg:Z

.field private final synthetic zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

.field private final synthetic zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

.field private final synthetic zzasl:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/zzdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaeg:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "Failed to get user properties"

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzdq;Landroid/os/Bundle;)V

    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaeg:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    .line 11
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;)Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzd(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzdq;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 17
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzdq;Landroid/os/Bundle;)V

    return-void

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasl:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgr()Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzdq;Landroid/os/Bundle;)V

    throw v0
.end method
