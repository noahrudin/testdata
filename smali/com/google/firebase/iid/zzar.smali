.class final synthetic Lcom/google/firebase/iid/zzar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzcq:Lcom/google/firebase/iid/zzaq;

.field private final zzcr:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzaq;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzar;->zzcq:Lcom/google/firebase/iid/zzaq;

    iput-object p2, p0, Lcom/google/firebase/iid/zzar;->zzcr:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzar;->zzcq:Lcom/google/firebase/iid/zzaq;

    iget-object v1, p0, Lcom/google/firebase/iid/zzar;->zzcr:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzaq;->zza(Landroid/util/Pair;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
