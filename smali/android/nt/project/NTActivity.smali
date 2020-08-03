.class public Landroid/nt/project/NTActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "NTActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    array-length p1, p3

    const-string p2, ""

    const-string v0, "UniAndroidPermission"

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    const-string p1, "OnPermit"

    .line 15
    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "NotPermit"

    .line 19
    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
