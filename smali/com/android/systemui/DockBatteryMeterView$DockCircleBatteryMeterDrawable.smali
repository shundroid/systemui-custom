.class public Lcom/android/systemui/DockBatteryMeterView$DockCircleBatteryMeterDrawable;
.super Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;
.source "DockBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DockBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DockCircleBatteryMeterDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DockBatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;)V
    .locals 0
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/DockBatteryMeterView$DockCircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V

    .line 183
    return-void
.end method


# virtual methods
.method protected getBoltPointsArrayResource()I
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f070008

    return v0
.end method
