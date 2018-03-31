.class public Lcom/android/systemui/quicksettings/NetworkAdbTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "NetworkAdbTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 38
    new-instance v0, Lcom/android/systemui/quicksettings/NetworkAdbTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile$1;-><init>(Lcom/android/systemui/quicksettings/NetworkAdbTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v0, Lcom/android/systemui/quicksettings/NetworkAdbTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile$2;-><init>(Lcom/android/systemui/quicksettings/NetworkAdbTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 54
    const-string v0, "adb_port"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile;->updateResources()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/NetworkAdbTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/NetworkAdbTile;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_port"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateTile()V
    .locals 5

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 72
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 74
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 77
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mLabel:Ljava/lang/String;

    .line 82
    .end local v0    # "address":Ljava/net/InetAddress;
    :goto_0
    const v3, 0x7f02006a

    iput v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mDrawable:I

    .line 88
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    return-void

    .line 80
    .restart local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mContext:Landroid/content/Context;

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 85
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mContext:Landroid/content/Context;

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mLabel:Ljava/lang/String;

    .line 86
    const v3, 0x7f020069

    iput v3, p0, Lcom/android/systemui/quicksettings/NetworkAdbTile;->mDrawable:I

    goto :goto_1
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile;->updateResources()V

    .line 67
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/NetworkAdbTile;->updateTile()V

    .line 61
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 62
    return-void
.end method
