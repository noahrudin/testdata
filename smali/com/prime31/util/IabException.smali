.class public Lcom/prime31/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mResult:Lcom/prime31/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/prime31/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/prime31/util/IabException;-><init>(Lcom/prime31/util/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/prime31/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/prime31/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/prime31/util/IabException;-><init>(Lcom/prime31/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/prime31/util/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/prime31/util/IabException;-><init>(Lcom/prime31/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/prime31/util/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/prime31/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p1, p0, Lcom/prime31/util/IabException;->mResult:Lcom/prime31/util/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/prime31/util/IabResult;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/prime31/util/IabException;->mResult:Lcom/prime31/util/IabResult;

    return-object v0
.end method
