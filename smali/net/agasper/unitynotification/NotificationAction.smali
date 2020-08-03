.class public Lnet/agasper/unitynotification/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/agasper/unitynotification/NotificationAction$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR:Lnet/agasper/unitynotification/NotificationAction$Creator;


# instance fields
.field private foreground:Z

.field private gameObject:Ljava/lang/String;

.field private handlerMethod:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lnet/agasper/unitynotification/NotificationAction$Creator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/agasper/unitynotification/NotificationAction$Creator;-><init>(Lnet/agasper/unitynotification/NotificationAction$1;)V

    sput-object v0, Lnet/agasper/unitynotification/NotificationAction;->CREATOR:Lnet/agasper/unitynotification/NotificationAction$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGameObject()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/agasper/unitynotification/NotificationAction;->gameObject:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerMethod()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lnet/agasper/unitynotification/NotificationAction;->handlerMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lnet/agasper/unitynotification/NotificationAction;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/agasper/unitynotification/NotificationAction;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/agasper/unitynotification/NotificationAction;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lnet/agasper/unitynotification/NotificationAction;->foreground:Z

    return v0
.end method

.method public setForeground(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lnet/agasper/unitynotification/NotificationAction;->foreground:Z

    return-void
.end method

.method public setGameObject(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lnet/agasper/unitynotification/NotificationAction;->gameObject:Ljava/lang/String;

    return-void
.end method

.method public setHandlerMethod(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lnet/agasper/unitynotification/NotificationAction;->handlerMethod:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lnet/agasper/unitynotification/NotificationAction;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/agasper/unitynotification/NotificationAction;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lnet/agasper/unitynotification/NotificationAction;->title:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->getIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->isForeground()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->getGameObject()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lnet/agasper/unitynotification/NotificationAction;->getHandlerMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
