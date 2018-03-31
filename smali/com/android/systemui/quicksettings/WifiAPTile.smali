.class public Lcom/android/systemui/quicksettings/WifiAPTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "WifiAPTile.java"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 38
    new-instance v0, Lcom/android/systemui/quicksettings/WifiAPTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WifiAPTile$1;-><init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Lcom/android/systemui/quicksettings/WifiAPTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WifiAPTile$2;-><init>(Lcom/android/systemui/quicksettings/WifiAPTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 64
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/WifiAPTile;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/WifiAPTile;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/WifiAPTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/WifiAPTile;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/WifiAPTile;->setSoftapEnabled(Z)V

    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    iget-object v6, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 106
    .local v3, "wifiState":I
    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    :cond_0
    move v1, v5

    .line 109
    .local v1, "wifiOn":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 110
    iget-object v6, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 111
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 120
    if-nez p1, :cond_2

    .line 121
    const-string v6, "wifi_saved_state"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, "wifiSavedState":I
    if-eqz v2, :cond_2

    .line 123
    iget-object v6, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 124
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    .end local v2    # "wifiSavedState":I
    :cond_2
    return-void

    .end local v1    # "wifiOn":Z
    :cond_3
    move v1, v4

    .line 106
    goto :goto_0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    const v0, 0x7f0200b8

    iput v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mDrawable:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mLabel:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mLabel:Ljava/lang/String;

    .line 89
    const v0, 0x7f0200b9

    iput v0, p0, Lcom/android/systemui/quicksettings/WifiAPTile;->mDrawable:I

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateTile()V

    .line 75
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 76
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateResources()V

    .line 70
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/WifiAPTile;->updateTile()V

    .line 81
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 82
    return-void
.end method
