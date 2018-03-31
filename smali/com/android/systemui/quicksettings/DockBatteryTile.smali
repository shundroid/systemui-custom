.class public Lcom/android/systemui/quicksettings/DockBatteryTile;
.super Lcom/android/systemui/quicksettings/BatteryTile;
.source "DockBatteryTile.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/DockBatteryController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/DockBatteryController;

    .prologue
    .line 28
    const v0, 0x7f040014

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/quicksettings/BatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;I)V

    .line 29
    return-void
.end method
