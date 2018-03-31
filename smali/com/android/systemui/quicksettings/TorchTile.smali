.class public Lcom/android/systemui/quicksettings/TorchTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "TorchTile.java"


# instance fields
.field private mActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mActive:Z

    .line 34
    new-instance v0, Lcom/android/systemui/quicksettings/TorchTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/TorchTile$1;-><init>(Lcom/android/systemui/quicksettings/TorchTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 42
    new-instance v0, Lcom/android/systemui/quicksettings/TorchTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/TorchTile$2;-><init>(Lcom/android/systemui/quicksettings/TorchTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 50
    const-string v0, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 51
    return-void
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mActive:Z

    if-eqz v0, :cond_0

    .line 73
    const v0, 0x7f0200a6

    iput v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mDrawable:I

    .line 74
    iget-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mLabel:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const v0, 0x7f0200a5

    iput v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mDrawable:I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateTile()V

    .line 56
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 57
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 67
    const-string v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/TorchTile;->mActive:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateResources()V

    .line 69
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/TorchTile;->updateTile()V

    .line 62
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 63
    return-void
.end method
