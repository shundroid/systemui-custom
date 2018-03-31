.class public Lcom/android/systemui/quicksettings/CompassTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "CompassTile.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;


# instance fields
.field private mAcceleration:[F

.field private mAccelerationSensor:Landroid/hardware/Sensor;

.field private mActive:Z

.field private mDegree:F

.field private mGeomagnetic:[F

.field private mGeomagneticFieldSensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mPrepared:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mPrepared:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDegree:F

    .line 57
    new-instance v0, Lcom/android/systemui/quicksettings/CompassTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/quicksettings/CompassTile$1;-><init>(Lcom/android/systemui/quicksettings/CompassTile;)V

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mHandler:Landroid/os/Handler;

    .line 70
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/quicksettings/CompassTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CompassTile;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateCompassTile()V

    return-void
.end method

.method private formatValueWithCardinalDirection(F)Ljava/lang/String;
    .locals 7
    .param p1, "degree"    # F

    .prologue
    .line 208
    float-to-double v2, p1

    const-wide v4, 0x4036800000000000L    # 22.5

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    const-wide v4, 0x4046800000000000L    # 45.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    rem-int/lit8 v0, v2, 0x8

    .line 209
    .local v0, "cardinalDirectionIndex":I
    iget-object v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "cardinalDirections":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mContext:Landroid/content/Context;

    const v3, 0x7f090032

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aget-object v6, v1, v0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateCompassTile()V
    .locals 5

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 197
    iget-object v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mText:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDegree:F

    invoke-direct {p0, v3}, Lcom/android/systemui/quicksettings/CompassTile;->formatValueWithCardinalDirection(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDegree:F

    sub-float v1, v4, v2

    .line 201
    .local v1, "target":F
    iget-object v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRotation()F

    move-result v2

    sub-float v0, v1, v2

    .line 202
    .local v0, "relative":F
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    sub-float/2addr v0, v4

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/quicksettings/CompassTile;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/quicksettings/CompassTile;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 205
    return-void
.end method

.method private declared-synchronized updateTile()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f02004a

    iput v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDrawable:I

    .line 127
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mLabel:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAccelerationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagneticFieldSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    const v0, 0x7f020049

    :try_start_1
    iput v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDrawable:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mContext:Landroid/content/Context;

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mLabel:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateResources()V

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onPostCreate()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mText:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mImage:Landroid/widget/ImageView;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateTile()V

    .line 91
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 94
    return-void
.end method

.method public onPrepare()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mPrepared:Z

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateResources()V

    .line 102
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x3

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v9, 0x1

    .line 150
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 151
    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAcceleration:[F

    if-nez v6, :cond_0

    .line 152
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAcceleration:[F

    .line 155
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAcceleration:[F

    .line 165
    .local v5, "values":[F
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 166
    const v6, 0x3f7851ec    # 0.97f

    aget v7, v5, v2

    mul-float/2addr v6, v7

    const v7, 0x3cf5c280    # 0.029999971f

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "i":I
    .end local v5    # "values":[F
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagnetic:[F

    if-nez v6, :cond_2

    .line 159
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    iput-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagnetic:[F

    .line 162
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagnetic:[F

    .restart local v5    # "values":[F
    goto :goto_0

    .line 169
    .restart local v2    # "i":I
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mPrepared:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAcceleration:[F

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagnetic:[F

    if-nez v6, :cond_5

    .line 193
    :cond_4
    :goto_2
    return-void

    .line 174
    :cond_5
    new-array v1, v12, [F

    .line 175
    .local v1, "R":[F
    new-array v0, v12, [F

    .line 176
    .local v0, "I":[F
    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mAcceleration:[F

    iget-object v7, p0, Lcom/android/systemui/quicksettings/CompassTile;->mGeomagnetic:[F

    invoke-static {v1, v0, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    new-array v4, v11, [F

    .line 183
    .local v4, "orientation":[F
    invoke-static {v1, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 186
    const/4 v6, 0x0

    aget v6, v4, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 187
    .local v3, "newDegree":F
    add-float v6, v3, v10

    rem-float v3, v6, v10

    .line 188
    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 189
    iget-object v6, p0, Lcom/android/systemui/quicksettings/CompassTile;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x10

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    :cond_6
    iput v3, p0, Lcom/android/systemui/quicksettings/CompassTile;->mDegree:F

    goto :goto_2
.end method

.method public onUnprepare()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mPrepared:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mActive:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateResources()V

    .line 110
    :cond_0
    return-void
.end method

.method public setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CompassTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CompassTile;->updateTile()V

    .line 115
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 116
    return-void
.end method
