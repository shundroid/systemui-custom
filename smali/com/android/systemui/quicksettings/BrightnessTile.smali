.class public Lcom/android/systemui/quicksettings/BrightnessTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BrightnessTile.java"

# interfaces
.implements Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 35
    new-instance v0, Lcom/android/systemui/quicksettings/BrightnessTile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/quicksettings/BrightnessTile$1;-><init>(Lcom/android/systemui/quicksettings/BrightnessTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/android/systemui/quicksettings/BrightnessTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BrightnessTile$2;-><init>(Lcom/android/systemui/quicksettings/BrightnessTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 52
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 54
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 56
    return-void
.end method

.method private updateTile()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v3, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 84
    .local v1, "mode":I
    if-ne v1, v0, :cond_0

    .line 86
    .local v0, "autoBrightness":Z
    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f02003c

    :goto_1
    iput v2, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mDrawable:I

    .line 89
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BrightnessTile;->mLabel:Ljava/lang/String;

    .line 90
    return-void

    .end local v0    # "autoBrightness":Z
    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    .line 86
    .restart local v0    # "autoBrightness":Z
    :cond_1
    const v2, 0x7f02003b

    goto :goto_1
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateResources()V

    .line 73
    return-void
.end method

.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateResources()V

    .line 78
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTile()V

    .line 61
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 62
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BrightnessTile;->updateTile()V

    .line 67
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 68
    return-void
.end method
