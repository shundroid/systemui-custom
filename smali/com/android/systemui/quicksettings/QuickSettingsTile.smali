.class public Lcom/android/systemui/quicksettings/QuickSettingsTile;
.super Ljava/lang/Object;
.source "QuickSettingsTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field protected final mContext:Landroid/content/Context;

.field protected mDrawable:I

.field protected mLabel:Ljava/lang/String;

.field protected mOnClick:Landroid/view/View$OnClickListener;

.field protected mOnLongClick:Landroid/view/View$OnLongClickListener;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

.field protected mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field protected mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field protected final mTileLayout:I

.field protected mTileTextPadding:I

.field protected mTileTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 59
    const v0, 0x7f040011

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "layout"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    .line 64
    const v0, 0x7f020024

    iput v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mDrawable:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mLabel:Ljava/lang/String;

    .line 66
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .line 68
    iput p3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileLayout:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    const-string v1, "quicksettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mPrefs:Landroid/content/SharedPreferences;

    .line 70
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 166
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mStatusbarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected getImageView()Landroid/view/View;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getLabelView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 181
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mOnClick:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "qs_collapse_panel"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 188
    .local v1, "shouldCollapse":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 189
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 191
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    return-void
.end method

.method public setImageMargins(I)V
    .locals 2
    .param p1, "margin"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->getImageView()Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "image":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 75
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getTileTextSize()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextSize:I

    .line 76
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getTileTextPadding()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextPadding:I

    .line 77
    const v0, 0x7f04000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setTile(Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileLayout:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 81
    iput-object p2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    return-void
.end method

.method startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 163
    return-void
.end method

.method startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public switchToRibbonMode()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 91
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 92
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public switchToSmallIcons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->getLabelView()Landroid/widget/TextView;

    move-result-object v1

    .line 108
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 112
    .local v0, "dpi":I
    const/16 v2, 0xf0

    if-le v0, v2, :cond_0

    .line 113
    iget v2, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextPadding:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    .end local v0    # "dpi":I
    :cond_0
    return-void
.end method

.method updateQuickSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->getLabelView()Landroid/widget/TextView;

    move-result-object v2

    .line 142
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 146
    .local v0, "dpi":I
    const/16 v3, 0xf0

    if-le v0, v3, :cond_0

    .line 147
    iget v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTileTextPadding:I

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    .end local v0    # "dpi":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->getImageView()Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "image":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 152
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "image":Landroid/view/View;
    iget v3, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mDrawable:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuickSettingsTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateQuickSettings()V

    .line 138
    :cond_0
    return-void
.end method
