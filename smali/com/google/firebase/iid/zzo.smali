.class final synthetic Lcom/google/firebase/iid/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzas;


# instance fields
.field private final zzav:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzaw:Ljava/lang/String;

.field private final zzax:Ljava/lang/String;

.field private final zzay:Ljava/lang/String;

.field private final zzaz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->zzav:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzo;->zzaw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzo;->zzax:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/zzo;->zzay:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/iid/zzo;->zzaz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzs()Lcom/google/android/gms/tasks/Task;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zzav:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzo;->zzaw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzo;->zzax:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/zzo;->zzay:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/zzo;->zzaz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
