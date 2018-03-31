.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;
    }
.end annotation


# instance fields
.field private mBondedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectedDevices:Ljava/util/Set;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectionChangeCallbacks:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v2, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 63
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireCallbacks()V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    .line 68
    return-void
.end method

.method private fireCallbacks()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 150
    .local v0, "cb":Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    goto :goto_0

    .line 152
    .end local v0    # "cb":Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    :cond_0
    return-void
.end method

.method private fireConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectionChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;

    .line 156
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;->onDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 158
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;
    :cond_0
    return-void
.end method

.method private fireDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectionChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;

    .line 162
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;->onDeviceNameChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 164
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;
    :cond_0
    return-void
.end method

.method private handleAdapterStateChange(I)V
    .locals 1
    .param p1, "adapterState"    # I

    .prologue
    .line 145
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBondedBluetoothDevices()V
    .locals 6

    .prologue
    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 132
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 134
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 136
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addConnectionStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectionChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getConnectedBluetoothDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectedDevices:Ljava/util/Set;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 101
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 106
    :cond_0
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireCallbacks()V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    .line 113
    :cond_2
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 115
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectedDevices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 126
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    :goto_0
    return-void

    .line 117
    :cond_4
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 119
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectedDevices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 121
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    const-string v3, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    :cond_6
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public removeConnectionStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$BluetoothDeviceConnectionStateChangeCallback;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mConnectionChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public removeStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
