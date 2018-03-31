.class public Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "MobileNetworkTypeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mIntendedMode:I

.field private mInternalState:I

.field private mMode:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    const/16 v0, -0x63

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 58
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 59
    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    .line 67
    iput-object p3, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 69
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$1;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile$2;-><init>(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 118
    const-string v0, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->getCurrentCMMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    return p1
.end method

.method private getCurrentCMMode()I
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_network_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private networkModeToState()I
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 189
    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget v1, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v0, "NetworkModeQuickSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected network mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x6

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateTile()V
    .locals 7

    .prologue
    const v6, 0x7f020031

    const v5, 0x7f020030

    const v4, 0x7f02002f

    const/4 v3, 0x2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->networkModeToState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mState:I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mLabel:Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    const v0, 0x7f0200a7

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 165
    :pswitch_2
    iput v5, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 168
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    if-ne v0, v3, :cond_0

    .line 169
    iput v6, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 171
    :cond_0
    iput v4, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 175
    :pswitch_4
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 176
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    if-ne v0, v3, :cond_1

    .line 177
    iput v6, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 179
    :cond_1
    iput v4, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 182
    :cond_2
    iput v5, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mDrawable:I

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 144
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 145
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
    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateResources()V

    .line 233
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateTile()V

    .line 138
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 139
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "networkMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    .line 126
    iget v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mMode:I

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mIntendedMode:I

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->networkModeToState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->mInternalState:I

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateResources()V

    .line 132
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
    .line 225
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;->updateTile()V

    .line 150
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 151
    return-void
.end method
