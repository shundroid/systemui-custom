.class public Lcom/android/systemui/quicksettings/AirplaneModeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "AirplaneModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mEnabled:Z

    .line 38
    iput-object p3, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 40
    new-instance v0, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile$1;-><init>(Lcom/android/systemui/quicksettings/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile$2;-><init>(Lcom/android/systemui/quicksettings/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/AirplaneModeTile;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mEnabled:Z

    return v0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mLabel:Ljava/lang/String;

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020033

    :goto_0
    iput v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mDrawable:I

    .line 103
    return-void

    .line 102
    :cond_0
    const v0, 0x7f020032

    goto :goto_0
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mEnabled:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateResources()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 72
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 73
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
    .line 92
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AirplaneModeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateTile()V

    .line 66
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 67
    return-void
.end method

.method public onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "wifiSignalIconId"    # I
    .param p3, "activityIn"    # Z
    .param p4, "activityOut"    # Z
    .param p5, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/AirplaneModeTile;->updateTile()V

    .line 78
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 79
    return-void
.end method
