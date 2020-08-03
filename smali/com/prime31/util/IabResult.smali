.class public Lcom/prime31/util/IabResult;
.super Ljava/lang/Object;
.source "IabResult.java"


# instance fields
.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/prime31/util/IabResult;->mResponse:I

    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " (response: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/util/IabResult;->mMessage:Ljava/lang/String;

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/prime31/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prime31/util/IabResult;->mMessage:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/prime31/util/IabResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/prime31/util/IabResult;->mResponse:I

    return v0
.end method

.method public isFailure()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/prime31/util/IabResult;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 59
    iget v0, p0, Lcom/prime31/util/IabResult;->mResponse:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IabResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasCanceled()Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/prime31/util/IabResult;->mResponse:I

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
