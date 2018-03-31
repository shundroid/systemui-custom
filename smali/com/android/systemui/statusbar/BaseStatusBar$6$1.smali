.class Lcom/android/systemui/statusbar/BaseStatusBar$6$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$6;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$packageNameF:Ljava/lang/String;

.field final synthetic val$sbNotification:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$6;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$sbNotification:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 535
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f08009e

    if-ne v7, v8, :cond_1

    .line 536
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$600(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    .line 537
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    :goto_0
    move v5, v6

    .line 566
    :cond_0
    return v5

    .line 538
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f08009f

    if-ne v7, v8, :cond_2

    .line 539
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 542
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f0800a0

    if-ne v7, v8, :cond_3

    .line 544
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 546
    .restart local v0    # "am":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$FakeClearUserDataObserver;

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {v7, v8}, Lcom/android/systemui/statusbar/BaseStatusBar$FakeClearUserDataObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    invoke-virtual {v0, v5, v7}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    goto :goto_0

    .line 548
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f0800a1

    if-ne v7, v8, :cond_4

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 550
    .local v2, "packageURI":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 551
    .local v3, "uninstallIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 554
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    goto/16 :goto_0

    .line 555
    .end local v2    # "packageURI":Landroid/net/Uri;
    .end local v3    # "uninstallIntent":Landroid/content/Intent;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f0800a2

    if-ne v7, v8, :cond_0

    .line 556
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$sbNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationContent(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "message":Ljava/lang/String;
    const-string v5, "message_text"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v5, "package_name"

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$packageNameF:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 562
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$6;

    iget-object v5, v5, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Landroid/os/IBinder;)V

    goto/16 :goto_0
.end method
