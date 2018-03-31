.class public Lcom/android/systemui/quicksettings/AlarmTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AlarmTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 37
    new-instance v0, Lcom/android/systemui/quicksettings/AlarmTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AlarmTile$1;-><init>(Lcom/android/systemui/quicksettings/AlarmTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 44
    const-string v0, "next_alarm_formatted"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 46
    return-void
.end method

.method private updateTile()V
    .locals 3

    .prologue
    .line 72
    const v0, 0x7f020034

    iput v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mDrawable:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mLabel:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateResources()V

    .line 63
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateTile()V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 52
    return-void
.end method

.method public updateQuickSettings()V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v0, p0, Lcom/android/systemui/quicksettings/AlarmTile;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 68
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AlarmTile;->updateTile()V

    .line 57
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 58
    return-void
.end method
