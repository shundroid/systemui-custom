.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TilesChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3802
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3803
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3804
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3808
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->onChange(ZLandroid/net/Uri;)V

    .line 3809
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3813
    if-eqz p2, :cond_3

    const-string v4, "qs_quick_access"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3815
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3816
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v5, "qs_quick_access"

    invoke-static {v1, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3818
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3819
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3820
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->setVisibility(I)V

    .line 3857
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v2, v3

    .line 3816
    goto :goto_0

    .line 3822
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_1

    .line 3824
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    if-eqz p2, :cond_4

    const-string v4, "qs_quick_access_size"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3826
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3827
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->updateResources()V

    goto :goto_1

    .line 3828
    :cond_4
    if-eqz p2, :cond_6

    const-string v4, "qs_quick_access_linked"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3830
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3831
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    const-string v4, "qs_quick_access_linked"

    invoke-static {v1, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v0, v2

    .line 3833
    .local v0, "layoutLinked":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3835
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3836
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3837
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3838
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "layoutLinked":Z
    :cond_5
    move v0, v3

    .line 3831
    goto :goto_2

    .line 3840
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    if-eqz p2, :cond_7

    const-string v2, "quick_settings_ribbon_tiles"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3842
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3843
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3844
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->setVisibility(I)V

    goto/16 :goto_1

    .line 3845
    :cond_7
    if-eqz p2, :cond_8

    const-string v2, "qs_small_icons"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3847
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v2, :cond_0

    .line 3848
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupQuickSettings()V

    .line 3849
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    goto/16 :goto_1

    .line 3851
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v2, :cond_0

    .line 3852
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupQuickSettings()V

    .line 3853
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3854
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupQuickSettings()V

    goto/16 :goto_1
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3860
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TilesChangedObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3861
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "quick_settings_tiles"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3865
    const-string v1, "qs_dyanmic_alarm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3869
    const-string v1, "qs_dyanmic_bugreport"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3873
    const-string v1, "qs_dyanmic_dock_battery"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3877
    const-string v1, "qs_dynamic_equalizer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3881
    const-string v1, "qs_dyanmic_ime"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3885
    const-string v1, "qs_dyanmic_usbtether"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3889
    const-string v1, "qs_dyanmic_wifi"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3893
    const-string v1, "qs_quick_access"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3897
    const-string v1, "qs_quick_access_size"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3901
    const-string v1, "qs_quick_access_linked"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3905
    const-string v1, "quick_settings_ribbon_tiles"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3909
    const-string v1, "qs_small_icons"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3913
    return-void
.end method
