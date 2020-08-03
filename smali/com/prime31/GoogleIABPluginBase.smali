.class public Lcom/prime31/GoogleIABPluginBase;
.super Ljava/lang/Object;
.source "GoogleIABPluginBase.java"


# static fields
.field protected static final MANAGER_NAME:Ljava/lang/String; = "GoogleIABManager"

.field protected static final TAG:Ljava/lang/String; = "Prime31"

.field private static _instance:Lcom/prime31/GoogleIABPlugin;


# instance fields
.field public _activity:Landroid/app/Activity;

.field protected _layout:Landroid/widget/LinearLayout;

.field private _unityPlayerActivityField:Ljava/lang/reflect/Field;

.field private _unityPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private _unitySendMessageMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "Prime31"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    .line 43
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerClass:Ljava/lang/Class;

    .line 44
    iget-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerClass:Ljava/lang/Class;

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    .line 45
    iget-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerClass:Ljava/lang/Class;

    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unitySendMessageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unkown exception occurred locating getActivity(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find currentActivity field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not find UnityPlayer class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static instance()Lcom/prime31/GoogleIABPlugin;
    .locals 1

    .line 31
    sget-object v0, Lcom/prime31/GoogleIABPluginBase;->_instance:Lcom/prime31/GoogleIABPlugin;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/prime31/GoogleIABPlugin;

    invoke-direct {v0}, Lcom/prime31/GoogleIABPlugin;-><init>()V

    sput-object v0, Lcom/prime31/GoogleIABPluginBase;->_instance:Lcom/prime31/GoogleIABPlugin;

    .line 34
    :cond_0
    sget-object v0, Lcom/prime31/GoogleIABPluginBase;->_instance:Lcom/prime31/GoogleIABPlugin;

    return-object v0
.end method


# virtual methods
.method protected UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "could not find UnitySendMessage method: "

    if-nez p2, :cond_0

    const-string p2, ""

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unitySendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const-string v3, "Prime31"

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 94
    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GoogleIABManager"

    aput-object v7, v5, v6

    aput-object p1, v5, v2

    const/4 p1, 0x2

    aput-object p2, v5, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/prime31/GoogleIABPluginBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "UnitySendMessage:\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnitySendMessage: GoogleIABManager, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 4

    const-string v0, "Prime31"

    .line 64
    iget-object v1, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerActivityField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/prime31/GoogleIABPluginBase;->_unityPlayerClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v2, "Something has gone terribly wrong. The Unity Activity does not exist. This could be due to a low memory situation"

    .line 70
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error getting currentActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/prime31/GoogleIABPluginBase;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method protected persist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v3, "persist"

    invoke-static {v0, v3, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABPluginBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "P31Preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error in persist: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Prime31"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/prime31/GoogleIABPluginBase;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method protected runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/prime31/GoogleIABPluginBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/prime31/GoogleIABPluginBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/prime31/GoogleIABPluginBase$1;-><init>(Lcom/prime31/GoogleIABPluginBase;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected unpersist(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "unpersist"

    invoke-static {v0, v3, v1}, Lcom/prime31/IABConstants;->logEntering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/prime31/GoogleIABPluginBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "P31Preferences"

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 172
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "error in unpersist: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Prime31"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
