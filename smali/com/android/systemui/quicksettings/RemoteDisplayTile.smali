.class public Lcom/android/systemui/quicksettings/RemoteDisplayTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "RemoteDisplayTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;


# instance fields
.field private mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field private mEnabled:Z

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mRegisterRunnable:Ljava/lang/Runnable;

.field private final mRemoteDisplayRouteCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mUnRegisterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 41
    new-instance v0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile$1;-><init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mRemoteDisplayRouteCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 96
    new-instance v0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile$3;-><init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mRegisterRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile$4;-><init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mUnRegisterRunnable:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/android/systemui/quicksettings/RemoteDisplayTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile$2;-><init>(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 75
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mMediaRouter:Landroid/media/MediaRouter;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)Landroid/media/MediaRouter$SimpleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mRemoteDisplayRouteCallback:Landroid/media/MediaRouter$SimpleCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/RemoteDisplayTile;)Landroid/media/MediaRouter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mMediaRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method private updateRemoteDisplays()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 83
    .local v0, "connectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 85
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mEnabled:Z

    .line 86
    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->updateResources()V

    .line 94
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mEnabled:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mLabel:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mConnectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020041

    :goto_0
    iput v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mDrawable:I

    .line 154
    :goto_1
    return-void

    .line 148
    :cond_0
    const v0, 0x7f020040

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mLabel:Ljava/lang/String;

    .line 152
    const v0, 0x7f02003f

    iput v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mDrawable:I

    goto :goto_1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 137
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->updateRemoteDisplays()V

    .line 117
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 118
    return-void
.end method

.method public onPrepare()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 125
    :cond_0
    return-void
.end method

.method public onUnprepare()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mUnRegisterRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 132
    :cond_0
    return-void
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 159
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 160
    return-void

    .line 158
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;->updateTile()V

    .line 142
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 143
    return-void
.end method
