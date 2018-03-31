.class Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;
.super Lcom/android/systemui/BatteryMeterView$BatteryTracker;
.source "DockBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DockBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockBatteryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DockBatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DockBatteryMeterView;)V
    .locals 1

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->present:Z

    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->testmode:Z

    if-eqz v1, :cond_1

    const-string v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    iget-object v4, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-static {v4}, Lcom/android/systemui/DockBatteryMeterView;->access$100(Lcom/android/systemui/DockBatteryMeterView;)Landroid/os/BatteryManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryManager;->isDockBatterySupported()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/DockBatteryMeterView;->access$002(Lcom/android/systemui/DockBatteryMeterView;Z)Z

    .line 46
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/DockBatteryMeterView;->access$000(Lcom/android/systemui/DockBatteryMeterView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    const-string v1, "dock_present"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->present:Z

    .line 49
    const/high16 v1, 0x42c80000    # 100.0f

    const-string v4, "dock_level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const-string v4, "dock_scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->level:I

    .line 53
    const-string v1, "dock_plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->plugType:I

    .line 54
    iget v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->plugType:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->plugged:Z

    .line 55
    const-string v1, "dock_health"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->health:I

    .line 57
    const-string v1, "dock_status"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->status:I

    .line 59
    const-string v1, "dock_technology"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->technology:Ljava/lang/String;

    .line 60
    const-string v1, "dock_voltage"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->voltage:I

    .line 61
    const-string v1, "dock_temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->temperature:I

    .line 63
    iget-boolean v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->present:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    iget-object v1, v1, Lcom/android/systemui/DockBatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v4, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-eq v1, v4, :cond_3

    .line 64
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    const v4, 0x7f090048

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/DockBatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/DockBatteryMeterView;->invalidateIfVisible()V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/DockBatteryMeterView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 54
    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1, v7}, Lcom/android/systemui/DockBatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/DockBatteryMeterView;->setVisibility(I)V

    goto/16 :goto_0

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1, v7}, Lcom/android/systemui/DockBatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/DockBatteryMeterView;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    invoke-virtual {v1}, Lcom/android/systemui/DockBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 79
    :cond_5
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->testmode:Z

    .line 81
    iget-object v1, p0, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;->this$0:Lcom/android/systemui/DockBatteryMeterView;

    new-instance v2, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker$1;-><init>(Lcom/android/systemui/DockBatteryMeterView$DockBatteryTracker;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/DockBatteryMeterView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
