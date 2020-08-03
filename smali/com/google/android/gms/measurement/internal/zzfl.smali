.class Lcom/google/android/gms/measurement/internal/zzfl;
.super Lcom/google/android/gms/measurement/internal/zzcr;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzct;


# instance fields
.field protected final zzamx:Lcom/google/android/gms/measurement/internal/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfn;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzmh()Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcr;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    return-void
.end method


# virtual methods
.method public zzjr()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzjr()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method
