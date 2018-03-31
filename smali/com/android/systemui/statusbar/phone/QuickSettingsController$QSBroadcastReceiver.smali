.class Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QSBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 487
    .local v2, "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 490
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_0
    return-void
.end method
