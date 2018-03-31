.class public Lcom/android/systemui/quicksettings/ExpandedDesktopTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ExpandedDesktopTile.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    .line 37
    new-instance v1, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$1;-><init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v1, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile$2;-><init>(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 58
    const-string v1, "expanded_desktop_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    .local v0, "stateUri":Landroid/net/Uri;
    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/ExpandedDesktopTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    return v0
.end method

.method private declared-synchronized updateTile()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_desktop_state"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 78
    const v0, 0x7f02005e

    iput v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mDrawable:I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    const v0, 0x7f02005d

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mDrawable:I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->mLabel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateResources()V

    .line 89
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateTile()V

    .line 65
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 66
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;->updateTile()V

    .line 71
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 72
    return-void
.end method
