.class abstract Lcom/google/android/gms/measurement/internal/zzfm;
.super Lcom/google/android/gms/measurement/internal/zzfl;


# instance fields
.field private zzvz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzfn;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzb(Lcom/google/android/gms/measurement/internal/zzfm;)V

    return-void
.end method


# virtual methods
.method final isInitialized()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzvz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzcl()V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zzgy()Z
.end method

.method public final zzq()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzvz:Z

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfm;->zzgy()Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamx:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzmg()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzvz:Z

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
