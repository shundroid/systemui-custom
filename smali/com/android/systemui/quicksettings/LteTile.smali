.class public Lcom/android/systemui/quicksettings/LteTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "LteTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 36
    new-instance v0, Lcom/android/systemui/quicksettings/LteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/LteTile$1;-><init>(Lcom/android/systemui/quicksettings/LteTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/android/systemui/quicksettings/LteTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/LteTile$2;-><init>(Lcom/android/systemui/quicksettings/LteTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 51
    const-string v0, "preferred_network_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/LteTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/LteTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->toggleLteState()V

    return-void
.end method

.method private getCurrentPreferredNetworkMode()I
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private toggleLteState()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->toggleLTE(Z)V

    .line 96
    return-void
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->getCurrentPreferredNetworkMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :pswitch_0
    const v0, 0x7f020067

    iput v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mDrawable:I

    .line 87
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mLabel:Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 82
    :pswitch_1
    const v0, 0x7f020068

    iput v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mDrawable:I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/LteTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateResources()V

    .line 64
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateTile()V

    .line 58
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 59
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/LteTile;->updateTile()V

    .line 69
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 70
    return-void
.end method
