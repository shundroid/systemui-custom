.class public Lcom/android/systemui/quicksettings/HeadsUpTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "HeadsUpTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 32
    new-instance v0, Lcom/android/systemui/quicksettings/HeadsUpTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/HeadsUpTile$1;-><init>(Lcom/android/systemui/quicksettings/HeadsUpTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 41
    const-string v0, "heads_up_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/HeadsUpTile;->updateResources()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/HeadsUpTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/HeadsUpTile;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/HeadsUpTile;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/HeadsUpTile;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x7f020060

    iput v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mDrawable:I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mLabel:Ljava/lang/String;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const v0, 0x7f02005f

    iput v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mDrawable:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/HeadsUpTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/HeadsUpTile;->updateResources()V

    .line 55
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/HeadsUpTile;->updateTile()V

    .line 49
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 50
    return-void
.end method
