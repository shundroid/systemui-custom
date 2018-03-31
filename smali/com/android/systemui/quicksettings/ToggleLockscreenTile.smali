.class public Lcom/android/systemui/quicksettings/ToggleLockscreenTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ToggleLockscreenTile.java"

# interfaces
.implements Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;


# instance fields
.field private mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 33
    invoke-static {p1}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->getInstance(Landroid/content/Context;)Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->addListener(Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;)V

    .line 36
    new-instance v0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$1;-><init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile$2;-><init>(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->updateResources()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/ToggleLockscreenTile;)Lcom/android/systemui/quicksettings/LockscreenStateChanger;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->removeListener(Lcom/android/systemui/quicksettings/LockscreenStateChanger$LockStateChangeListener;)V

    .line 55
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 56
    return-void
.end method

.method public onLockStateChange(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->updateResources()V

    .line 69
    return-void
.end method

.method public updateResources()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLabel:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mLockscreenChanger:Lcom/android/systemui/quicksettings/LockscreenStateChanger;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/LockscreenStateChanger;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020065

    :goto_0
    iput v0, p0, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;->mDrawable:I

    .line 63
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 64
    return-void

    .line 61
    :cond_0
    const v0, 0x7f020066

    goto :goto_0
.end method
