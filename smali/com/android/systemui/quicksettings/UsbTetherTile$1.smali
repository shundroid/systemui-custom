.class Lcom/android/systemui/quicksettings/UsbTetherTile$1;
.super Ljava/lang/Object;
.source "UsbTetherTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UsbTetherTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UsbTetherTile;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$000(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$200(Lcom/android/systemui/quicksettings/UsbTetherTile;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/quicksettings/UsbTetherTile$1;->this$0:Lcom/android/systemui/quicksettings/UsbTetherTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/UsbTetherTile;->access$100(Lcom/android/systemui/quicksettings/UsbTetherTile;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 47
    :cond_0
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
