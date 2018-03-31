.class public abstract Lcom/android/systemui/quicksettings/NetworkTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "NetworkTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field private mController:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/quicksettings/NetworkTile;->DEFAULT_DURATION:J

    .line 33
    sget-wide v0, Lcom/android/systemui/quicksettings/NetworkTile;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/quicksettings/NetworkTile;->SHORT_DURATION:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p4, "layoutResourceId"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 39
    iput-object p3, p0, Lcom/android/systemui/quicksettings/NetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 40
    return-void
.end method

.method private setVisibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    .local v0, "newAlpha":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_2

    sget-wide v1, Lcom/android/systemui/quicksettings/NetworkTile;->SHORT_DURATION:J

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76
    :cond_0
    return-void

    .line 69
    .end local v0    # "newAlpha":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    .restart local v0    # "newAlpha":F
    :cond_2
    sget-wide v1, Lcom/android/systemui/quicksettings/NetworkTile;->DEFAULT_DURATION:J

    goto :goto_1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 52
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 53
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NetworkTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NetworkTile;->updateTile()V

    .line 46
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 47
    return-void
.end method

.method protected setActivity(ZZ)V
    .locals 2
    .param p1, "in"    # Z
    .param p2, "out"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/quicksettings/NetworkTile;->setVisibility(Landroid/view/View;Z)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/quicksettings/NetworkTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/quicksettings/NetworkTile;->setVisibility(Landroid/view/View;Z)V

    .line 66
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/NetworkTile;->updateTile()V

    .line 58
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 59
    return-void
.end method

.method protected abstract updateTile()V
.end method
