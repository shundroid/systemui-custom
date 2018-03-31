.class public Lcom/android/systemui/cm/ActionTarget;
.super Ljava/lang/Object;
.source "ActionTarget.java"


# instance fields
.field private mAm:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInjectKeyCode:I

.field final mInjectKeyDownRunnable:Ljava/lang/Runnable;

.field final mInjectKeyUpRunnable:Ljava/lang/Runnable;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field final mKillRunnable:Ljava/lang/Runnable;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 242
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$1;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$2;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$3;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    .line 292
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$4;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cm/ActionTarget;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/cm/ActionTarget;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/cm/ActionTarget;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/cm/ActionTarget;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/cm/ActionTarget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cm/ActionTarget;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissKeyguard()V
    .locals 1

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 209
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method private injectKeyDelayed(I)V
    .locals 4
    .param p1, "keycode"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyCode:I

    .line 234
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mInjectKeyUpRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method private switchToNormalRingerMode()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 227
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 229
    .local v0, "tg":Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 230
    return-void
.end method

.method private switchToSilentMode()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 215
    return-void
.end method

.method private switchToVibrateMode()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 220
    iget-object v1, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 221
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 222
    return-void
.end method

.method private takeScreenshot()V
    .locals 7

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 307
    monitor-exit v3

    .line 364
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/systemui/cm/ActionTarget$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/cm/ActionTarget$5;-><init>(Lcom/android/systemui/cm/ActionTarget;)V

    .line 359
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    iput-object v0, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 361
    iget-object v2, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/cm/ActionTarget;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public launchAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "none"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 196
    :goto_0
    return v5

    .line 89
    :cond_1
    const-string v7, "recents"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->dismissKeyguard()V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v6

    goto :goto_0

    .line 98
    :cond_2
    const-string v7, "home"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v7, "back"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v7, "menu"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 105
    const/16 v6, 0x52

    invoke-direct {p0, v6}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v7, "standby"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 108
    const/16 v6, 0x1a

    invoke-direct {p0, v6}, Lcom/android/systemui/cm/ActionTarget;->injectKeyDelayed(I)V

    goto :goto_0

    .line 110
    :cond_6
    const-string v7, "imeSwitcher"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 111
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_7
    const-string v7, "screenshot"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->takeScreenshot()V

    goto :goto_0

    .line 116
    :cond_8
    const-string v7, "assist"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 117
    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 118
    .local v2, "isKeyguardShowing":Z
    if-eqz v2, :cond_9

    .line 120
    iget-object v5, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->showAssistant()V

    move v5, v6

    .line 121
    goto/16 :goto_0

    .line 125
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const-string v8, "search"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 127
    .local v4, "searchManager":Landroid/app/SearchManager;
    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-virtual {v4, v7, v5, v8}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_a

    move v5, v6

    .line 129
    goto/16 :goto_0

    .line 131
    :cond_a
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    :try_start_1
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->dismissKeyguard()V

    .line 134
    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, p2, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActionTarget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity not found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 137
    goto/16 :goto_0

    .line 141
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isKeyguardShowing":Z
    .end local v4    # "searchManager":Landroid/app/SearchManager;
    :cond_b
    const-string v7, "killTask"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 142
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mKillRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 144
    :cond_c
    const-string v7, "ringVibrate"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 145
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eq v6, v5, :cond_d

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_0

    .line 148
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v7, "ringSilent"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 153
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_f

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_0

    .line 156
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    .line 160
    :cond_10
    const-string v7, "ringVibrateSilent"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 161
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 162
    .local v3, "ringerMode":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_11

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToVibrateMode()V

    goto/16 :goto_0

    .line 164
    :cond_11
    if-ne v3, v5, :cond_12

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToSilentMode()V

    goto/16 :goto_0

    .line 167
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->switchToNormalRingerMode()V

    goto/16 :goto_0

    .line 171
    .end local v3    # "ringerMode":I
    :cond_13
    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 173
    :try_start_2
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 174
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 179
    :cond_14
    const-string v7, "torch"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v6, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_15
    const/4 v7, 0x0

    :try_start_3
    invoke-static {p1, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 186
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/cm/ActionTarget;->dismissKeyguard()V

    .line 188
    iget-object v7, p0, Lcom/android/systemui/cm/ActionTarget;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 190
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v5, "ActionTarget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URISyntaxException: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_1
    move v5, v6

    .line 196
    goto/16 :goto_0

    .line 192
    :catch_4
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActionTarget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFound: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
