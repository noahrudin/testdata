.class final Landroid/nt/project/PermissionManager$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/nt/permission/Dialog$IAlert_Event1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nt/project/PermissionManager;->requestPermission(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pmsStr:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Landroid/nt/project/PermissionManager$1;->val$pmsStr:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPositive()V
    .locals 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/nt/project/PermissionManager$1;->val$pmsStr:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
