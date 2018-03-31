.class public Lcom/android/systemui/quicksettings/EqualizerTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "EqualizerTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/EqualizerTile$TileBarGraphRenderer;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentPlayState:I

.field private final mLinkVisualizer:Ljava/lang/Runnable;

.field private mLinked:Z

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mUnlinkVisualizer:Ljava/lang/Runnable;

.field private mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

.field private mWifiDisplayActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 152
    const v0, 0x7f040015

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 51
    new-instance v0, Lcom/android/systemui/quicksettings/EqualizerTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/EqualizerTile$1;-><init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mLinkVisualizer:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/android/systemui/quicksettings/EqualizerTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/EqualizerTile$2;-><init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mUnlinkVisualizer:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lcom/android/systemui/quicksettings/EqualizerTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/EqualizerTile$3;-><init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 154
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mCurrentPlayState:I

    .line 159
    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v0, p1, v1}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mRemoteController:Landroid/media/RemoteController;

    .line 161
    new-instance v0, Lcom/android/systemui/quicksettings/EqualizerTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/EqualizerTile$4;-><init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 168
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/EqualizerTile;)Lcom/android/systemui/quicksettings/QuickTileVisualizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/EqualizerTile;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/EqualizerTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/EqualizerTile;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mLinked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/EqualizerTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/EqualizerTile;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mLinked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/EqualizerTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/EqualizerTile;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/EqualizerTile;->updateState(I)V

    return-void
.end method

.method private isMusicPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    iget v2, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mCurrentPlayState:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 257
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mWifiDisplayActive:Z

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 264
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private updateState(I)V
    .locals 1
    .param p1, "newPlaybackState"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mCurrentPlayState:I

    if-eq p1, v0, :cond_0

    .line 249
    iput p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mCurrentPlayState:I

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/EqualizerTile;->updateResources()V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method protected getImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 218
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 219
    return-void
.end method

.method onPostCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v4, 0x7f08005a

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    iput-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    .line 189
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    invoke-virtual {v3, v6}, Lcom/android/systemui/quicksettings/QuickTileVisualizer;->setEnabled(Z)V

    .line 191
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 192
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 193
    .local v1, "paint":Landroid/graphics/Paint;
    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const v5, 0x7f0b005f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    const v5, 0x7f0b0060

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 201
    const v3, 0x7f0e0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 202
    .local v0, "bars":I
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    new-instance v4, Lcom/android/systemui/quicksettings/EqualizerTile$TileBarGraphRenderer;

    const v5, 0x7f0e0016

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x7f0e0015

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-direct {v4, v0, v1, v5, v6}, Lcom/android/systemui/quicksettings/EqualizerTile$TileBarGraphRenderer;-><init>(ILandroid/graphics/Paint;II)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/quicksettings/QuickTileVisualizer;->addRenderer(Lcom/pheelicks/visualizer/renderer/Renderer;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/EqualizerTile;->updateResources()V

    .line 207
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 209
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 211
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 212
    iget-object v3, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public onPrepare()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mLinkVisualizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 224
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 176
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mWifiDisplayActive:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/EqualizerTile;->updateResources()V

    .line 179
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public onUnprepare()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mUnlinkVisualizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 229
    return-void
.end method

.method public updateQuickSettings()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/EqualizerTile;->isMusicPlaying()Z

    move-result v0

    .line 242
    .local v0, "isMusicPlaying":Z
    iget-object v1, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mVisualizer:Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/quicksettings/QuickTileVisualizer;->setEnabled(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 245
    return-void

    .line 244
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile;->mLabel:Ljava/lang/String;

    .line 234
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 235
    return-void
.end method
