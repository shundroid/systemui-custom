.class public Lcom/android/systemui/quicksettings/InputMethodTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "InputMethodTile.java"


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mShowTile:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mShowTile:Z

    .line 45
    iget-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 47
    new-instance v0, Lcom/android/systemui/quicksettings/InputMethodTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/InputMethodTile$1;-><init>(Lcom/android/systemui/quicksettings/InputMethodTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method

.method private getCurrentInputMethodName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v6, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v5

    .line 97
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "default_input_method"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "currentInputMethodId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 105
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    iget-object v5, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 109
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-nez v4, :cond_3

    .line 110
    iget-object v5, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0900f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 113
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private needsToShowImeSwitchOngoingNotification()Z
    .locals 14

    .prologue
    .line 120
    iget-object v12, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    .line 124
    const/4 v12, 0x1

    .line 167
    :goto_0
    return v12

    .line 126
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    .line 127
    const/4 v12, 0x0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v7, 0x0

    .line 131
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 132
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 133
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 135
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 136
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 137
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v4, v13}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 139
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 140
    .local v10, "subtypeCount":I
    if-nez v10, :cond_3

    .line 141
    add-int/lit8 v7, v7, 0x1

    .line 135
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    :cond_3
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 144
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 145
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 146
    add-int/lit8 v7, v7, 0x1

    .line 147
    move-object v8, v9

    .line 143
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 149
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 150
    move-object v2, v9

    goto :goto_3

    .line 155
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 156
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 157
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 158
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 163
    const/4 v12, 0x0

    goto :goto_0

    .line 165
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 167
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private updateTile()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->getCurrentInputMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mLabel:Ljava/lang/String;

    .line 88
    const v0, 0x7f020061

    iput v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mDrawable:I

    .line 89
    return-void
.end method


# virtual methods
.method onPostCreate()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateTile()V

    .line 66
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 67
    return-void
.end method

.method public toggleVisibility(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->needsToShowImeSwitchOngoingNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mShowTile:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateResources()V

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateQuickSettings()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/InputMethodTile;->mShowTile:Z

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
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/InputMethodTile;->updateTile()V

    .line 72
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 73
    return-void
.end method
