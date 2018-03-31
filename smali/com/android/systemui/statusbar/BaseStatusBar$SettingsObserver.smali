.class Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 215
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 241
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v4, "status_bar_collapse_on_dismiss"

    const/4 v5, 0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$102(Lcom/android/systemui/statusbar/BaseStatusBar;I)I

    .line 244
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput v7, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandedDesktopStyle:I

    .line 245
    const-string v3, "expanded_desktop_state"

    invoke-static {v2, v3, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_desktop_style"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandedDesktopStyle:I

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_custom_values"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "dndString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_blacklist_values"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "blackString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "\\|"

    invoke-static {v3, v4, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "\\|"

    invoke-static {v3, v4, v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "heads_up_custom_values"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    const-string v1, "heads_up_blacklist_values"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    const-string v1, "status_bar_collapse_on_dismiss"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    const-string v1, "expanded_desktop_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 229
    const-string v1, "expanded_desktop_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->update()V

    .line 232
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar$SettingsObserver;->update()V

    .line 237
    return-void
.end method
