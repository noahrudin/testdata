.class final synthetic Lcom/google/android/gms/internal/measurement/zzsq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final zzbse:Lcom/google/android/gms/internal/measurement/zzsp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzsp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsq;->zzbse:Lcom/google/android/gms/internal/measurement/zzsp;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsq;->zzbse:Lcom/google/android/gms/internal/measurement/zzsp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsp;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
