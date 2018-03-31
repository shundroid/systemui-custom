.class public Lcom/android/systemui/quicksettings/BugReportTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "BugReportTile.java"


# instance fields
.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mEnabled:Z

    .line 44
    iput-object p3, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/systemui/quicksettings/BugReportTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/BugReportTile$1;-><init>(Lcom/android/systemui/quicksettings/BugReportTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 54
    const-string v0, "bugreport_in_power_menu"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/BugReportTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/BugReportTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/BugReportTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/BugReportTile;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showBugreportDialog()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040502

    new-instance v3, Lcom/android/systemui/quicksettings/BugReportTile$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/quicksettings/BugReportTile$2;-><init>(Lcom/android/systemui/quicksettings/BugReportTile;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v2, 0x10401c5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 109
    const v2, 0x10401c4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 114
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 116
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateTile()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mLabel:Ljava/lang/String;

    .line 83
    const v1, 0x7f02003d

    iput v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mDrawable:I

    .line 84
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mEnabled:Z

    .line 86
    return-void
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateResources()V

    .line 73
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateTile()V

    .line 61
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 62
    return-void
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/BugReportTile;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 78
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 79
    return-void

    .line 77
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/BugReportTile;->updateTile()V

    .line 67
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 68
    return-void
.end method
