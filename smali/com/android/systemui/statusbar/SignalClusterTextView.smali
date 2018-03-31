.class public Lcom/android/systemui/statusbar/SignalClusterTextView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalStrengthChangedCallback;


# instance fields
.field private mAirplaneMode:Z

.field private mDBm:I

.field private mMobileSignalText:Landroid/widget/TextView;

.field private mSignalClusterStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mDBm:I

    .line 35
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    .line 49
    return-void
.end method

.method private getSignalLevelString(I)Ljava/lang/String;
    .locals 1
    .param p1, "dBm"    # I

    .prologue
    .line 64
    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    const-string v0, "-\u221e"

    .line 67
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSignalText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mDBm:I

    if-nez v0, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterTextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mDBm:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/SignalClusterTextView;->getSignalLevelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterTextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mAirplaneMode:Z

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 101
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 54
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mMobileSignalText:Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 56
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
    .line 95
    return-void
.end method

.method public onPhoneSignalStrengthChanged(I)V
    .locals 0
    .param p1, "dbm"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mDBm:I

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 107
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
    .line 88
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterTextView;->mSignalClusterStyle:I

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterTextView;->updateSignalText()V

    .line 61
    return-void
.end method
