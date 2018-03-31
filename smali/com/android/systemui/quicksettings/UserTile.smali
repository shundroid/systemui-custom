.class public Lcom/android/systemui/quicksettings/UserTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "UserTile.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUserAvatar:Landroid/graphics/drawable/Drawable;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    const v0, 0x7f04001b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 66
    iput-object p3, p0, Lcom/android/systemui/quicksettings/UserTile;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/systemui/quicksettings/UserTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/UserTile$1;-><init>(Lcom/android/systemui/quicksettings/UserTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/UserTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 105
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 106
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/UserTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/UserTile;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/UserTile;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/UserTile;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "currentUserContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 142
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 143
    iget-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 151
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 152
    .local v3, "userId":I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 154
    .local v5, "userName":Ljava/lang/String;
    move-object v0, v1

    .line 155
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/quicksettings/UserTile$2;

    invoke-direct {v6, p0, v0, v5, v3}, Lcom/android/systemui/quicksettings/UserTile$2;-><init>(Lcom/android/systemui/quicksettings/UserTile;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 229
    iget-object v6, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    return-void

    .line 145
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "userId":I
    .end local v5    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "UserTile"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 148
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "UserTile"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 117
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 118
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 112
    return-void
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "avatar"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile;->mLabel:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserAvatar:Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/UserTile;->updateQuickSettings()V

    .line 236
    return-void
.end method

.method updateQuickSettings()V
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    if-eqz v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile;->mUserAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V

    .line 136
    return-void
.end method
