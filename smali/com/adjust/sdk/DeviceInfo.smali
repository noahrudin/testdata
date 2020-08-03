.class Lcom/adjust/sdk/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field abi:Ljava/lang/String;

.field androidId:Ljava/lang/String;

.field apiLevel:Ljava/lang/String;

.field appInstallTime:Ljava/lang/String;

.field appUpdateTime:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field buildName:Ljava/lang/String;

.field clientSdk:Ljava/lang/String;

.field country:Ljava/lang/String;

.field deviceManufacturer:Ljava/lang/String;

.field deviceName:Ljava/lang/String;

.field deviceType:Ljava/lang/String;

.field displayHeight:Ljava/lang/String;

.field displayWidth:Ljava/lang/String;

.field fbAttributionId:Ljava/lang/String;

.field hardwareName:Ljava/lang/String;

.field isTrackingEnabled:Ljava/lang/Boolean;

.field language:Ljava/lang/String;

.field macSha1:Ljava/lang/String;

.field macShortMd5:Ljava/lang/String;

.field private nonGoogleIdsRead:Z

.field osName:Ljava/lang/String;

.field osVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field playAdId:Ljava/lang/String;

.field pluginKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field screenDensity:Ljava/lang/String;

.field screenFormat:Ljava/lang/String;

.field screenSize:Ljava/lang/String;

.field vmInstructionSet:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/adjust/sdk/DeviceInfo;->nonGoogleIdsRead:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v2

    .line 69
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->reloadDeviceIds(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->appVersion:Ljava/lang/String;

    .line 76
    invoke-direct {p0, v0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceType(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->deviceType:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->deviceName:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->osName:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getApiLevel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 82
    invoke-direct {p0, v2}, Lcom/adjust/sdk/DeviceInfo;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adjust/sdk/DeviceInfo;->language:Ljava/lang/String;

    .line 83
    invoke-direct {p0, v2}, Lcom/adjust/sdk/DeviceInfo;->getCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/DeviceInfo;->country:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v0}, Lcom/adjust/sdk/DeviceInfo;->getScreenSize(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adjust/sdk/DeviceInfo;->screenSize:Ljava/lang/String;

    .line 85
    invoke-direct {p0, v0}, Lcom/adjust/sdk/DeviceInfo;->getScreenFormat(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->screenFormat:Ljava/lang/String;

    .line 86
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->screenDensity:Ljava/lang/String;

    .line 87
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->displayWidth:Ljava/lang/String;

    .line 88
    invoke-direct {p0, v1}, Lcom/adjust/sdk/DeviceInfo;->getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->displayHeight:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p2}, Lcom/adjust/sdk/DeviceInfo;->getClientSdk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->fbAttributionId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->pluginKeys:Ljava/util/Map;

    .line 92
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getHardwareName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->hardwareName:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getABI()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->abi:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getBuildName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->buildName:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/adjust/sdk/DeviceInfo;->getVmInstructionSet()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->vmInstructionSet:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getAppInstallTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/adjust/sdk/DeviceInfo;->appInstallTime:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lcom/adjust/sdk/DeviceInfo;->getAppUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/DeviceInfo;->appUpdateTime:Ljava/lang/String;

    return-void
.end method

.method private getABI()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-static {}, Lcom/adjust/sdk/Util;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 308
    aget-object v0, v0, v1

    return-object v0

    .line 305
    :cond_1
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/Util;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApiLevel()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppInstallTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 318
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 321
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAppUpdateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 331
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 334
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 138
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBuildName()Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method private getClientSdk(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "android4.12.4"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "%s@%s"

    invoke-static {p1, v1}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 184
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getDeviceType(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "tablet"

    return-object p1

    :cond_1
    const-string p1, "phone"

    return-object p1
.end method

.method private getDisplayHeight(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 0

    .line 245
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDisplayWidth(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 0

    .line 241
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "aid"

    const/4 v1, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 278
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 280
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 281
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 286
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 291
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private getHardwareName()Ljava/lang/String;
    .locals 1

    .line 192
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method private getLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 180
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    .line 120
    invoke-static {p1, p2}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 121
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Missing permission: ACCESS_WIFI_STATE"

    invoke-interface {p2, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMacSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 260
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ":"

    const-string v1, ""

    .line 269
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Lcom/adjust/sdk/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOsName()Ljava/lang/String;
    .locals 1

    const-string v0, "android"

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 1

    .line 172
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getScreenDensity(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .line 226
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x8c

    if-ge p1, v0, :cond_1

    const-string p1, "low"

    return-object p1

    :cond_1
    const/16 v0, 0xc8

    if-le p1, v0, :cond_2

    const-string p1, "high"

    return-object p1

    :cond_2
    const-string p1, "medium"

    return-object p1
.end method

.method private getScreenFormat(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "long"

    return-object p1

    :cond_1
    const-string p1, "normal"

    return-object p1
.end method

.method private getScreenSize(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "xlarge"

    return-object p1

    :cond_1
    const-string p1, "large"

    return-object p1

    :cond_2
    const-string p1, "normal"

    return-object p1

    :cond_3
    const-string p1, "small"

    return-object p1
.end method

.method private getVmInstructionSet()Ljava/lang/String;
    .locals 1

    .line 312
    invoke-static {}, Lcom/adjust/sdk/Util;->getVmInstructionSet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method reloadDeviceIds(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-static {p1}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->isTrackingEnabled:Ljava/lang/Boolean;

    .line 102
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->playAdId:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->playAdId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adjust/sdk/DeviceInfo;->nonGoogleIdsRead:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 105
    invoke-static {p1, v0}, Lcom/adjust/sdk/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Missing permission: ACCESS_WIFI_STATE"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/adjust/sdk/DeviceInfo;->getMacSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/DeviceInfo;->macSha1:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v0}, Lcom/adjust/sdk/DeviceInfo;->getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/DeviceInfo;->macShortMd5:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/adjust/sdk/DeviceInfo;->nonGoogleIdsRead:Z

    :cond_1
    return-void
.end method
