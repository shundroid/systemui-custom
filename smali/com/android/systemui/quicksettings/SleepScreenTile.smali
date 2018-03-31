.class public Lcom/android/systemui/quicksettings/SleepScreenTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "SleepScreenTile.java"


# instance fields
.field private mPm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mPm:Landroid/os/PowerManager;

    .line 36
    new-instance v0, Lcom/android/systemui/quicksettings/SleepScreenTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SleepScreenTile$1;-><init>(Lcom/android/systemui/quicksettings/SleepScreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/SleepScreenTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/SleepScreenTile$2;-><init>(Lcom/android/systemui/quicksettings/SleepScreenTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/SleepScreenTile;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/SleepScreenTile;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0200a1

    iput v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mDrawable:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/SleepScreenTile;->mLabel:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SleepScreenTile;->updateTile()V

    .line 54
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 55
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/SleepScreenTile;->updateTile()V

    .line 60
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 61
    return-void
.end method
