.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.super Ljava/lang/Object;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryStateChangeCallback"
.end annotation


# virtual methods
.method public abstract onBatteryLevelChanged(ZIZI)V
.end method

.method public abstract onBatteryMeterModeChanged(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
.end method

.method public abstract onBatteryMeterShowPercent(Z)V
.end method
