.class public Lcom/growthpush/view/AlertActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AlertActivity.java"

# interfaces
.implements Lcom/growthpush/view/DialogCallback;


# static fields
.field protected static final WAKE_LOCK_TIMEROUT:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;
    .locals 2

    .line 171
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    instance-of v0, v0, Lcom/growthpush/handler/BaseReceiveHandler;

    if-nez v0, :cond_1

    return-object v1

    .line 177
    :cond_1
    invoke-static {}, Lcom/growthpush/GrowthPush;->getInstance()Lcom/growthpush/GrowthPush;

    move-result-object v0

    invoke-virtual {v0}, Lcom/growthpush/GrowthPush;->getReceiveHandler()Lcom/growthpush/handler/ReceiveHandler;

    move-result-object v0

    check-cast v0, Lcom/growthpush/handler/BaseReceiveHandler;

    .line 178
    invoke-virtual {v0}, Lcom/growthpush/handler/BaseReceiveHandler;->getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected manageKeyguard()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "keyguard"

    .line 106
    invoke-virtual {p0, v0}, Lcom/growthpush/view/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 107
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 110
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 112
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    :goto_0
    return-void

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected managePower()V
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/growthbeat/utils/SystemServiceUtils;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1000000a

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 135
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/growthpush/view/AlertActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/growthpush/view/AlertActivity$2;-><init>(Lcom/growthpush/view/AlertActivity;Landroid/os/PowerManager$WakeLock;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catch_0
    return-void
.end method

.method public onClickNegative(Landroid/content/DialogInterface;)V
    .locals 0

    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 166
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->finish()V

    return-void
.end method

.method public onClickPositive(Landroid/content/DialogInterface;)V
    .locals 2

    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    invoke-direct {p0}, Lcom/growthpush/view/AlertActivity;->getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/growthpush/view/AlertActivity;->getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/growthpush/handler/BaseReceiveHandler$Callback;->onOpen(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const-string p1, "notification"

    .line 158
    invoke-virtual {p0, p1}, Lcom/growthpush/view/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrowthPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/growthpush/view/AlertActivity;->requestWindowFeature(I)Z

    const v0, 0x103000f

    .line 34
    invoke-virtual {p0, v0}, Lcom/growthpush/view/AlertActivity;->setTheme(I)V

    .line 36
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->finish()V

    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/growthpush/view/DialogType;->none:Lcom/growthpush/view/DialogType;

    .line 45
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialogType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growthpush/view/DialogType;->valueOf(Ljava/lang/String;)Lcom/growthpush/view/DialogType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    :cond_2
    sget-object v1, Lcom/growthpush/view/AlertActivity$3;->$SwitchMap$com$growthpush$view$DialogType:[I

    invoke-virtual {v0}, Lcom/growthpush/view/DialogType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, p1, :cond_4

    .line 59
    invoke-direct {p0}, Lcom/growthpush/view/AlertActivity;->getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 60
    invoke-direct {p0}, Lcom/growthpush/view/AlertActivity;->getCallback()Lcom/growthpush/handler/BaseReceiveHandler$Callback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/growthpush/handler/BaseReceiveHandler$Callback;->onOpen(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->finish()V

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->showDialog()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected showDialog()V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->manageKeyguard()V

    .line 81
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->managePower()V

    .line 83
    new-instance v0, Lcom/growthpush/view/AlertFragment;

    invoke-direct {v0}, Lcom/growthpush/view/AlertFragment;-><init>()V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/growthpush/view/AlertFragment;->setCancelable(Z)V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/growthpush/view/AlertFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/growthpush/view/AlertActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/growthpush/view/AlertActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/growthpush/view/AlertActivity$1;-><init>(Lcom/growthpush/view/AlertActivity;Lcom/growthpush/view/AlertFragment;)V

    invoke-virtual {p0, v1}, Lcom/growthpush/view/AlertActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
