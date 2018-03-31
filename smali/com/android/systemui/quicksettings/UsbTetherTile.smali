.class public Lcom/android/systemui/quicksettings/UsbTetherTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "UsbTetherTile.java"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mMassStorageActive:Z

.field private mUsbConnected:Z

.field private mUsbTethered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mCm:Landroid/net/ConnectivityManager;

    .line 41
    new-instance v0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UsbTetherTile$1;-><init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Lcom/android/systemui/quicksettings/UsbTetherTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UsbTetherTile$2;-><init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 59
    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 60
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 61
    const-string v0, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 62
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/UsbTetherTile;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/UsbTetherTile;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/UsbTetherTile;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/UsbTetherTile;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private updateState()V
    .locals 11

    .prologue
    .line 116
    iget-object v10, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "usbRegexes":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "tethered":[Ljava/lang/String;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 120
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 121
    .local v7, "s":Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v1, v2

    .line 122
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    .line 120
    .end local v6    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 121
    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    .restart local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "regex":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .restart local v3    # "i$":I
    :cond_2
    return-void
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateState()V

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    if-nez v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbTethered:Z

    if-eqz v0, :cond_0

    .line 103
    const v0, 0x7f0200ab

    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    const v0, 0x7f0200a9

    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    const v0, 0x7f0200aa

    iput v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mDrawable:I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateTile()V

    .line 83
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 84
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "connected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateResources()V

    .line 78
    return-void

    .line 71
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mMassStorageActive:Z

    goto :goto_0
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile;->mUsbConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 89
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 90
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->updateTile()V

    .line 95
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 96
    return-void
.end method
