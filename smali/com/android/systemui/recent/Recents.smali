.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 223
    return-void
.end method

.method public closeRecents()V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 231
    return-void
.end method

.method public preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 212
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recent/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;I)V
    .locals 38
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;
    .param p4, "expandedDesktopStyle"    # I

    .prologue
    .line 56
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v13

    .line 58
    .local v13, "firstTask":Lcom/android/systemui/recent/TaskDescription;
    new-instance v15, Landroid/content/Intent;

    const-string v34, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v15, "intent":Landroid/content/Intent;
    const-string v34, "com.android.systemui"

    const-string v35, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v34, 0x10800000

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    if-nez v13, :cond_1

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f05000c

    const v36, 0x7f05000d

    invoke-static/range {v34 .. v36}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 69
    .local v18, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v35

    new-instance v36, Landroid/os/UserHandle;

    const/16 v37, -0x2

    invoke-direct/range {v36 .. v37}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 201
    .end local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "opts":Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 73
    .restart local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    new-instance v35, Landroid/os/UserHandle;

    const/16 v36, -0x2

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .end local v15    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 199
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v34, "Recents"

    const-string v35, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v12, 0x0

    .line 79
    .local v12, "first":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 80
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    check-cast v34, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 86
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 88
    .local v23, "res":Landroid/content/res/Resources;
    const v34, 0x7f0b000f

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v30, v0

    .line 90
    .local v30, "thumbWidth":F
    const v34, 0x7f0b0010

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v27, v0

    .line 92
    .local v27, "thumbHeight":F
    if-nez v12, :cond_3

    .line 93
    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 82
    .end local v23    # "res":Landroid/content/res/Resources;
    .end local v27    # "thumbHeight":F
    .end local v30    # "thumbWidth":F
    :cond_2
    const/16 v34, 0x1

    const/16 v35, 0x1

    sget-object v36, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v34 .. v36}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 84
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    new-instance v34, Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 95
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "res":Landroid/content/res/Resources;
    .restart local v27    # "thumbHeight":F
    .restart local v30    # "thumbWidth":F
    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v30

    if-nez v34, :cond_4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v27

    if-eqz v34, :cond_5

    .line 96
    :cond_4
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 98
    if-nez v12, :cond_5

    .line 99
    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 104
    :cond_5
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v10, "dm":Landroid/util/DisplayMetrics;
    const/16 v34, 0x2

    move/from16 v0, p4

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 106
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 115
    .local v6, "config":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 116
    const v34, 0x7f0b001a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v4, v0

    .line 118
    .local v4, "appLabelLeftMargin":F
    const v34, 0x7f0b0019

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 120
    .local v5, "appLabelWidth":F
    const v34, 0x7f0b0017

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v28, v0

    .line 122
    .local v28, "thumbLeftMargin":F
    const v34, 0x7f0b0011

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    .line 125
    .local v26, "thumbBgPadding":F
    add-float v34, v4, v5

    add-float v34, v34, v28

    add-float v34, v34, v30

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v26

    add-float v31, v34, v35

    .line 131
    .local v31, "width":F
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v31

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, v4

    add-float v34, v34, v5

    add-float v34, v34, v26

    add-float v34, v34, v28

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    .line 133
    .local v32, "x":I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    const v35, 0x7f0b0010

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .line 136
    .local v33, "y":I
    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 137
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    sub-int v34, v34, v32

    const v35, 0x7f0b000f

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v32, v34, v35

    .line 182
    .end local v4    # "appLabelLeftMargin":F
    .end local v5    # "appLabelWidth":F
    .end local v28    # "thumbLeftMargin":F
    .end local v31    # "width":F
    :cond_6
    :goto_3
    new-instance v34, Lcom/android/systemui/recent/Recents$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v12, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 194
    .restart local v18    # "opts":Landroid/app/ActivityOptions;
    const-string v34, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v35

    new-instance v36, Landroid/os/UserHandle;

    const/16 v37, -0x2

    invoke-direct/range {v36 .. v37}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 108
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v18    # "opts":Landroid/app/ActivityOptions;
    .end local v26    # "thumbBgPadding":F
    .end local v32    # "x":I
    .end local v33    # "y":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_2

    .line 141
    .restart local v6    # "config":Landroid/content/res/Configuration;
    :cond_8
    const v34, 0x7f0b0059

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v29, v0

    .line 143
    .local v29, "thumbTopMargin":F
    const v34, 0x7f0b0011

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    .line 145
    .restart local v26    # "thumbBgPadding":F
    const v34, 0x7f0b0018

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v25, v0

    .line 147
    .local v25, "textPadding":F
    const v34, 0x7f0b0012

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v17, v0

    .line 149
    .local v17, "labelTextSize":F
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local v19, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v16, v0

    .line 153
    .local v16, "labelTextHeight":F
    const v34, 0x7f0b0013

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v9, v0

    .line 155
    .local v9, "descriptionTextSize":F
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v8, v0

    .line 159
    .local v8, "descriptionTextHeight":F
    const v34, 0x105000c

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v24, v0

    .line 161
    .local v24, "statusBarHeight":F
    move/from16 v21, v24

    .line 162
    .local v21, "recentsItemTopPadding":F
    if-eqz p4, :cond_9

    .line 163
    const/16 v24, 0x0

    .line 166
    :cond_9
    add-float v34, v29, v27

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v26

    add-float v34, v34, v35

    add-float v34, v34, v25

    add-float v34, v34, v16

    add-float v34, v34, v21

    add-float v34, v34, v25

    add-float v14, v34, v8

    .line 170
    .local v14, "height":F
    const v34, 0x7f0b001b

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v20, v0

    .line 172
    .local v20, "recentsItemRightPadding":F
    const v34, 0x7f0b0016

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v22, v0

    .line 174
    .local v22, "recentsScrollViewRightPadding":F
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    const v35, 0x7f0b000f

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    sub-float v34, v34, v20

    sub-float v34, v34, v22

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    .line 178
    .restart local v32    # "x":I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v24

    sub-float v34, v34, v14

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, v29

    add-float v34, v34, v21

    add-float v34, v34, v26

    add-float v34, v34, v24

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .restart local v33    # "y":I
    goto/16 :goto_3
.end method
