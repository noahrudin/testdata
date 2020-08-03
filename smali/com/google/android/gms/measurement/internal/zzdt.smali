.class final Lcom/google/android/gms/measurement/internal/zzdt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzarh:Lcom/google/android/gms/measurement/internal/zzda;

.field private final synthetic zzarp:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarh:Lcom/google/android/gms/measurement/internal/zzda;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarh:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzano:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarh:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
