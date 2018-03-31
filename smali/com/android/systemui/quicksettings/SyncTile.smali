.class public Lcom/android/systemui/quicksettings/SyncTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "SyncTile.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$1;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/quicksettings/SyncTile;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$2;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/android/systemui/quicksettings/SyncTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SyncTile$3;-><init>(Lcom/android/systemui/quicksettings/SyncTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/SyncTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/SyncTile;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/SyncTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/SyncTile;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->isSyncEnabled()Z

    move-result v0

    return v0
.end method

.method private isSyncEnabled()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const v0, 0x7f0200a3

    iput v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mDrawable:I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mLabel:Ljava/lang/String;

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const v0, 0x7f0200a2

    iput v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mDrawable:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method onPostCreate()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->updateTile()V

    .line 76
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 78
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SyncTile;->mSyncObserverHandle:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SyncTile;->updateTile()V

    .line 94
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 95
    return-void
.end method
