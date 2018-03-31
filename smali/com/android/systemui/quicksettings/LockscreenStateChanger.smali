.class public Lcom/android/systemui/quicksettings/LockscreenStateChanger;
.super Ljava/lang/Object;
.source "LockscreenStateChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/quicksettings/LockscreenStateChanger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardBound:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLockscreenDisabled:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Lcom/android/systemui/quicksettings/LockscreenStateChanger$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger$1;-><init>(Lcom/android/systemui/quicksettings/LockscreenStateChanger;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 76
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    const-string v1, "LockscreenTile"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mContext:Landroid/content/Context;

    const-string v2, "quicksettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mPrefs:Landroid/content/SharedPreferences;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "lockscreen_disabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/LockscreenStateChanger;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/LockscreenStateChanger;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->updateBasedOnIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/quicksettings/LockscreenStateChanger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->sInstance:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->sInstance:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->sInstance:Lcom/android/systemui/quicksettings/LockscreenStateChanger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private informListeners()V
    .locals 3

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;

    .line 131
    .local v1, "listener":Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;
    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;->onLockStateChange(Z)V

    goto :goto_0

    .line 133
    .end local v1    # "listener":Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.internal.action.KEYGUARD_SERVICE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, v1}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->updateBasedOnIntent(Landroid/content/Intent;)V

    .line 88
    :cond_0
    return-void
.end method

.method private updateBasedOnIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const-string v0, "active"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mKeyguardBound:Z

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->updateForCurrentState()V

    .line 68
    return-void
.end method

.method private declared-synchronized updateForCurrentState()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mKeyguardBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 126
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->informListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->registerReceiver()V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->updateForCurrentState()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDisabled()Z
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->toggleState()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toggleState()V
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lockscreen_disabled"

    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->mLockscreenDisabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->updateForCurrentState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
