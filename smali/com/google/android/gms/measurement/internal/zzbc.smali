.class final Lcom/google/android/gms/measurement/internal/zzbc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzamy:Z

.field private final synthetic zzamz:Lcom/google/android/gms/measurement/internal/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbb;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbc;->zzamz:Lcom/google/android/gms/measurement/internal/zzbb;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzbc;->zzamy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbc;->zzamz:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Lcom/google/android/gms/measurement/internal/zzfn;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzbc;->zzamy:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfn;->zzm(Z)V

    return-void
.end method
