.class public Lcom/android/systemui/quicksettings/ThemesTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ThemesTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/ThemesTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ThemesTile$1;-><init>(Lcom/android/systemui/quicksettings/ThemesTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ThemesTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ThemesTile;->updateResources()V

    .line 46
    return-void
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0200a4

    iput v0, p0, Lcom/android/systemui/quicksettings/ThemesTile;->mDrawable:I

    .line 61
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ThemesTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ThemesTile;->mLabel:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ThemesTile;->updateResources()V

    .line 57
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ThemesTile;->updateTile()V

    .line 51
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 52
    return-void
.end method
