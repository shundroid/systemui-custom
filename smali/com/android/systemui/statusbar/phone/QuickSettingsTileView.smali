.class public Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingsTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;
    }
.end annotation


# instance fields
.field private mColSpan:I

.field private mContentLayoutId:I

.field private mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

.field private mPrepared:Z

.field private mTile:Lcom/android/systemui/quicksettings/QuickSettingsTile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    return-void
.end method

.method private isParentVisible()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "current":Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 144
    check-cast v1, Landroid/view/View;

    .line 145
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 149
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updatePreparedState()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isParentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onPrepare()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onUnprepare()V

    goto :goto_0
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    return v0
.end method

.method public getTile()Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mTile:Lcom/android/systemui/quicksettings/QuickSettingsTile;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 116
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 122
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 110
    return-void
.end method

.method public setContent(ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "layoutId"    # I
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 65
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    .line 66
    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    return-void
.end method

.method public setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eq v0, p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public setTile(Lcom/android/systemui/quicksettings/QuickSettingsTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mTile:Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 50
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "vis"    # I

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    return-void
.end method
