.class public Lcom/android/systemui/quicksettings/WiFiTile;
.super Lcom/android/systemui/quicksettings/NetworkTile;
.source "WiFiTile.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mWifiConnected:Z

.field private mWifiNotConnected:Z

.field private mWifiSignalIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 34
    const v0, 0x7f04001c

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/quicksettings/NetworkTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 36
    new-instance v0, Lcom/android/systemui/quicksettings/WiFiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WiFiTile$1;-><init>(Lcom/android/systemui/quicksettings/WiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/android/systemui/quicksettings/WiFiTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/WiFiTile$2;-><init>(Lcom/android/systemui/quicksettings/WiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 50
    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method public onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "wifiSignalIconId"    # I
    .param p3, "activityIn"    # Z
    .param p4, "activityOut"    # Z
    .param p5, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p6, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiConnected:Z

    .line 71
    if-lez p2, :cond_1

    if-nez p6, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiNotConnected:Z

    .line 72
    iput p2, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiSignalIconId:I

    .line 73
    iput-object p6, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/quicksettings/WiFiTile;->setActivity(ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/WiFiTile;->updateResources()V

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1
.end method

.method protected updateTile()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiSignalIconId:I

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 56
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mWifiNotConnected:Z

    if-eqz v0, :cond_1

    .line 58
    const v0, 0x7f0200b3

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mDrawable:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/WiFiTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method
