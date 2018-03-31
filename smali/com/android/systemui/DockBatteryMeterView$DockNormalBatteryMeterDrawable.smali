.class public Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;
.super Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;
.source "DockBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DockBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DockNormalBatteryMeterDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DockBatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;Z)V
    .locals 0
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "horizontal"    # Z

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V

    .line 170
    return-void
.end method


# virtual methods
.method protected getBoltPointsArrayResource()I
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/DockBatteryMeterView$DockNormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070009

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070008

    goto :goto_0
.end method
