.class public Lcom/android/systemui/quicksettings/BatteryTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private mBatteryLevel:I

.field private mBatteryView:Lcom/android/systemui/BatteryMeterView;

.field private mController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mPluggedIn:Z

.field private mPresent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 42
    const v0, 0x7f040012

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/quicksettings/BatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;I)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p4, "resourceId"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryLevel:I

    .line 49
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 51
    new-instance v0, Lcom/android/systemui/quicksettings/BatteryTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BatteryTile$1;-><init>(Lcom/android/systemui/quicksettings/BatteryTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 57
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v3, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mPresent:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 117
    iget v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryLevel:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_1
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 120
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mPluggedIn:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0900f0

    .line 123
    .local v0, "resId":I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 116
    .end local v0    # "resId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 120
    :cond_2
    const v0, 0x7f09006b

    goto :goto_2
.end method


# virtual methods
.method protected getBatteryMeterView()Lcom/android/systemui/BatteryMeterView;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    return-object v0
.end method

.method public onBatteryLevelChanged(ZIZI)V
    .locals 0
    .param p1, "present"    # Z
    .param p2, "level"    # I
    .param p3, "pluggedIn"    # Z
    .param p4, "status"    # I

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mPresent:Z

    .line 87
    iput p2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryLevel:I

    .line 88
    iput-boolean p3, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mPluggedIn:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateResources()V

    .line 90
    return-void
.end method

.method public onBatteryMeterModeChanged(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    .line 95
    return-void
.end method

.method public onBatteryMeterShowPercent(Z)V
    .locals 1
    .param p1, "showPercent"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->isRibbonMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setShowPercent(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 81
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 82
    return-void
.end method

.method onPostCreate()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateTile()V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->getBatteryMeterView()Lcom/android/systemui/BatteryMeterView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V

    .line 65
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->isRibbonMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_battery_show_percent"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 69
    .local v0, "showPercent":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/BatteryMeterView;->setShowPercent(Z)V

    .line 74
    .end local v0    # "showPercent":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 75
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 76
    return-void

    :cond_0
    move v0, v1

    .line 66
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BatteryTile;->mBatteryView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/BatteryMeterView;->setShowPercent(Z)V

    goto :goto_1
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BatteryTile;->updateTile()V

    .line 112
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 113
    return-void
.end method
