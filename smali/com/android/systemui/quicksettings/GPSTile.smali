.class public Lcom/android/systemui/quicksettings/GPSTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "GPSTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;


# static fields
.field private static final LOCATORS:[I


# instance fields
.field private mCurrentMode:I

.field private mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mLocatorsIndex:I

.field private mLocatorsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/quicksettings/GPSTile;->LOCATORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "lc"    # Lcom/android/systemui/statusbar/policy/LocationController;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 48
    iput-object p3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 50
    new-instance v0, Lcom/android/systemui/quicksettings/GPSTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/GPSTile$1;-><init>(Lcom/android/systemui/quicksettings/GPSTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/android/systemui/quicksettings/GPSTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/GPSTile$2;-><init>(Lcom/android/systemui/quicksettings/GPSTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 64
    const-string v0, "expanded_location_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/GPSTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/GPSTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->toggleState()V

    return-void
.end method

.method private currentModeToLocatorIndex(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 141
    sget-object v2, Lcom/android/systemui/quicksettings/GPSTile;->LOCATORS:[I

    array-length v0, v2

    .line 142
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    sget-object v2, Lcom/android/systemui/quicksettings/GPSTile;->LOCATORS:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 147
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 142
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private toggleState()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 99
    iget v3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocatorsMode:I

    if-nez v3, :cond_0

    .line 102
    iget v3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mCurrentMode:I

    packed-switch v3, :pswitch_data_0

    .line 116
    const/4 v2, 0x0

    .line 119
    .local v2, "newMode":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    .end local v2    # "newMode":I
    :goto_1
    return-void

    .line 104
    :pswitch_0
    const/4 v2, 0x3

    .line 105
    .restart local v2    # "newMode":I
    goto :goto_0

    .line 107
    .end local v2    # "newMode":I
    :pswitch_1
    const/4 v2, 0x2

    .line 108
    .restart local v2    # "newMode":I
    goto :goto_0

    .line 110
    .end local v2    # "newMode":I
    :pswitch_2
    const/4 v2, 0x1

    .line 111
    .restart local v2    # "newMode":I
    goto :goto_0

    .line 113
    .end local v2    # "newMode":I
    :pswitch_3
    const/4 v2, 0x0

    .line 114
    .restart local v2    # "newMode":I
    goto :goto_0

    .line 122
    .end local v2    # "newMode":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocatorsIndex:I

    .line 125
    .local v0, "locatorIndex":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 126
    sget-object v3, Lcom/android/systemui/quicksettings/GPSTile;->LOCATORS:[I

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 127
    const/4 v0, 0x0

    .line 129
    :cond_2
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v1, v3

    .line 131
    .local v1, "mask":I
    iget v3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocatorsMode:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    sget-object v5, Lcom/android/systemui/quicksettings/GPSTile;->LOCATORS:[I

    aget v5, v5, v0

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocatorsMode:I

    .line 153
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 2

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 177
    const v0, 0x7f0900f9

    .line 178
    .local v0, "textResId":I
    const v1, 0x7f020063

    iput v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "textResId":I
    :pswitch_0
    const v0, 0x7f090038

    .line 166
    .restart local v0    # "textResId":I
    const v1, 0x7f020064

    :try_start_1
    iput v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "textResId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 169
    :pswitch_1
    const v0, 0x7f090037

    .line 170
    .restart local v0    # "textResId":I
    const v1, 0x7f020062

    :try_start_2
    iput v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I

    goto :goto_0

    .line 173
    .end local v0    # "textResId":I
    :pswitch_2
    const v0, 0x7f090036

    .line 174
    .restart local v0    # "textResId":I
    const v1, 0x7f020064

    iput v1, p0, Lcom/android/systemui/quicksettings/GPSTile;->mDrawable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateSettings()V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateResources()V

    .line 159
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/LocationController;->removeSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 81
    return-void
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 4
    .param p1, "locationEnabled"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mCurrentMode:I

    .line 94
    iget v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/quicksettings/GPSTile;->currentModeToLocatorIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocatorsIndex:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateResources()V

    .line 96
    return-void
.end method

.method onPostCreate()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateSettings()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/quicksettings/GPSTile;->onLocationSettingsChanged(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateTile()V

    .line 73
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 75
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateTile()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/GPSTile;->updateQuickSettings()V

    .line 87
    return-void
.end method
