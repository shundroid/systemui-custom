.class Lcom/android/systemui/quicksettings/BluetoothTile$1;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BluetoothTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BluetoothTile;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BluetoothTile$1;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile$1;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/BluetoothTile;->access$000(Lcom/android/systemui/quicksettings/BluetoothTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile$1;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/BluetoothTile;->access$100(Lcom/android/systemui/quicksettings/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BluetoothTile$1;->this$0:Lcom/android/systemui/quicksettings/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/BluetoothTile;->access$100(Lcom/android/systemui/quicksettings/BluetoothTile;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
