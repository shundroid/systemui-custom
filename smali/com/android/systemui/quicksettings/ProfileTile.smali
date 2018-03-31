.class public Lcom/android/systemui/quicksettings/ProfileTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "ProfileTile.java"


# instance fields
.field private mChosenProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mContext:Landroid/content/Context;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mProfileManager:Landroid/app/ProfileManager;

    .line 45
    new-instance v0, Lcom/android/systemui/quicksettings/ProfileTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ProfileTile$1;-><init>(Lcom/android/systemui/quicksettings/ProfileTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/android/systemui/quicksettings/ProfileTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/ProfileTile$2;-><init>(Lcom/android/systemui/quicksettings/ProfileTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 60
    const-string v0, "android.intent.action.PROFILE_SELECTED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 61
    const-string v0, "android.intent.action.PROFILE_UPDATED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/ProfileTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ProfileTile;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ProfileTile;->createProfileDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/ProfileTile;)Landroid/app/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ProfileTile;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mChosenProfile:Landroid/app/Profile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/ProfileTile;Landroid/app/Profile;)Landroid/app/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ProfileTile;
    .param p1, "x1"    # Landroid/app/Profile;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mChosenProfile:Landroid/app/Profile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/ProfileTile;)Landroid/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/ProfileTile;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method private createProfileDialog()V
    .locals 14

    .prologue
    .line 88
    iget-object v12, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v12}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v11

    .line 89
    .local v11, "profiles":[Landroid/app/Profile;
    iget-object v12, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v12}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 90
    .local v1, "activeProfile":Ljava/util/UUID;
    array-length v12, v11

    new-array v9, v12, [Ljava/lang/CharSequence;

    .line 92
    .local v9, "names":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 93
    .local v5, "i":I
    const/4 v3, 0x0

    .line 95
    .local v3, "checkedItem":I
    move-object v2, v11

    .local v2, "arr$":[Landroid/app/Profile;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v10, v2, v7

    .line 96
    .local v10, "profile":Landroid/app/Profile;
    invoke-virtual {v10}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 97
    move v3, v6

    .line 98
    iput-object v10, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mChosenProfile:Landroid/app/Profile;

    .line 100
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v10}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v6

    .line 95
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 103
    .end local v10    # "profile":Landroid/app/Profile;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    new-instance v12, Lcom/android/systemui/quicksettings/ProfileTile$3;

    invoke-direct {v12, p0, v11}, Lcom/android/systemui/quicksettings/ProfileTile$3;-><init>(Lcom/android/systemui/quicksettings/ProfileTile;[Landroid/app/Profile;)V

    invoke-virtual {v0, v9, v3, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 117
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-object v12, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 118
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 120
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void

    .line 121
    :catch_0
    move-exception v12

    goto :goto_1
.end method

.method private updateTile()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f020071

    iput v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mDrawable:I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/ProfileTile;->mLabel:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ProfileTile;->updateTile()V

    .line 67
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 68
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/ProfileTile;->updateResources()V

    .line 84
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/ProfileTile;->updateTile()V

    .line 73
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 74
    return-void
.end method
