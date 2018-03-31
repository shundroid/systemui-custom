.class public Lcom/android/systemui/quicksettings/PreferencesTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "PreferencesTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 31
    new-instance v0, Lcom/android/systemui/quicksettings/PreferencesTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/PreferencesTile$1;-><init>(Lcom/android/systemui/quicksettings/PreferencesTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    const v0, 0x7f02007c

    :try_start_0
    iput v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mDrawable:I

    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/PreferencesTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PreferencesTile;->updateTile()V

    .line 42
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 43
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PreferencesTile;->updateTile()V

    .line 48
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 49
    return-void
.end method
