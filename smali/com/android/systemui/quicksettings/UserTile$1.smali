.class Lcom/android/systemui/quicksettings/UserTile$1;
.super Ljava/lang/Object;
.source "UserTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UserTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UserTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UserTile;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 72
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/UserTile;->access$000(Lcom/android/systemui/quicksettings/UserTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/quicksettings/UserTile$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/UserTile$1$1;-><init>(Lcom/android/systemui/quicksettings/UserTile$1;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-static {v0, p1, v1, v3, v2}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 94
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 100
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "newLocalProfile"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$1;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    invoke-virtual {v0, v7}, Lcom/android/systemui/quicksettings/UserTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
