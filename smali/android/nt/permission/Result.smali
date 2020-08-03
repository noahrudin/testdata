.class public Landroid/nt/permission/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field static final AppInfo:Ljava/lang/String; = "info"

.field static final Deny:Ljava/lang/String; = "deny"

.field static final Grant:Ljava/lang/String; = "grant"

.field static final OnResult:Ljava/lang/String; = "onResult"

.field static final PermissionChecker:Ljava/lang/String; = "PermissionChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static grantCheckContacts()V
    .locals 3

    .line 62
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 64
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "denied_contacts_title"

    .line 66
    invoke-static {v0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->title:Ljava/lang/String;

    const-string v0, "contacts_message"

    .line 67
    invoke-static {v0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->message:Ljava/lang/String;

    const-string v0, "confirm"

    .line 68
    invoke-static {v0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/nt/permission/Result$3;

    invoke-direct {v0}, Landroid/nt/permission/Result$3;-><init>()V

    invoke-static {v0}, Landroid/nt/permission/Dialog;->ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    goto :goto_0

    :cond_0
    const-string v0, "PermissionChecker"

    const-string v1, "onResult"

    const-string v2, "deny"

    .line 80
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected static grantCheckStorage()V
    .locals 4

    .line 25
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 27
    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "confirm"

    const-string v2, "storage_message"

    const-string v3, "denied_storage_title"

    if-eqz v0, :cond_0

    .line 29
    invoke-static {v3}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->title:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->message:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/nt/permission/Result$1;

    invoke-direct {v0}, Landroid/nt/permission/Result$1;-><init>()V

    invoke-static {v0}, Landroid/nt/permission/Dialog;->ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v3}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->title:Ljava/lang/String;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "persistent_message"

    invoke-static {v3}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%s\n\n%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->message:Ljava/lang/String;

    const-string v0, "details_settings"

    .line 45
    invoke-static {v0}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Landroid/nt/system/Utility;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nt/permission/Dialog;->negative:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/nt/permission/Result$2;

    invoke-direct {v0}, Landroid/nt/permission/Result$2;-><init>()V

    invoke-static {v0}, Landroid/nt/permission/Dialog;->ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    :goto_0
    return-void
.end method

.method static openApplicationDetailsSettings()V
    .locals 5

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 91
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
