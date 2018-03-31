.class public Lcom/android/systemui/quicksettings/RingerModeTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "RingerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    }
.end annotation


# static fields
.field private static final RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingerIndex:I

.field private mRingers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    new-instance v1, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    const v2, 0x7f020076

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(IZI)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    const v2, 0x7f0200ac

    invoke-direct {v1, v4, v4, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(IZI)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    const v2, 0x7f020077

    invoke-direct {v1, v5, v3, v2}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(IZI)V

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-instance v2, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    const v3, 0x7f020078

    invoke-direct {v2, v5, v4, v3}, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;-><init>(IZI)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mVibrator:Landroid/os/Vibrator;

    .line 59
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RingerModeTile$1;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/android/systemui/quicksettings/RingerModeTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/RingerModeTile$2;-><init>(Lcom/android/systemui/quicksettings/RingerModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 74
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 75
    const-string v0, "expanded_ring_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 77
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 79
    return-void
.end method

.method private findCurrentState()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    iget-object v6, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_when_ringing"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 180
    .local v3, "vibrateWhenRinging":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 181
    .local v2, "ringerMode":I
    if-ne v2, v4, :cond_2

    :goto_1
    or-int/2addr v3, v4

    .line 183
    iput v5, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v4, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 186
    sget-object v4, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aget-object v1, v4, v0

    .line 187
    .local v1, "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    iget v4, v1, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    if-ne v2, v4, :cond_3

    iget-boolean v4, v1, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-ne v3, v4, :cond_3

    .line 188
    iput v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    .line 192
    .end local v1    # "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    :cond_0
    return-void

    .end local v0    # "i":I
    .end local v2    # "ringerMode":I
    .end local v3    # "vibrateWhenRinging":Z
    :cond_1
    move v3, v5

    .line 178
    goto :goto_0

    .restart local v2    # "ringerMode":I
    .restart local v3    # "vibrateWhenRinging":Z
    :cond_2
    move v4, v5

    .line 181
    goto :goto_1

    .line 185
    .restart local v0    # "i":I
    .restart local v1    # "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private updateSettings()V
    .locals 13

    .prologue
    .line 148
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "expanded_ring_mode"

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "setting":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/systemui/quicksettings/RingerModeTile;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "modes":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const-string v11, "vibrator"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 152
    .local v9, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 154
    .local v1, "hasVibrator":Z
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 156
    if-eqz v6, :cond_0

    array-length v10, v6

    if-nez v10, :cond_3

    .line 157
    :cond_0
    sget-object v0, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    .local v0, "arr$":[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v7, v0, v2

    .line 158
    .local v7, "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    if-nez v1, :cond_1

    iget-boolean v10, v7, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-nez v10, :cond_2

    .line 159
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "arr$":[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    :cond_3
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v4, :cond_7

    aget-object v5, v0, v2

    .line 164
    .local v5, "mode":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 165
    .local v3, "index":I
    sget-object v10, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    array-length v10, v10

    if-ge v3, v10, :cond_6

    sget-object v10, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    aget-object v7, v10, v3

    .line 167
    .restart local v7    # "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    :goto_2
    if-eqz v7, :cond_5

    if-nez v1, :cond_4

    iget-boolean v10, v7, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-nez v10, :cond_5

    .line 168
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v7    # "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 172
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v5    # "mode":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 173
    iget-object v10, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_8
    return-void
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mLabel:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->findCurrentState()V

    .line 115
    sget-object v0, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    iget v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mDrawable:I

    iput v0, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mDrawable:I

    .line 116
    return-void
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateSettings()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateResources()V

    .line 90
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateSettings()V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateTile()V

    .line 100
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 101
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateResources()V

    .line 84
    return-void
.end method

.method public parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    :cond_0
    iget v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    .line 122
    iget v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    sget-object v3, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 123
    iput v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    .line 125
    :cond_1
    sget-object v2, Lcom/android/systemui/quicksettings/RingerModeTile;->RINGERS:[Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;

    iget v3, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingerIndex:I

    aget-object v0, v2, v3

    .line 126
    .local v0, "r":Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mRingers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-boolean v2, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-boolean v4, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mVibrateWhenRinging:Z

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    iget-object v1, p0, Lcom/android/systemui/quicksettings/RingerModeTile;->mAudioManager:Landroid/media/AudioManager;

    iget v2, v0, Lcom/android/systemui/quicksettings/RingerModeTile$Ringer;->mRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 138
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/RingerModeTile;->updateTile()V

    .line 106
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 107
    return-void
.end method
