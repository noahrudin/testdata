.class final Lcom/google/android/gms/measurement/internal/zzcj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzagi:Lcom/google/android/gms/measurement/internal/zzag;

.field private final synthetic zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

.field private final synthetic zzaqo:Lcom/google/android/gms/measurement/internal/zzby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzby;Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqo:Lcom/google/android/gms/measurement/internal/zzby;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzagi:Lcom/google/android/gms/measurement/internal/zzag;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqo:Lcom/google/android/gms/measurement/internal/zzby;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzagi:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzby;->zzb(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqo:Lcom/google/android/gms/measurement/internal/zzby;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzby;->zza(Lcom/google/android/gms/measurement/internal/zzby;)Lcom/google/android/gms/measurement/internal/zzfn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzme()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqo:Lcom/google/android/gms/measurement/internal/zzby;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzby;->zza(Lcom/google/android/gms/measurement/internal/zzby;)Lcom/google/android/gms/measurement/internal/zzfn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcj;->zzaqn:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfn;->zzc(Lcom/google/android/gms/measurement/internal/zzag;Lcom/google/android/gms/measurement/internal/zzk;)V

    return-void
.end method
