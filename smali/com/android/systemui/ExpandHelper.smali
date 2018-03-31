.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mCurrViewBottomGlow:Landroid/view/View;

.field private mCurrViewTopGlow:Landroid/view/View;

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mForcedOneFinger:Z

.field private mGlowAnimationSet:Landroid/animation/AnimatorSet;

.field private mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

.field private mGlowTopAnimation:Landroid/animation/ObjectAnimator;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:I

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mPopDuration:I

.field private mPopLimit:F

.field private mPullGestureMinXSpan:F

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollView:Landroid/view/View;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 79
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mForcedOneFinger:Z

    .line 113
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 187
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 188
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 189
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 190
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 192
    new-instance v2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 193
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 194
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v3, "height"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 195
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    .line 197
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    .line 198
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 200
    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 218
    .local v1, "glowVisibilityController":Landroid/animation/AnimatorListenerAdapter;
    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    .line 219
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    .line 221
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    .line 223
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 224
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 226
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 227
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 229
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method private calculateGlow(FF)F
    .locals 9
    .param p1, "target"    # F
    .param p2, "actual"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 311
    sub-float v2, p1, p2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 312
    .local v1, "stretch":F
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v8

    div-float v0, v8, v2

    .line 314
    .local v0, "strength":F
    mul-float v2, v0, v7

    add-float/2addr v2, v7

    return v2
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 252
    move v0, p1

    .line 253
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 254
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 255
    :cond_1
    return v0

    .line 253
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 576
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 577
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 578
    return-void
.end method

