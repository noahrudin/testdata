.class Lcom/smrtbeat/ai;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/smrtbeat/ag;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[I


# direct methods
.method constructor <init>(Lcom/smrtbeat/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/smrtbeat/ai;->a:Lcom/smrtbeat/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/smrtbeat/ai;->p:[I

    return-void
.end method


# virtual methods
.method a(IZ)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x84e0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->b:I

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8069

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->c:I

    const v2, 0x8b8d

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->d:I

    const v2, 0x8895

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->e:I

    const v2, 0x8894

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->f:I

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/smrtbeat/ai;->g:Z

    iget-boolean v3, p0, Lcom/smrtbeat/ai;->g:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    const/16 v2, 0xb44

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/smrtbeat/ai;->h:Z

    iget-boolean v3, p0, Lcom/smrtbeat/ai;->h:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_1
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/smrtbeat/ai;->i:Z

    iget-boolean v3, p0, Lcom/smrtbeat/ai;->i:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_2
    const/16 v2, 0xb74

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v2, v0, v1

    iput v2, p0, Lcom/smrtbeat/ai;->j:I

    iget v2, p0, Lcom/smrtbeat/ai;->j:I

    const/16 v3, 0x201

    if-eq v2, v3, :cond_3

    invoke-static {v3}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    :cond_3
    const/16 v2, 0xde1

    if-lez p1, :cond_4

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    if-eqz p2, :cond_8

    const/16 p1, 0x2800

    invoke-static {v2, p1, v0, v1}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget p2, v0, v1

    iput p2, p0, Lcom/smrtbeat/ai;->k:I

    iget p2, p0, Lcom/smrtbeat/ai;->k:I

    const/16 v3, 0x2600

    if-eq p2, v3, :cond_5

    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_5
    const/16 p1, 0x2801

    invoke-static {v2, p1, v0, v1}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget p2, v0, v1

    iput p2, p0, Lcom/smrtbeat/ai;->l:I

    iget p2, p0, Lcom/smrtbeat/ai;->l:I

    if-eq p2, v3, :cond_6

    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_6
    const/16 p1, 0x2802

    invoke-static {v2, p1, v0, v1}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget p2, v0, v1

    iput p2, p0, Lcom/smrtbeat/ai;->m:I

    iget p2, p0, Lcom/smrtbeat/ai;->m:I

    const v3, 0x812f

    if-eq p2, v3, :cond_7

    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_7
    const/16 p1, 0x2803

    invoke-static {v2, p1, v0, v1}, Landroid/opengl/GLES20;->glGetTexParameteriv(II[II)V

    aget p2, v0, v1

    iput p2, p0, Lcom/smrtbeat/ai;->n:I

    iget p2, p0, Lcom/smrtbeat/ai;->n:I

    if-eq p2, v3, :cond_8

    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_8
    const p1, 0x8ca6

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget p1, v0, v1

    iput p1, p0, Lcom/smrtbeat/ai;->o:I

    const/16 p1, 0xba2

    iget-object p2, p0, Lcom/smrtbeat/ai;->p:[I

    invoke-static {p1, p2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    return-void
.end method

.method a(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    const p2, 0x8d40

    iget v0, p0, Lcom/smrtbeat/ai;->o:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 p2, 0x4100

    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    iget-object p2, p0, Lcom/smrtbeat/ai;->p:[I

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-static {v0, v1, v2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 p2, 0xde1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/smrtbeat/ai;->k:I

    const/16 v0, 0x2600

    if-eq p1, v0, :cond_1

    const/16 v1, 0x2800

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_1
    iget p1, p0, Lcom/smrtbeat/ai;->l:I

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2801

    invoke-static {p2, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_2
    iget p1, p0, Lcom/smrtbeat/ai;->m:I

    const v0, 0x812f

    if-eq p1, v0, :cond_3

    const/16 v1, 0x2802

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_3
    iget p1, p0, Lcom/smrtbeat/ai;->n:I

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2803

    invoke-static {p2, v0, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :cond_4
    iget p1, p0, Lcom/smrtbeat/ai;->j:I

    const/16 v0, 0x201

    if-eq p1, v0, :cond_5

    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/smrtbeat/ai;->i:Z

    if-eqz p1, :cond_6

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_6
    iget-boolean p1, p0, Lcom/smrtbeat/ai;->h:Z

    if-eqz p1, :cond_7

    const/16 p1, 0xb44

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_7
    iget-boolean p1, p0, Lcom/smrtbeat/ai;->g:Z

    if-eqz p1, :cond_8

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_8
    iget p1, p0, Lcom/smrtbeat/ai;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x8893

    iget v0, p0, Lcom/smrtbeat/ai;->e:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const p1, 0x8892

    iget v0, p0, Lcom/smrtbeat/ai;->f:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget p1, p0, Lcom/smrtbeat/ai;->c:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/smrtbeat/ai;->b:I

    const p2, 0x84c0

    if-eq p1, p2, :cond_9

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_9
    const-string p1, "restoreParams"

    invoke-static {p1}, Lcom/smrtbeat/ag;->c(Ljava/lang/String;)V

    return-void
.end method
