.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field protected mBatteryLevel:I

.field protected mBatteryPlugged:Z

.field protected mBatteryPresent:Z

.field protected mBatteryStatus:I

.field protected mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 34
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLevel:I

    .line 35
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    .line 36
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPresent:Z

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPresent:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(ZIZI)V

    .line 56
    return-void
.end method

.method public onBatteryMeterModeChanged(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 80
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryMeterModeChanged(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V

    goto :goto_0

    .line 82
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    :cond_0
    return-void
.end method

.method public onBatteryMeterShowPercent(Z)V
    .locals 3
    .param p1, "showPercent"    # Z

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 86
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryMeterShowPercent(Z)V

    goto :goto_0

    .line 88
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const-string v5, "present"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPresent:Z

    .line 66
    const-string v5, "level"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLevel:I

    .line 67
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    .line 68
    const-string v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 72
    .local v1, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPresent:Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryLevel:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryPlugged:Z

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStatus:I

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(ZIZI)V

    goto :goto_0

    .line 76
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
