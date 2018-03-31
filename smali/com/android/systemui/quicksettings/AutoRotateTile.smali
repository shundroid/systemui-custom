.class public Lcom/android/systemui/quicksettings/AutoRotateTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AutoRotateTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/AutoRotateTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AutoRotateTile$1;-><init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 41
    new-instance v0, Lcom/android/systemui/quicksettings/AutoRotateTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AutoRotateTile$2;-><init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 48
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/AutoRotateTile;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->isAutoRotateEnabled()Z

    move-result v0

    return v0
.end method

.method private isAutoRotateEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->isAutoRotateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const v0, 0x7f020035

    iput v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mDrawable:I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mLabel:Ljava/lang/String;

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const v0, 0x7f020079

    iput v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mDrawable:I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateResources()V

    .line 67
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateTile()V

    .line 61
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 62
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AutoRotateTile;->updateTile()V

    .line 55
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 56
    return-void
.end method
