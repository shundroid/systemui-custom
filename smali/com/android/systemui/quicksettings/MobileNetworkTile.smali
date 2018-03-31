.class public Lcom/android/systemui/quicksettings/MobileNetworkTile;
.super Lcom/android/systemui/quicksettings/NetworkTile;
.source "MobileNetworkTile.java"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataContentDescription:Ljava/lang/String;

.field private mDataTypeIconId:I

.field private mDescription:Ljava/lang/String;

.field private mEnabled:Z

.field private mSignalContentDescription:Ljava/lang/String;

.field private mWifiOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    const/4 v1, 0x0

    .line 48
    const v0, 0x7f040019

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/quicksettings/NetworkTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 39
    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    .line 42
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mWifiOn:Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    .line 52
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile$1;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile$2;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/MobileNetworkTile;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTile;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 163
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "aux":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getImageView()Landroid/view/View;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    :goto_1
    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDrawable:I

    .line 110
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mSignalContentDescription:Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mSignalContentDescription:Ljava/lang/String;

    .line 115
    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mWifiOn:Z

    if-nez v1, :cond_3

    .line 116
    iput p4, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    .line 123
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    .line 124
    invoke-static {p8}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDescription:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p5, p6}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->setActivity(ZZ)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateResources()V

    goto :goto_0

    .line 107
    :cond_1
    const v1, 0x7f02009e

    goto :goto_1

    .line 110
    :cond_2
    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    goto :goto_3

    .line 120
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    goto :goto_3
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
    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mWifiOn:Z

    .line 94
    return-void
.end method

.method public setImageMargins(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "image":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method updateOverlayImage(I)V
    .locals 3
    .param p1, "dataTypeIconId"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, "iov":Landroid/widget/ImageView;
    if-lez p1, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 155
    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method updateQuickSettings()V
    .locals 6

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/systemui/quicksettings/NetworkTile;->updateQuickSettings()V

    .line 143
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/quicksettings/MobileNetworkTile;->updateOverlayImage(I)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d6

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mSignalContentDescription:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataContentDescription:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mLabel:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method protected updateTile()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "r":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataTypeIconId:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mWifiOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataContentDescription:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDataContentDescription:Ljava/lang/String;

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mDescription:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTile;->mLabel:Ljava/lang/String;

    .line 87
    return-void

    .line 81
    :cond_0
    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_1
    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
