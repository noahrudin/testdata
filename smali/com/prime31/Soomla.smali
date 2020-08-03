.class public Lcom/prime31/Soomla;
.super Ljava/lang/Object;
.source "Soomla.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Prime31-Soomla"

.field private static _instance:Lcom/prime31/Soomla;


# instance fields
.field private _highwayExists:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.soomla.highway.lite.GrowHighway"

    .line 40
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 41
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/prime31/Soomla;->_highwayExists:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string v0, "Prime31-Soomla"

    const-string v1, "Could not find Soomla highway. Disabling Soomla features."

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static instance()Lcom/prime31/Soomla;
    .locals 1

    .line 22
    sget-object v0, Lcom/prime31/Soomla;->_instance:Lcom/prime31/Soomla;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/prime31/Soomla;

    invoke-direct {v0}, Lcom/prime31/Soomla;-><init>()V

    sput-object v0, Lcom/prime31/Soomla;->_instance:Lcom/prime31/Soomla;

    .line 25
    :cond_0
    sget-object v0, Lcom/prime31/Soomla;->_instance:Lcom/prime31/Soomla;

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/prime31/Soomla;->instance()Lcom/prime31/Soomla;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prime31/Soomla;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Prime31-Soomla"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "Prime31-Soomla"

    .line 63
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 69
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "SoomlaGameKey"

    .line 71
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "SoomlaEnvKey"

    .line 72
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v3

    const-string v7, "prime31"

    new-instance v8, Lcom/prime31/Soomla$1;

    invoke-direct {v8, p0}, Lcom/prime31/Soomla$1;-><init>(Lcom/prime31/Soomla;)V

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/soomla/highway/lite/GrowHighway;->initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/highway/lite/HighwayEventListener;)V

    const-string p1, "Soomla Highway initialized"

    .line 95
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "could not find the Soomla game key and/or env key in the AndroidManifest. Aborting all Soomla activity"

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    :goto_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    return v0
.end method

.method public onBillingNotSupported()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 124
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 129
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soomla/highway/lite/GrowHighway;->onBillingNotSupported()V

    const-string v1, "Soomla Highway: onBillingNotSupported"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onBillingSupported()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 107
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soomla/highway/lite/GrowHighway;->onBillingSupported()V

    const-string v1, "Soomla Highway: onBillingSupported"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMarketPurchaseCancelled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 203
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/soomla/highway/lite/GrowHighway;->onMarketPurchaseCancelled(Ljava/lang/String;)V

    const-string p1, "Soomla Highway: onMarketPurchaseCancelled"

    .line 209
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMarketPurchaseFailed()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 186
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 191
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soomla/highway/lite/GrowHighway;->onMarketPurchaseFailed()V

    const-string v1, "Soomla Highway: onMarketPurchaseFailed"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMarketPurchaseFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 165
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 169
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/soomla/highway/lite/GrowHighway;->onMarketPurchaseFinished(Ljava/lang/String;JLjava/lang/String;)V

    const-string p1, "Prime31-Soomla"

    const-string p2, "Soomla Highway: onMarketPurchaseFinished"

    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMarketPurchaseStarted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 141
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 146
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/soomla/highway/lite/GrowHighway;->onMarketPurchaseStarted(Ljava/lang/String;)V

    const-string p1, "Soomla Highway: onMarketPurchaseStarted"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRestoreTransactionsFinished(Z)V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 237
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 242
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/soomla/highway/lite/GrowHighway;->onRestoreTransactionsFinished(Z)V

    const-string p1, "Soomla Highway: onRestoreTransactionsFinished"

    .line 243
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRestoreTransactionsStarted()V
    .locals 2

    const-string v0, "Prime31-Soomla"

    .line 220
    iget-boolean v1, p0, Lcom/prime31/Soomla;->_highwayExists:Z

    if-nez v1, :cond_0

    return-void

    .line 225
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/soomla/highway/lite/GrowHighway;->getInstance()Lcom/soomla/highway/lite/GrowHighway;

    move-result-object v1

    invoke-virtual {v1}, Lcom/soomla/highway/lite/GrowHighway;->onRestoreTransactionsStarted()V

    const-string v1, "Soomla Highway: onRestoreTransactionsStarted"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
