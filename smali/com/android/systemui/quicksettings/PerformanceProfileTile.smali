.class public Lcom/android/systemui/quicksettings/PerformanceProfileTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "PerformanceProfileTile.java"


# instance fields
.field private mCurrentValue:I

.field private mEntries:[Ljava/lang/String;

.field private mPerfProfileDefaultEntry:Ljava/lang/String;

.field private mPerfProfileValues:[Ljava/lang/String;

.field private final mPm:Landroid/os/PowerManager;

.field private mTypedArrayDrawables:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 45
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPm:Landroid/os/PowerManager;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mTypedArrayDrawables:Landroid/content/res/TypedArray;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultPowerProfile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileDefaultEntry:Ljava/lang/String;

    .line 51
    const v1, 0x107000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->updateCurrentValue()V

    .line 57
    const-string v1, "performance_profile"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 60
    new-instance v1, Lcom/android/systemui/quicksettings/PerformanceProfileTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile$1;-><init>(Lcom/android/systemui/quicksettings/PerformanceProfileTile;)V

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/PerformanceProfileTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/PerformanceProfileTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->changeToNextProfile()V

    return-void
.end method

.method private changeToNextProfile()V
    .locals 3

    .prologue
    .line 81
    iget v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mCurrentValue:I

    add-int/lit8 v0, v1, 0x1

    .line 82
    .local v0, "current":I
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPm:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setPowerProfile(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private updateCurrentValue()V
    .locals 4

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getPowerProfile()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "perfProfile":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileDefaultEntry:Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    array-length v0, v3

    .line 95
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 96
    iget-object v3, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mPerfProfileValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iput v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mCurrentValue:I

    .line 104
    :goto_1
    return-void

    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mCurrentValue:I

    goto :goto_1
.end method

.method private updateTile()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mTypedArrayDrawables:Landroid/content/res/TypedArray;

    iget v2, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mCurrentValue:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mDrawable:I

    .line 108
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x107000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mEntries:[Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mEntries:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mCurrentValue:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->mLabel:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->updateCurrentValue()V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->updateResources()V

    .line 117
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->updateTile()V

    .line 71
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 72
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->updateTile()V

    .line 77
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 78
    return-void
.end method
