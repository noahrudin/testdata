.class public Landroid/nt/project/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 65
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 3

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 57
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static requestPermission(Ljava/lang/String;I)V
    .locals 4

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {p0}, Landroid/nt/project/PermissionManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 19
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 21
    sget-object p0, Landroid/nt/project/PermissionManager$2;->$SwitchMap$android$nt$system$Utility$PERMISSION_TYPE:[I

    invoke-static {}, Landroid/nt/system/Utility$PERMISSION_TYPE;->values()[Landroid/nt/system/Utility$PERMISSION_TYPE;

    move-result-object v3

    aget-object p1, v3, p1

    invoke-virtual {p1}, Landroid/nt/system/Utility$PERMISSION_TYPE;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    const-string p0, "check_storage_title"

    .line 25
    invoke-static {p0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/nt/permission/Dialog;->title:Ljava/lang/String;

    const-string p0, "check_storage_message"

    .line 26
    invoke-static {p0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/nt/permission/Dialog;->message:Ljava/lang/String;

    const-string p0, "confirm"

    .line 27
    invoke-static {p0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    .line 36
    :goto_0
    new-instance p0, Landroid/nt/project/PermissionManager$1;

    invoke-direct {p0, v1}, Landroid/nt/project/PermissionManager$1;-><init>([Ljava/lang/String;)V

    invoke-static {p0}, Landroid/nt/permission/Dialog;->ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    :cond_3
    return-void
.end method
