.class final Landroid/nt/permission/Result$3;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Landroid/nt/permission/Dialog$IAlert_Event1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nt/permission/Result;->grantCheckContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPositive()V
    .locals 3

    const-string v0, "PermissionChecker"

    const-string v1, "onResult"

    const-string v2, "deny"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
