.class public Lcom/android/systemui/quicksettings/BluetoothTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BluetoothTile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnected:Z

.field private mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/BluetoothController;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mConnected:Z

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 47
    new-instance v0, Lcom/android/systemui/quicksettings/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BluetoothTile$1;-><init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/android/systemui/quicksettings/BluetoothTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BluetoothTile$2;-><init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/BluetoothTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/BluetoothTile;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/BluetoothTile;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private checkBluetoothState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mEnabled:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mConnected:Z

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v1, v2

    .line 109
    goto :goto_1
.end method

.method private updateTile()V
    .locals 8

    .prologue
    const v3, 0x7f0900f1

    const/4 v5, 0x1

    .line 114
    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mEnabled:Z

    if-eqz v2, :cond_4

    .line 115
    iget-boolean v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mConnected:Z

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedBluetoothDevices()Ljava/util/Set;

    move-result-object v0

    .line 118
    .local v0, "connected":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const v2, 0x7f02003a

    iput v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I

    .line 119
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    .line 141
    .end local v0    # "connected":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "connected":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 129
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 134
    .end local v0    # "connected":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    const v2, 0x7f020038

    iput v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I

    .line 135
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_4
    const v2, 0x7f020039

    iput v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mDrawable:I

    .line 139
    iget-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0900f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->checkBluetoothState()V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateResources()V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeConnectionStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;)V

    .line 79
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 80
    return-void
.end method

.method public onDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateResources()V

    .line 97
    return-void
.end method

.method public onDeviceNameChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedBluetoothDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateResources()V

    .line 104
    :cond_0
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->checkBluetoothState()V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateTile()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addConnectionStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;)V

    .line 72
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 73
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BluetoothTile;->updateTile()V

    .line 85
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 86
    return-void
.end method
