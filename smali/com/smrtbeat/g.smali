.class Lcom/smrtbeat/g;
.super Ljava/lang/Object;


# static fields
.field static A:Ljava/lang/String; = null

.field static B:Ljava/lang/String; = null

.field static C:Z = false

.field static D:Z = false

.field static E:I = 0x0

.field static F:Ljava/util/List; = null

.field static G:Ljava/util/HashMap; = null

.field static H:Ljava/lang/String; = null

.field static I:Z = false

.field static J:Ljava/lang/String; = null

.field static K:Ljava/lang/String; = null

.field static L:Z = false

.field static M:Lcom/smrtbeat/e; = null

.field static N:Ljava/lang/Thread; = null

.field static O:Z = false

.field static P:Z = false

.field static Q:Ljava/util/List; = null

.field static R:I = 0x0

.field static S:Ljava/lang/String; = null

.field static T:Landroid/graphics/Bitmap; = null

.field static U:Landroid/graphics/Bitmap; = null

.field static V:J = 0x0L

.field static W:Lcom/smrtbeat/h; = null

.field static X:Z = false

.field static Y:Ljava/lang/String; = null

.field static Z:Ljava/lang/String; = null

.field static final a:Ljava/lang/String; = "https://api.smbeat.jp/api/errors"

.field static aa:Ljava/lang/String; = null

.field static ab:Z = false

.field static ac:Z = false

.field static ad:Z = false

.field static ae:Z = false

.field static af:Ljava/lang/Thread; = null

.field private static ag:Ljava/lang/ref/WeakReference; = null

.field static final b:Ljava/lang/String; = "https://images.smbeat.jp/api/upload"

.field static final c:Ljava/lang/String; = "https://minidumps.smbeat.jp/api/errors/multi"

.field static final d:Ljava/lang/String; = "https://control.smbeat.jp/api/remote"

.field static final e:J = 0x1499700L

.field static final f:I = 0x20

.field static final g:I = 0x10

.field static final h:J = 0x1388L

.field static final i:I = 0x3

.field static final j:I = 0x10000

.field static final k:I = 0x1f4

.field static final l:Ljava/lang/String; = "1.18"

.field static m:Ljava/lang/String; = ""

.field static n:Ljava/lang/String; = ""

.field static o:Ljava/lang/String; = ""

.field static p:Ljava/lang/String; = ""

.field static q:Ljava/lang/String; = ""

.field static r:Ljava/lang/String; = ""

.field static s:Ljava/lang/String; = null

.field static t:Ljava/lang/String; = ""

.field static u:Ljava/lang/String; = ""

.field static v:Z = false

.field static w:I

.field static x:I

.field static y:I

.field static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smrtbeat/g;->z:J

    const-string v0, ""

    sput-object v0, Lcom/smrtbeat/g;->A:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->B:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/smrtbeat/g;->C:Z

    sput-boolean v1, Lcom/smrtbeat/g;->D:Z

    sput v1, Lcom/smrtbeat/g;->E:I

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/smrtbeat/g;->F:Ljava/util/List;

    const/4 v2, 0x0

    sput-object v2, Lcom/smrtbeat/g;->G:Ljava/util/HashMap;

    sput-object v0, Lcom/smrtbeat/g;->H:Ljava/lang/String;

    sput-boolean v1, Lcom/smrtbeat/g;->I:Z

    sput-object v0, Lcom/smrtbeat/g;->J:Ljava/lang/String;

    sput-object v0, Lcom/smrtbeat/g;->K:Ljava/lang/String;

    sput-boolean v1, Lcom/smrtbeat/g;->L:Z

    sput-object v2, Lcom/smrtbeat/g;->M:Lcom/smrtbeat/e;

    sput-object v2, Lcom/smrtbeat/g;->N:Ljava/lang/Thread;

    sput-boolean v1, Lcom/smrtbeat/g;->O:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/smrtbeat/g;->P:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/smrtbeat/g;->Q:Ljava/util/List;

    const/4 v3, 0x5

    sput v3, Lcom/smrtbeat/g;->R:I

    sput-object v0, Lcom/smrtbeat/g;->S:Ljava/lang/String;

    sput-object v2, Lcom/smrtbeat/g;->T:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/smrtbeat/g;->U:Landroid/graphics/Bitmap;

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/smrtbeat/g;->V:J

    sget-object v0, Lcom/smrtbeat/h;->a:Lcom/smrtbeat/h;

    sput-object v0, Lcom/smrtbeat/g;->W:Lcom/smrtbeat/h;

    sput-boolean v1, Lcom/smrtbeat/g;->X:Z

    sput-object v2, Lcom/smrtbeat/g;->Y:Ljava/lang/String;

    sput-object v2, Lcom/smrtbeat/g;->Z:Ljava/lang/String;

    sput-object v2, Lcom/smrtbeat/g;->aa:Ljava/lang/String;

    sput-boolean v1, Lcom/smrtbeat/g;->ab:Z

    sput-boolean v1, Lcom/smrtbeat/g;->ac:Z

    sput-boolean v1, Lcom/smrtbeat/g;->ad:Z

    sput-boolean v1, Lcom/smrtbeat/g;->ae:Z

    sput-object v2, Lcom/smrtbeat/g;->af:Ljava/lang/Thread;

    sput-object v2, Lcom/smrtbeat/g;->ag:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/smrtbeat/g;->ag:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/smrtbeat/g;->ag:Ljava/lang/ref/WeakReference;

    return-void
.end method
