.class public Lcom/android/systemui/statusbar/phone/QuickSettingsController;
.super Ljava/lang/Object;
.source "QuickSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private final mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

.field private mObserver:Landroid/database/ContentObserver;

.field public mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQuickSettingsTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/quicksettings/QuickSettingsTile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRibbonMode:Z

.field private final mSettingsKey:Ljava/lang/String;

.field public mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTileStatusUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "QuickSettingsController"

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;
    .param p3, "statusBarService"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p4, "settingsKey"    # Ljava/lang/String;
    .param p5, "ribbonMode"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    .line 165
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mSettingsKey:Ljava/lang/String;

    .line 166
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    .line 167
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDockBattery(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const-string v1, "qs_dyanmic_dock_battery"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    new-instance v0, Lcom/android/systemui/quicksettings/DockBatteryTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDockBatteryController:Lcom/android/systemui/statusbar/policy/DockBatteryController;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/quicksettings/DockBatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/DockBatteryController;)V

    .line 378
    .local v0, "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "tile"    # Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .param p3, "map"    # Ljava/util/HashMap;

    .prologue
    .line 462
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 464
    .local v0, "list":Ljava/util/ArrayList;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .end local v0    # "list":Ljava/util/ArrayList;
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/quicksettings/QuickSettingsTile;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateSize()V
    .locals 9

    .prologue
    .line 516
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    if-nez v8, :cond_1

    .line 539
    :cond_0
    return-void

    .line 519
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getRibbonSize()Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    move-result-object v6

    .line 521
    .local v6, "size":Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    sget-object v8, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    if-eq v6, v8, :cond_2

    sget-object v8, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Narrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    if-ne v6, v8, :cond_3

    .line 522
    :cond_2
    const v0, 0x7f0b0004

    .line 523
    .local v0, "height":I
    const v3, 0x7f0b0006

    .line 528
    .local v3, "margin":I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 529
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 530
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 532
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 533
    .local v4, "parent":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 534
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 537
    .local v7, "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v7, v3}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setImageMargins(I)V

    goto :goto_1

    .line 525
    .end local v0    # "height":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "margin":I
    .end local v4    # "parent":Landroid/view/View;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v7    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_3
    const v0, 0x7f0b0005

    .line 526
    .restart local v0    # "height":I
    const v3, 0x7f0b0009

    .restart local v3    # "margin":I
    goto :goto_0
.end method


# virtual methods
.method public isRibbonMode()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    return v0
.end method

