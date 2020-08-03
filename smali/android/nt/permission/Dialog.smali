.class public Landroid/nt/permission/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nt/permission/Dialog$IAlert_Event3;,
        Landroid/nt/permission/Dialog$IAlert_Event2;,
        Landroid/nt/permission/Dialog$IAlert_Event1;
    }
.end annotation


# static fields
.field public static message:Ljava/lang/String; = ""

.field public static negative:Ljava/lang/String; = ""

.field public static neutral:Ljava/lang/String; = ""

.field public static positive:Ljava/lang/String; = ""

.field public static title:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetBaseAlertBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v1, Landroid/nt/permission/Dialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    sget-object v1, Landroid/nt/permission/Dialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static Show(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V
    .locals 3

    .line 50
    invoke-static {}, Landroid/nt/permission/Dialog;->GetBaseAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    sget-object v1, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$1;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$1;-><init>(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    new-instance v1, Landroid/nt/permission/Dialog$2;

    invoke-direct {v1, p0}, Landroid/nt/permission/Dialog$2;-><init>(Landroid/nt/permission/Dialog$IAlert_Event1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-static {v0}, Landroid/nt/permission/Dialog;->Show(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public static ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event2;)V
    .locals 3

    .line 67
    invoke-static {}, Landroid/nt/permission/Dialog;->GetBaseAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    sget-object v1, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$3;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$3;-><init>(Landroid/nt/permission/Dialog$IAlert_Event2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    sget-object v1, Landroid/nt/permission/Dialog;->negative:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$4;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$4;-><init>(Landroid/nt/permission/Dialog$IAlert_Event2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v1, Landroid/nt/permission/Dialog$5;

    invoke-direct {v1, p0}, Landroid/nt/permission/Dialog$5;-><init>(Landroid/nt/permission/Dialog$IAlert_Event2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-static {v0}, Landroid/nt/permission/Dialog;->Show(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public static ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event3;)V
    .locals 3

    .line 89
    invoke-static {}, Landroid/nt/permission/Dialog;->GetBaseAlertBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    sget-object v1, Landroid/nt/permission/Dialog;->positive:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$6;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$6;-><init>(Landroid/nt/permission/Dialog$IAlert_Event3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    sget-object v1, Landroid/nt/permission/Dialog;->neutral:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$7;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$7;-><init>(Landroid/nt/permission/Dialog$IAlert_Event3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    sget-object v1, Landroid/nt/permission/Dialog;->negative:Ljava/lang/String;

    new-instance v2, Landroid/nt/permission/Dialog$8;

    invoke-direct {v2, p0}, Landroid/nt/permission/Dialog$8;-><init>(Landroid/nt/permission/Dialog$IAlert_Event3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    new-instance v1, Landroid/nt/permission/Dialog$9;

    invoke-direct {v1, p0}, Landroid/nt/permission/Dialog$9;-><init>(Landroid/nt/permission/Dialog$IAlert_Event3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-static {v0}, Landroid/nt/permission/Dialog;->Show(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
