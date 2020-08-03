.class final Landroid/nt/permission/Dialog$1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nt/permission/Dialog;->ShowAlertDialog(Landroid/nt/permission/Dialog$IAlert_Event1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Landroid/nt/permission/Dialog$IAlert_Event1;


# direct methods
.method constructor <init>(Landroid/nt/permission/Dialog$IAlert_Event1;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroid/nt/permission/Dialog$1;->val$event:Landroid/nt/permission/Dialog$IAlert_Event1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 54
    iget-object p1, p0, Landroid/nt/permission/Dialog$1;->val$event:Landroid/nt/permission/Dialog$IAlert_Event1;

    invoke-interface {p1}, Landroid/nt/permission/Dialog$IAlert_Event1;->OnPositive()V

    return-void
.end method
