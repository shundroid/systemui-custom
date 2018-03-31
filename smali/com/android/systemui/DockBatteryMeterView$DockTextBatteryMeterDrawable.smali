.class public Lcom/android/systemui/DockBatteryMeterView$DockTextBatteryMeterDrawable;
.super Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;
.source "DockBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DockBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DockTextBatteryMeterDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DockBatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DockBatteryMeterView;Landroid/content/res/Resources;)V
    .locals 0
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/systemui/DockBatteryMeterView$DockTextBatteryMeterDrawable;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V

    .line 194
    return-void
.end method
