.class public Lcom/android/systemui/quicksettings/QuietHoursTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "QuietHoursTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;
    }
.end annotation


# static fields
.field public static ACTION_QUIET_HOURS:Ljava/lang/String;

.field private static ALARM_ID:I


# instance fields
.field private mEnabled:Z

.field private mEnd:I

.field private mForced:Z

.field private mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

.field private mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.cyanogenmod.util.action_quiet_hours"

    sput-object v0, Lcom/android/systemui/quicksettings/QuietHoursTile;->ACTION_QUIET_HOURS:Ljava/lang/String;

    .line 39
    const v0, 0xf69b5

    sput v0, Lcom/android/systemui/quicksettings/QuietHoursTile;->ALARM_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 50
    new-instance v0, Lcom/android/systemui/quicksettings/QuietHoursTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/QuietHoursTile$1;-><init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mOnClick:Landroid/view/View$OnClickListener;

    .line 56
    new-instance v0, Lcom/android/systemui/quicksettings/QuietHoursTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/QuietHoursTile$2;-><init>(Lcom/android/systemui/quicksettings/QuietHoursTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 66
    const-string v0, "quiet_hours_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 68
    const-string v0, "quiet_hours_forced"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 70
    const-string v0, "quiet_hours_start"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 72
    const-string v0, "quiet_hours_end"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/QuietHoursTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/QuietHoursTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->toggleState()V

    return-void
.end method

.method private getAlarmIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, "i":Landroid/content/Intent;
    sget-object v2, Lcom/android/systemui/quicksettings/QuietHoursTile;->ACTION_QUIET_HOURS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/quicksettings/QuietHoursTile;->ALARM_ID:I

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 188
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getNextTriggerTimeInMillis(II)J
    .locals 7
    .param p1, "startTime"    # I
    .param p2, "endTime"    # I

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 192
    if-ne p1, p2, :cond_0

    .line 193
    const-wide/16 v3, 0x0

    .line 216
    :goto_0
    return-wide v3

    .line 196
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v1, v3, v4

    .line 200
    .local v1, "currentTime":I
    if-le v1, p1, :cond_1

    if-le v1, p2, :cond_1

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    .local v2, "nextTime":I
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 213
    :goto_1
    div-int/lit8 v3, v2, 0x3c

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 214
    rem-int/lit8 v3, v2, 0x3c

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    goto :goto_0

    .line 204
    .end local v2    # "nextTime":I
    :cond_1
    if-ge v1, p1, :cond_2

    if-ge v1, p2, :cond_2

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "nextTime":I
    goto :goto_1

    .line 209
    .end local v2    # "nextTime":I
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "nextTime":I
    goto :goto_1
.end method

.method private toggleState()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-nez v0, :cond_1

    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quiet_hours_enabled"

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "quiet_hours_forced"

    iget-boolean v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 132
    return-void

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-nez v0, :cond_2

    .line 119
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    goto :goto_0

    .line 120
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-eqz v0, :cond_0

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 126
    goto :goto_1

    :cond_4
    move v1, v2

    .line 129
    goto :goto_2
.end method

.method private declared-synchronized updateTile()V
    .locals 6

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 136
    .local v1, "am":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->getAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 138
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    iget-boolean v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-nez v4, :cond_2

    .line 140
    iget v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mStart:I

    iget v5, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnd:I

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/quicksettings/QuietHoursTile;->getNextTriggerTimeInMillis(II)J

    move-result-wide v2

    .line 141
    .local v2, "trigger":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 142
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 148
    :goto_0
    iget v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mStart:I

    iget v5, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnd:I

    invoke-static {v4, v5}, Lcom/android/internal/util/cm/QuietHoursUtils;->inQuietHours(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    const v4, 0x7f020075

    iput v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    .line 153
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v2    # "trigger":J
    :goto_2
    monitor-exit p0

    return-void

    .line 144
    .restart local v2    # "trigger":J
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v1    # "am":Landroid/app/AlarmManager;
    .end local v2    # "trigger":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 151
    .restart local v0    # "alarmIntent":Landroid/app/PendingIntent;
    .restart local v1    # "am":Landroid/app/AlarmManager;
    .restart local v2    # "trigger":J
    :cond_1
    const v4, 0x7f020073

    :try_start_2
    iput v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    goto :goto_1

    .line 154
    .end local v2    # "trigger":J
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    const v4, 0x7f020074

    iput v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    .line 160
    iget-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mLabel:Ljava/lang/String;

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 166
    const v4, 0x7f020072

    iput v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mDrawable:I

    .line 167
    iget-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mLabel:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateResources()V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 91
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->getAlarmIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    .line 98
    return-void
.end method

.method onPostCreate()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;-><init>(Lcom/android/systemui/quicksettings/QuietHoursTile;Lcom/android/systemui/quicksettings/QuietHoursTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mReceiver:Lcom/android/systemui/quicksettings/QuietHoursTile$QuietHoursReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/systemui/quicksettings/QuietHoursTile;->ACTION_QUIET_HOURS:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateResources()V

    .line 84
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 85
    return-void
.end method

.method public updateResources()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "quiet_hours_enabled"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "quiet_hours_forced"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mForced:Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_start"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mStart:I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_end"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/quicksettings/QuietHoursTile;->mEnd:I

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/QuietHoursTile;->updateTile()V

    .line 112
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 104
    goto :goto_1
.end method
