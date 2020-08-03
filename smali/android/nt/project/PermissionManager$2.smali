.class synthetic Landroid/nt/project/PermissionManager$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nt/project/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$nt$system$Utility$PERMISSION_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    invoke-static {}, Landroid/nt/system/Utility$PERMISSION_TYPE;->values()[Landroid/nt/system/Utility$PERMISSION_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/nt/project/PermissionManager$2;->$SwitchMap$android$nt$system$Utility$PERMISSION_TYPE:[I

    :try_start_0
    sget-object v0, Landroid/nt/project/PermissionManager$2;->$SwitchMap$android$nt$system$Utility$PERMISSION_TYPE:[I

    sget-object v1, Landroid/nt/system/Utility$PERMISSION_TYPE;->READ_EXTERNAL_STORAGE:Landroid/nt/system/Utility$PERMISSION_TYPE;

    invoke-virtual {v1}, Landroid/nt/system/Utility$PERMISSION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/nt/project/PermissionManager$2;->$SwitchMap$android$nt$system$Utility$PERMISSION_TYPE:[I

    sget-object v1, Landroid/nt/system/Utility$PERMISSION_TYPE;->GET_ACCOUNTS:Landroid/nt/system/Utility$PERMISSION_TYPE;

    invoke-virtual {v1}, Landroid/nt/system/Utility$PERMISSION_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