.method loadTiles()V
    .locals 22

    .prologue
    .line 175
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    .line 178
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsCamera()Z

    move-result v5

    .line 179
    .local v5, "cameraSupported":Z
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v4

    .line 180
    .local v4, "bluetoothSupported":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v12

    .line 181
    .local v12, "mobileDataSupported":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v11

    .line 182
    .local v11, "lteSupported":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsGps(Landroid/content/Context;)Z

    move-result v7

    .line 183
    .local v7, "gpsSupported":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v18

    .line 185
    .local v18, "torchSupported":Z
    if-nez v4, :cond_0

    .line 186
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleBluetooth"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    if-nez v12, :cond_1

    .line 190
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleWifiAp"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleMobileData"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleNetworkMode"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    if-nez v11, :cond_2

    .line 196
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleLte"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    if-nez v7, :cond_3

    .line 200
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleGPS"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_3
    if-nez v18, :cond_4

    .line 204
    sget-object v19, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v20, "toggleFlashlight"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 209
    .local v15, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 210
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mSettingsKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 212
    .local v17, "tiles":Ljava/lang/String;
    if-nez v17, :cond_5

    .line 213
    sget-object v19, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    const-string v20, "Default tiles being loaded"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v19, "|"

    sget-object v20, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v17

    .line 217
    :cond_5
    sget-object v19, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tiles list: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v6, 0x0

    .line 221
    .local v6, "dockBatteryLoaded":Z
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMSimNetworkController:Lcom/android/systemui/statusbar/policy/MSimNetworkController;

    .line 225
    .local v13, "networkController":Lcom/android/systemui/statusbar/policy/NetworkController;
    :goto_0
    const-string v19, "\\|"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_26

    aget-object v16, v3, v8

    .line 226
    .local v16, "tile":Ljava/lang/String;
    const/4 v14, 0x0

    .line 227
    .local v14, "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    const-string v19, "toggleUser"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 228
    new-instance v14, Lcom/android/systemui/quicksettings/UserTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/UserTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .line 306
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    instance-of v0, v14, Lcom/android/systemui/quicksettings/BatteryTile;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V

    .line 313
    const/4 v6, 0x1

    .line 225
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 221
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "networkController":Lcom/android/systemui/statusbar/policy/NetworkController;
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .end local v16    # "tile":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    goto :goto_0

    .line 229
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "networkController":Lcom/android/systemui/statusbar/policy/NetworkController;
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .restart local v16    # "tile":Ljava/lang/String;
    :cond_9
    const-string v19, "toggleBattery"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 230
    new-instance v14, Lcom/android/systemui/quicksettings/BatteryTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/BatteryTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_2

    .line 231
    :cond_a
    const-string v19, "toggleSettings"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 232
    new-instance v14, Lcom/android/systemui/quicksettings/PreferencesTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/PreferencesTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto :goto_2

    .line 233
    :cond_b
    const-string v19, "toggleWifi"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 234
    new-instance v14, Lcom/android/systemui/quicksettings/WiFiTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v13}, Lcom/android/systemui/quicksettings/WiFiTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 235
    :cond_c
    const-string v19, "toggleGPS"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 236
    new-instance v14, Lcom/android/systemui/quicksettings/GPSTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/GPSTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/LocationController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 237
    :cond_d
    const-string v19, "toggleBluetooth"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-eqz v4, :cond_e

    .line 238
    new-instance v14, Lcom/android/systemui/quicksettings/BluetoothTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/BluetoothTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 239
    :cond_e
    const-string v19, "toggleBrightness"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 240
    new-instance v14, Lcom/android/systemui/quicksettings/BrightnessTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/BrightnessTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 241
    :cond_f
    const-string v19, "toggleCamera"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    if-eqz v5, :cond_10

    .line 242
    new-instance v14, Lcom/android/systemui/quicksettings/CameraTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/CameraTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 243
    :cond_10
    const-string v19, "toggleSound"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 244
    new-instance v14, Lcom/android/systemui/quicksettings/RingerModeTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/RingerModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 245
    :cond_11
    const-string v19, "toggleSync"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 246
    new-instance v14, Lcom/android/systemui/quicksettings/SyncTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/SyncTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 247
    :cond_12
    const-string v19, "toggleWifiAp"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    if-eqz v12, :cond_13

    .line 248
    new-instance v14, Lcom/android/systemui/quicksettings/WifiAPTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/WifiAPTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 249
    :cond_13
    const-string v19, "toggleScreenTimeout"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 250
    new-instance v14, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/ScreenTimeoutTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 251
    :cond_14
    const-string v19, "toggleMobileData"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    if-eqz v12, :cond_15

    .line 252
    new-instance v14, Lcom/android/systemui/quicksettings/MobileNetworkTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v13}, Lcom/android/systemui/quicksettings/MobileNetworkTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 253
    :cond_15
    const-string v19, "toggleLockScreen"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 254
    new-instance v14, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/ToggleLockscreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 255
    :cond_16
    const-string v19, "toggleNetworkMode"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    if-eqz v12, :cond_17

    .line 256
    new-instance v14, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v13}, Lcom/android/systemui/quicksettings/MobileNetworkTypeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 257
    :cond_17
    const-string v19, "toggleAutoRotate"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 258
    new-instance v14, Lcom/android/systemui/quicksettings/AutoRotateTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/AutoRotateTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 259
    :cond_18
    const-string v19, "toggleAirplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 260
    new-instance v14, Lcom/android/systemui/quicksettings/AirplaneModeTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1, v13}, Lcom/android/systemui/quicksettings/AirplaneModeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 261
    :cond_19
    const-string v19, "toggleFlashlight"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 262
    new-instance v14, Lcom/android/systemui/quicksettings/TorchTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/TorchTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 263
    :cond_1a
    const-string v19, "toggleSleepMode"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 264
    new-instance v14, Lcom/android/systemui/quicksettings/SleepScreenTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/SleepScreenTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 265
    :cond_1b
    const-string v19, "toggleProfile"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    move-object/from16 v19, v0

    const-string v20, "system_profiles_enabled"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {v15}, Lcom/android/internal/util/cm/QSUtils;->systemProfilesEnabled(Landroid/content/ContentResolver;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 269
    new-instance v14, Lcom/android/systemui/quicksettings/ProfileTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/ProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 271
    :cond_1c
    const-string v19, "togglePerformanceProfile"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsPerformanceProfiles(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 273
    new-instance v14, Lcom/android/systemui/quicksettings/PerformanceProfileTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 275
    :cond_1d
    const-string v19, "toggleNfc"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 278
    new-instance v14, Lcom/android/systemui/quicksettings/NfcTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/NfcTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 279
    :cond_1e
    const-string v19, "toggleWimax"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 281
    const-string v19, "toggleLte"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 282
    new-instance v14, Lcom/android/systemui/quicksettings/LteTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/LteTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 283
    :cond_1f
    const-string v19, "toggleQuietHours"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 284
    new-instance v14, Lcom/android/systemui/quicksettings/QuietHoursTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/QuietHoursTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 285
    :cond_20
    const-string v19, "toggleVolume"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 286
    new-instance v14, Lcom/android/systemui/quicksettings/VolumeTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/VolumeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 287
    :cond_21
    const-string v19, "toggleExpandedDesktop"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    move-object/from16 v19, v0

    const-string v20, "expanded_desktop_style"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {v15}, Lcom/android/internal/util/cm/QSUtils;->expandedDesktopEnabled(Landroid/content/ContentResolver;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 291
    new-instance v14, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/ExpandedDesktopTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 293
    :cond_22
    const-string v19, "toggleNetworkAdb"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    move-object/from16 v19, v0

    const-string v20, "adb_enabled"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v15}, Lcom/android/internal/util/cm/QSUtils;->adbEnabled(Landroid/content/ContentResolver;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 296
    new-instance v14, Lcom/android/systemui/quicksettings/NetworkAdbTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/NetworkAdbTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 298
    :cond_23
    const-string v19, "toggleCompass"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 299
    new-instance v14, Lcom/android/systemui/quicksettings/CompassTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/CompassTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 300
    :cond_24
    const-string v19, "toggleHeadsUp"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 301
    new-instance v14, Lcom/android/systemui/quicksettings/HeadsUpTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/HeadsUpTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 302
    :cond_25
    const-string v19, "toggleThemes"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 303
    new-instance v14, Lcom/android/systemui/quicksettings/ThemesTile;

    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/ThemesTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    goto/16 :goto_2

    .line 318
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    .end local v16    # "tile":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_28

    .line 364
    :cond_27
    :goto_3
    return-void

    .line 325
    :cond_28
    const-string v19, "qs_dyanmic_alarm"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 327
    new-instance v14, Lcom/android/systemui/quicksettings/AlarmTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/AlarmTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 328
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_29
    const-string v19, "qs_dyanmic_bugreport"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a

    .line 333
    new-instance v14, Lcom/android/systemui/quicksettings/BugReportTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/quicksettings/BugReportTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    .line 334
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2a
    if-nez v6, :cond_2b

    .line 338
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadDockBatteryTile(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;)V

    .line 340
    :cond_2b
    const-string v19, "qs_dyanmic_wifi"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c

    .line 342
    new-instance v14, Lcom/android/systemui/quicksettings/RemoteDisplayTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/RemoteDisplayTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 343
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsImeSwitcher(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2d

    const-string v19, "qs_dyanmic_ime"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d

    .line 348
    new-instance v19, Lcom/android/systemui/quicksettings/InputMethodTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/quicksettings/InputMethodTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/quicksettings/InputMethodTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsUsbTether(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2e

    const-string v19, "qs_dyanmic_usbtether"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2e

    .line 354
    new-instance v14, Lcom/android/systemui/quicksettings/UsbTetherTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/UsbTetherTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 355
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2e
    const-string v19, "qs_dynamic_equalizer"

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_27

    .line 360
    new-instance v14, Lcom/android/systemui/quicksettings/EqualizerTile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/quicksettings/EqualizerTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V

    .line 361
    .restart local v14    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setupQuickSettingsTile(Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public registerAction(Ljava/lang/String;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "tile"    # Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V

    .line 476
    return-void
.end method

.method public registerObservedContent(Landroid/net/Uri;Lcom/android/systemui/quicksettings/QuickSettingsTile;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "tile"    # Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->registerInMap(Ljava/lang/Object;Lcom/android/systemui/quicksettings/QuickSettingsTile;Ljava/util/HashMap;)V

    .line 480
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 495
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mIMETile:Lcom/android/systemui/quicksettings/InputMethodTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/quicksettings/InputMethodTile;->toggleVisibility(Z)V

    .line 505
    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 499
    return-void
.end method

.method setupBroadcastReceiver()V
    .locals 5

    .prologue
    .line 453
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    return-void
.end method

.method setupContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 423
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 424
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 426
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 427
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 429
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method protected setupQuickSettings()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->shutdown()V

    .line 398
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QSBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/phone/QuickSettingsController$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 400
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsController$QuickSettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    .line 401
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 402
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mTileStatusUris:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->loadTiles()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupBroadcastReceiver()V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->setupContentObserver()V

    .line 406
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v5, "qs_small_icons"

    const/4 v6, -0x2

    invoke-static {v1, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 409
    .local v2, "smallIcons":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    if-nez v4, :cond_0

    if-eqz v2, :cond_3

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 411
    .local v3, "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mRibbonMode:Z

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {v3}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->switchToRibbonMode()V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "smallIcons":Z
    .end local v3    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_1
    move v2, v4

    .line 407
    goto :goto_0

    .line 414
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "smallIcons":Z
    .restart local v3    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->switchToSmallIcons()V

    goto :goto_1

    .line 418
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->updateResources()V

    .line 419
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 383
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 390
    .local v1, "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onDestroy()V

    goto :goto_0

    .line 392
    .end local v1    # "qs":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->removeAllViews()V

    .line 394
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->updateSize()V

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mContainerView:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 510
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mQuickSettingsTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/quicksettings/QuickSettingsTile;

    .line 511
    .local v1, "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    invoke-virtual {v1}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    goto :goto_0

    .line 513
    .end local v1    # "t":Lcom/android/systemui/quicksettings/QuickSettingsTile;
    :cond_0
    return-void
.end method
