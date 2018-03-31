.class public Lcom/android/systemui/quicksettings/VolumeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "VolumeTile.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    new-instance v0, Lcom/android/systemui/quicksettings/VolumeTile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/quicksettings/VolumeTile$1;-><init>(Lcom/android/systemui/quicksettings/VolumeTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/VolumeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/VolumeTile$2;-><init>(Lcom/android/systemui/quicksettings/VolumeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 50
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 51
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/VolumeTile;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/VolumeTile;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private updateTile()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 73
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 74
    .local v3, "value":I
    mul-int/lit8 v4, v3, 0x64

    div-int v0, v4, v1

    .line 75
    .local v0, "level":I
    iget-object v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 76
    .local v2, "silent":Z
    :goto_0
    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 77
    :cond_0
    const v4, 0x7f0200ae

    iput v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mContext:Landroid/content/Context;

    const v5, 0x7f09002b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mLabel:Ljava/lang/String;

    .line 88
    return-void

    .line 75
    .end local v2    # "silent":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    .restart local v2    # "silent":Z
    :cond_2
    const/16 v4, 0x19

    if-gt v0, v4, :cond_3

    .line 79
    const v4, 0x7f0200af

    iput v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    goto :goto_1

    .line 80
    :cond_3
    const/16 v4, 0x32

    if-gt v0, v4, :cond_4

    .line 81
    const v4, 0x7f0200b0

    iput v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    goto :goto_1

    .line 82
    :cond_4
    const/16 v4, 0x4b

    if-gt v0, v4, :cond_5

    .line 83
    const v4, 0x7f0200b1

    iput v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    goto :goto_1

    .line 85
    :cond_5
    const v4, 0x7f0200b2

    iput v4, p0, Lcom/android/systemui/quicksettings/VolumeTile;->mDrawable:I

    goto :goto_1
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateTile()V

    .line 62
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 63
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateResources()V

    .line 57
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateTile()V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/VolumeTile;->updateQuickSettings()V

    .line 69
    return-void
.end method
