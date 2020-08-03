.class public final enum Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzur;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfe$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzur;"
    }
.end annotation


# static fields
.field private static final enum zzavc:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

.field private static final enum zzavd:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

.field private static final synthetic zzave:[Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

.field private static final zzoa:Lcom/google/android/gms/internal/measurement/zzus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzus<",
            "Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavc:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    const/4 v3, 0x2

    const-string v4, "PROVISIONING"

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavd:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    .line 13
    new-array v0, v3, [Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavc:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavd:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzave:[Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzoa:Lcom/google/android/gms/internal/measurement/zzus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzave:[Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzut;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfh;->zzoc:Lcom/google/android/gms/internal/measurement/zzut;

    return-object v0
.end method

.method public static zzt(I)Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavd:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->zzavc:Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;

    return-object p0
.end method


# virtual methods
.method public final zzc()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfe$zzb$zzb;->value:I

    return v0
.end method
