.class Lnet/agasper/unitynotification/NotificationAction$Creator;
.super Ljava/lang/Object;
.source "NotificationAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/agasper/unitynotification/NotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/agasper/unitynotification/NotificationAction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/agasper/unitynotification/NotificationAction$1;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lnet/agasper/unitynotification/NotificationAction$Creator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lnet/agasper/unitynotification/NotificationAction$Creator;->createFromParcel(Landroid/os/Parcel;)Lnet/agasper/unitynotification/NotificationAction;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/agasper/unitynotification/NotificationAction;
    .locals 3

    .line 77
    new-instance v0, Lnet/agasper/unitynotification/NotificationAction;

    invoke-direct {v0}, Lnet/agasper/unitynotification/NotificationAction;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/agasper/unitynotification/NotificationAction;->setIdentifier(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/agasper/unitynotification/NotificationAction;->setTitle(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/agasper/unitynotification/NotificationAction;->setIcon(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lnet/agasper/unitynotification/NotificationAction;->setForeground(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/agasper/unitynotification/NotificationAction;->setGameObject(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/agasper/unitynotification/NotificationAction;->setHandlerMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lnet/agasper/unitynotification/NotificationAction$Creator;->newArray(I)[Lnet/agasper/unitynotification/NotificationAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/agasper/unitynotification/NotificationAction;
    .locals 0

    .line 89
    new-array p1, p1, [Lnet/agasper/unitynotification/NotificationAction;

    return-object p1
.end method
