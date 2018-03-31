.class public Lcom/android/systemui/DockBatteryMeterView;
.super Lcom/android/systemui/BatteryMeterView;
.source "DockBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DockBatteryMeterView$1;,
        Lcom/android/systemui/DockBatteryMeterView$DockTextBatteryMeterDrawable;,
        Lcom/android/systemui/DockBatteryMeterView$DockCircleBatteryMeterDrawable;,
        Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;,
        Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;
    }
.end annotation


# instance fields
.field private mBatteryService:Landroid/os/BatteryManager;

.field private mSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/DockBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DockBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    const-string v0, "battery"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mBatteryService:Landroid/os/BatteryManager;

    .line 126
    new-instance v0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;-><init>(Lcom/android/systemui/DockBatteryMeterView;)V

    iput-object v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 127
    new-instance v0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;

    invoke-direct {v0, p0}, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;-><init>(Lcom/android/systemui/DockBatteryMeterView;)V

    iput-object v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/DockBatteryMeterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DockBatteryMeterView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mSupported:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/DockBatteryMeterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/DockBatteryMeterView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/DockBatteryMeterView;->mSupported:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/DockBatteryMeterView;)Landroid/os/BatteryManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DockBatteryMeterView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mBatteryService:Landroid/os/BatteryManager;

    return-object v0
.end method


# virtual methods
.method protected createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;
    .locals 3
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lcom/android/systemui/DockBatteryMeterView$1;->$SwitchMap$com$android$systemui$BatteryMeterView$BatteryMeterMode:[I

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    new-instance v1, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;Z)V

    :goto_0
    return-object v1

    .line 153
    :pswitch_0
    new-instance v1, Lcom/android/systemui/DockBatteryMeterView$DockCircleBatteryMeterDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/DockBatteryMeterView$DockCircleBatteryMeterDrawable;-><init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v1, Lcom/android/systemui/DockBatteryMeterView$DockTextBatteryMeterDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/DockBatteryMeterView$DockTextBatteryMeterDrawable;-><init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 159
    :pswitch_2
    new-instance v1, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/DockBatteryMeterView;->mSupported:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-super {p0}, Lcom/android/systemui/BatteryMeterView;->onDetachedFromWindow()V

    .line 137
    :cond_0
    return-void
.end method

.method public setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/systemui/BatteryMeterView;->setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/DockBatteryMeterView;->getVisibility()I

    move-result v0

    .line 143
    .local v0, "visibility":I
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/DockBatteryMeterView;->mSupported:Z

    if-nez v1, :cond_0

    .line 144
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/DockBatteryMeterView;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method
