.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;
.super Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSimWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 521
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->handleMessage(Landroid/os/Message;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mWifiActivity:I

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
