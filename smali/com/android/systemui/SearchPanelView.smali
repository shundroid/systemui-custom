.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$SettingsObserver;,
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private mActionTarget:Lcom/android/systemui/cm/ActionTarget;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mEndPosOffset:I

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private final mIsScreenLarge:Z

.field private mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mStartPosOffset:I

.field private mTargetActivities:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 201
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/systemui/cm/ActionTarget;

    invoke-direct {v0, p1}, Lcom/android/systemui/cm/ActionTarget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mActionTarget:Lcom/android/systemui/cm/ActionTarget;

    .line 89
    new-instance v0, Lcom/android/systemui/SearchPanelView$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/SearchPanelView$SettingsObserver;-><init>(Lcom/android/systemui/SearchPanelView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->isScreenLarge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mIsScreenLarge:Z

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/cm/ActionTarget;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mActionTarget:Lcom/android/systemui/cm/ActionTarget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->updateSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 326
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 327
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 328
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 329
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 330
    return-object v0
.end method

.method private hasValidTargets()Z
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 221
    .local v3, "target":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    const/4 v4, 0x1

    .line 226
    .end local v3    # "target":Ljava/lang/String;
    :goto_1
    return v4

    .line 220
    .restart local v3    # "target":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isScreenLarge()Z
    .locals 10

    .prologue
    .line 334
    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 335
    .local v7, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 336
    .local v5, "size":Landroid/graphics/Point;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 337
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 338
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 339
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 340
    .local v6, "width":I
    iget v0, v5, Landroid/graphics/Point;->y:I

    .line 342
    .local v0, "height":I
    if-le v0, v6, :cond_0

    move v3, v6

    .line 343
    .local v3, "shortSide":I
    :goto_0
    mul-int/lit16 v8, v3, 0xa0

    iget v9, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v4, v8, v9

    .line 345
    .local v4, "shortSideDp":I
    const/16 v8, 0x258

    if-lt v4, v8, :cond_1

    const/4 v1, 0x1

    .line 347
    .local v1, "largeScreen":Z
    :goto_1
    return v1

    .end local v1    # "largeScreen":Z
    .end local v3    # "shortSide":I
    .end local v4    # "shortSideDp":I
    :cond_0
    move v3, v0

    .line 342
    goto :goto_0

    .line 345
    .restart local v3    # "shortSide":I
    .restart local v4    # "shortSideDp":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isScreenPortrait()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 352
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 191
    .local v1, "l":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 192
    .local v2, "r":I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 193
    .local v3, "t":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 194
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setDrawables()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    iget-boolean v2, p0, Lcom/android/systemui/SearchPanelView;->mIsScreenLarge:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->isScreenPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    .line 166
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    .line 173
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    if-ge v0, v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    .line 169
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    goto :goto_0

    .line 177
    .restart local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/android/systemui/SearchPanelView;->mEndPosOffset:I

    if-ge v0, v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 187
    return-void
.end method

.method private updateSettings()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetActions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    .line 357
    return-void
.end method

.method private vibrate()V
    .locals 7

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 215
    .local v2, "vibrator":Landroid/os/Vibrator;
    const v3, 0x7f0e0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 217
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 283
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 284
    .local v1, "y":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 285
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 287
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView$SettingsObserver;->observe()V

    .line 294
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mObserver:Lcom/android/systemui/SearchPanelView$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView$SettingsObserver;->unobserve()V

    .line 300
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 155
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->updateSettings()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    .line 159
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 273
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 318
    const v0, 0x8cd2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 322
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 312
    return-void
.end method

.method public show(ZZ)V
    .locals 7
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x1

    .line 230
    if-nez p1, :cond_0

    .line 231
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 232
    .local v1, "transitioner":Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 234
    .end local v1    # "transitioner":Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 235
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->hasValidTargets()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mTargetActivities:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget v5, p0, Lcom/android/systemui/SearchPanelView;->mStartPosOffset:I

    add-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->updateDynamicIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/lang/String;I)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 240
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-static {v2, v3}, Lcom/android/internal/util/cm/NavigationRingHelpers;->swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 250
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0, v6}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 256
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 254
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_2
.end method
