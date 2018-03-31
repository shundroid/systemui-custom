.class Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 472
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput p1, v0, v1

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 502
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 483
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataState:I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDataNetType:I

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 491
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput-object p1, v0, v1

    .line 441
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    aput v2, v0, v1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 459
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    aput-object p1, v0, v1

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 432
    return-void
.end method
