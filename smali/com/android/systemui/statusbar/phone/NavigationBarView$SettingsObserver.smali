.class Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mObserving:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 1049
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1046
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->mObserving:Z

    .line 1050
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1053
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->mObserving:Z

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "lockscreen_modlock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1058
    const-string v1, "navigation_bar_menu_arrow_keys"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1061
    const-string v1, "nav_buttons"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1066
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->onChange(Z)V

    .line 1067
    return-void
.end method

.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const v5, 0x7f080015

    const v6, 0x7f08000f

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x1

    .line 1078
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1400(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1079
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "lockscreen_modlock_enabled"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1502(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 1084
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1800(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v8, "navigation_bar_menu_arrow_keys"

    invoke-static {v2, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1702(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 1088
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f08000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v2, v7, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;Z)V

    .line 1089
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v2, v7, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1900(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;Z)V

    .line 1093
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v2, :cond_5

    move v2, v5

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, "one":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v4, :cond_6

    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1095
    .local v1, "six":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    if-eq v2, v9, :cond_0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput v9, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotOneVisibility:I

    .line 1099
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    if-eq v2, v9, :cond_1

    if-eqz v1, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput v9, v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mSlotSixVisibility:I

    .line 1105
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 1106
    return-void

    .end local v0    # "one":Landroid/view/View;
    .end local v1    # "six":Landroid/view/View;
    :cond_2
    move v2, v4

    .line 1079
    goto/16 :goto_0

    .line 1082
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1502(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 1084
    goto/16 :goto_2

    :cond_5
    move v2, v6

    .line 1093
    goto :goto_3

    .restart local v0    # "one":Landroid/view/View;
    :cond_6
    move v6, v5

    .line 1094
    goto :goto_4
.end method

.method unobserve()V
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->mObserving:Z

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$1300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->mObserving:Z

    .line 1074
    :cond_0
    return-void
.end method
