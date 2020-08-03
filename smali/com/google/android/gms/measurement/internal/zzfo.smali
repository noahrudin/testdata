.class final Lcom/google/android/gms/measurement/internal/zzfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzauf:Lcom/google/android/gms/measurement/internal/zzfs;

.field private final synthetic zzaug:Lcom/google/android/gms/measurement/internal/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfn;Lcom/google/android/gms/measurement/internal/zzfs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaug:Lcom/google/android/gms/measurement/internal/zzfn;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzauf:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaug:Lcom/google/android/gms/measurement/internal/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzauf:Lcom/google/android/gms/measurement/internal/zzfs;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zza(Lcom/google/android/gms/measurement/internal/zzfn;Lcom/google/android/gms/measurement/internal/zzfs;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfo;->zzaug:Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfn;->start()V

    return-void
.end method