.method private findView(FF)Landroid/view/View;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 261
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 262
    .local v0, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 263
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 264
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 265
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v1

    .line 269
    .end local v0    # "location":[I
    :goto_0
    return-object v1

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private finishExpanding(Z)V
    .locals 9
    .param p1, "force"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 539
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v4, :cond_0

    .line 572
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 544
    .local v0, "currentHeight":F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    .line 545
    .local v2, "targetHeight":F
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    .line 546
    .local v1, "h":F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_4

    move v3, v5

    .line 547
    .local v3, "wasClosed":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 548
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    :cond_1
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 552
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 555
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 556
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_3
    invoke-interface {v7, v8, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 557
    cmpl-float v4, v2, v0

    if-eqz v4, :cond_3

    .line 558
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v5, v5, [F

    aput v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 559
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 560
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 562
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 564
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 565
    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    goto :goto_0

    .end local v3    # "wasClosed":Z
    :cond_4
    move v3, v6

    .line 546
    goto :goto_1

    .line 548
    .restart local v3    # "wasClosed":Z
    :cond_5
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    goto :goto_2

    .line 550
    :cond_6
    if-nez p1, :cond_7

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    :goto_4
    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_4

    :cond_9
    move v4, v6

    .line 556
    goto :goto_3
.end method

.method private handleGlowVisibility()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 346
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    return-void

    :cond_0
    move v0, v2

    .line 346
    goto :goto_0

    :cond_1
    move v1, v2

    .line 348
    goto :goto_1
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 275
    if-nez p1, :cond_0

    .line 293
    :goto_0
    return v4

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 280
    new-array v1, v6, [I

    .line 281
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 282
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 283
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 286
    .end local v1    # "location":[I
    :cond_1
    new-array v1, v6, [I

    .line 287
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 289
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 292
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v0, v3

    .local v0, "inside":Z
    :goto_3
    move v4, v0

    .line 293
    goto :goto_0

    .end local v0    # "inside":Z
    :cond_2
    move v2, v4

    .line 292
    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 582
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 583
    check-cast v0, Landroid/view/ViewGroup;

    .line 584
    .local v0, "g":Landroid/view/ViewGroup;
    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 585
    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 593
    .end local v0    # "g":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private startExpanding(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "expandType"    # I

    .prologue
    const/4 v2, 0x1

    .line 511
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 512
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 517
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->setView(Landroid/view/View;)V

    .line 518
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Landroid/view/View;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 521
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 528
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 526
    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_1
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 235
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 236
    .local v4, "span":F
    mul-float/2addr v4, v7

    .line 237
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 238
    .local v0, "drag":F
    mul-float/2addr v0, v7

    .line 239
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v0, v6

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 241
    .local v3, "pull":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 242
    .local v1, "hand":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 243
    .local v5, "target":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 244
    .local v2, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 246
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 247
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 248
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 249
    return-void

    .end local v1    # "hand":F
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v5    # "target":F
    :cond_0
    move v6, v7

    .line 239
    goto :goto_0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 610
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 611
    return-void
.end method

.method public getNaturalHeight()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 597
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 598
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 600
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 361
    .local v0, "action":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 362
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v9

    float-to-int v3, v9

    .line 363
    .local v3, "x":I
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v9

    float-to-int v5, v9

    .line 365
    .local v5, "y":I
    int-to-float v9, v5

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 366
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 367
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 368
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 371
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v9, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v8

    .line 374
    :cond_1
    if-ne v0, v10, :cond_2

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 378
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    .line 379
    .local v4, "xspan":F
    if-ne v0, v10, :cond_3

    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v9, v4, v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_3

    .line 385
    int-to-float v7, v3

    int-to-float v9, v5

    invoke-direct {p0, v7, v9}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v2

    .line 386
    .local v2, "underFocus":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 387
    invoke-direct {p0, v2, v10}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    goto :goto_0

    .line 391
    .end local v2    # "underFocus":Landroid/view/View;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v9

    if-lez v9, :cond_4

    move v8, v7

    .line 392
    goto :goto_0

    .line 395
    :cond_4
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 429
    :cond_5
    :goto_1
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    goto :goto_0

    .line 397
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v9, :cond_5

    .line 398
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    sub-int v6, v5, v9

    .line 399
    .local v6, "yDiff":I
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-le v6, v9, :cond_5

    .line 401
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    .line 402
    int-to-float v9, v3

    int-to-float v10, v5

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v2

    .line 403
    .restart local v2    # "underFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 404
    invoke-direct {p0, v2, v8}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 405
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 406
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_1

    .line 414
    .end local v2    # "underFocus":Landroid/view/View;
    .end local v6    # "yDiff":I
    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    int-to-float v10, v3

    int-to-float v11, v5

    invoke-direct {p0, v9, v10, v11}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v1

    .line 415
    .local v1, "inside":Z
    if-nez v1, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mForcedOneFinger:Z

    if-eqz v9, :cond_7

    :cond_6
    move v7, v8

    :cond_7
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 416
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    .line 417
    if-eqz v1, :cond_5

    .line 418
    int-to-float v7, v5

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_1

    .line 425
    .end local v1    # "inside":Z
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 442
    .local v0, "action":I
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    packed-switch v0, :pswitch_data_0

    .line 507
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 446
    :pswitch_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v4, v11, v12

    .line 448
    .local v4, "rawHeight":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 449
    .local v2, "newHeight":F
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    move v6, v9

    .line 450
    .local v6, "wasClosed":Z
    :goto_1
    const/4 v1, 0x0

    .line 451
    .local v1, "isFinished":Z
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_1

    .line 452
    const/4 v1, 0x1

    .line 454
    :cond_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_2

    .line 455
    const/4 v1, 0x1

    .line 458
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 459
    .local v3, "pull":F
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    cmpl-float v11, v3, v11

    if-lez v11, :cond_4

    .line 460
    :cond_3
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_4

    .line 461
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    .line 462
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 466
    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-eqz v11, :cond_6

    .line 467
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v11, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 468
    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 473
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    float-to-int v7, v11

    .line 474
    .local v7, "x":I
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    float-to-int v8, v11

    .line 475
    .local v8, "y":I
    int-to-float v11, v7

    int-to-float v12, v8

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v5

    .line 476
    .local v5, "underFocus":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-eq v5, v11, :cond_0

    .line 477
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 478
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 479
    int-to-float v11, v8

    iput v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 480
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto/16 :goto_0

    .end local v1    # "isFinished":Z
    .end local v3    # "pull":F
    .end local v5    # "underFocus":Landroid/view/View;
    .end local v6    # "wasClosed":Z
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_5
    move v6, v10

    .line 449
    goto :goto_1

    .line 470
    .restart local v1    # "isFinished":Z
    .restart local v3    # "pull":F
    .restart local v6    # "wasClosed":Z
    :cond_6
    const/high16 v11, 0x40800000    # 4.0f

    mul-float/2addr v11, v3

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    goto :goto_2

    .line 485
    .end local v1    # "isFinished":Z
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v4    # "rawHeight":F
    .end local v6    # "wasClosed":Z
    :cond_7
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v10, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    goto/16 :goto_0

    .line 496
    :pswitch_2
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 497
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_0

    .line 503
    :pswitch_3
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .param p1, "eventSource"    # Landroid/view/View;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 298
    return-void
.end method

.method public setForceOneFinger(Z)V
    .locals 0
    .param p1, "forceOneFinger"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mForcedOneFinger:Z

    .line 343
    return-void
.end method

.method public setGlow(F)V
    .locals 4
    .param p1, "glow"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 323
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 339
    :cond_3
    :goto_0
    return-void

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->handleGlowVisibility()V

    goto :goto_0
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/View;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    .line 306
    return-void
.end method
