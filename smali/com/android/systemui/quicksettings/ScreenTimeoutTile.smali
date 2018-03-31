.class public Lcom/android/systemui/quicksettings/ScreenTimeoutTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ScreenTimeoutTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 47
    new-instance v0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$1;-><init>(Lcom/android/systemui/quicksettings/ScreenTimeoutTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile$2;-><init>(Lcom/android/systemui/quicksettings/ScreenTimeoutTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 63
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 65
    return-void
.end method

.method private getCurrentCMMode()I
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_screentimeout_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getScreenTimeout()I
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private makeTimeoutSummaryString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeout"    # I

    .prologue
    const/16 v3, 0x3c

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, "res":Landroid/content/res/Resources;
    div-int/lit16 p2, p2, 0x3e8

    .line 137
    if-lt p2, v3, :cond_1

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_1

    .line 139
    div-int/lit8 p2, p2, 0x3c

    .line 140
    if-lt p2, v3, :cond_0

    rem-int/lit8 v2, p2, 0x3c

    if-nez v2, :cond_0

    .line 142
    div-int/lit8 p2, p2, 0x3c

    .line 143
    const v1, 0x1120015

    .line 151
    .local v1, "resId":I
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 145
    .end local v1    # "resId":I
    :cond_0
    const v1, 0x1120014

    .restart local v1    # "resId":I
    goto :goto_0

    .line 148
    .end local v1    # "resId":I
    :cond_1
    const v1, 0x1120013

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v0

    .line 86
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->makeTimeoutSummaryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mLabel:Ljava/lang/String;

    .line 87
    const v1, 0x7f02007b

    iput v1, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mDrawable:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "timeout":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateResources()V

    .line 70
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateTile()V

    .line 75
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 76
    return-void
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getScreenTimeout()I

    move-result v1

    .line 92
    .local v1, "screenTimeout":I
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->getCurrentCMMode()I

    move-result v0

    .line 94
    .local v0, "currentMode":I
    const/16 v2, 0x3a98

    if-ge v1, v2, :cond_1

    .line 95
    if-nez v0, :cond_0

    .line 96
    const/16 v1, 0x3a98

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 128
    return-void

    .line 98
    :cond_0
    const/16 v1, 0x7530

    goto :goto_0

    .line 100
    :cond_1
    const/16 v2, 0x7530

    if-ge v1, v2, :cond_3

    .line 101
    if-nez v0, :cond_2

    .line 102
    const v1, 0xea60

    goto :goto_0

    .line 104
    :cond_2
    const/16 v1, 0x7530

    goto :goto_0

    .line 106
    :cond_3
    const v2, 0xea60

    if-ge v1, v2, :cond_5

    .line 107
    if-nez v0, :cond_4

    .line 108
    const v1, 0xea60

    goto :goto_0

    .line 110
    :cond_4
    const v1, 0x1d4c0

    goto :goto_0

    .line 112
    :cond_5
    const v2, 0x1d4c0

    if-ge v1, v2, :cond_7

    .line 113
    if-nez v0, :cond_6

    .line 114
    const v1, 0x493e0

    goto :goto_0

    .line 116
    :cond_6
    const v1, 0x1d4c0

    goto :goto_0

    .line 118
    :cond_7
    const v2, 0x493e0

    if-ge v1, v2, :cond_8

    .line 119
    const v1, 0x493e0

    goto :goto_0

    .line 120
    :cond_8
    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 121
    const/16 v1, 0x7530

    goto :goto_0

    .line 123
    :cond_9
    const/16 v1, 0x3a98

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;->updateTile()V

    .line 81
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 82
    return-void
.end method
