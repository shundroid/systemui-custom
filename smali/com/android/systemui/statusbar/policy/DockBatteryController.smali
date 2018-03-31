.class public Lcom/android/systemui/statusbar/policy/DockBatteryController;
.super Lcom/android/systemui/statusbar/policy/BatteryController;
.source "DockBatteryController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 34
    const-string v6, "dock_present"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    .line 35
    const-string v6, "dock_level"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryLevel:I

    .line 36
    const-string v6, "dock_plugged"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 37
    .local v3, "plugType":I
    if-ne v3, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPlugged:Z

    .line 38
    const-string v4, "dock_status"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStatus:I

    .line 41
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 42
    .local v1, "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPresent:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryLevel:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryPlugged:Z

    iget v7, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStatus:I

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(ZIZI)V

    goto :goto_0

    .line 46
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "plugType":I
    :cond_1
    return-void
.end method
