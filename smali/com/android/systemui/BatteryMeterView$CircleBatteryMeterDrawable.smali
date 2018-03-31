.class public Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CircleBatteryMeterDrawable"
.end annotation


# instance fields
.field private mAnimOffset:I

.field private mBackPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private mCircleSize:I

.field private mDisposed:Z

.field private mFrontPaint:Landroid/graphics/Paint;

.field private mIsAnimating:Z

.field private mRectLeft:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextX:F

.field private mTextY:F

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V
    .locals 6
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 633
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 631
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 635
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    .line 637
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 638
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0011

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    const-string v1, "sans-serif-condensed"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 640
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 641
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 643
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    .line 644
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 645
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 646
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 647
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 649
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    .line 650
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 652
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 653
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 654
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 657
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 658
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 659
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {p1, v2}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    .line 661
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;FLandroid/graphics/RectF;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    .param p3, "textX"    # F
    .param p4, "drawRect"    # Landroid/graphics/RectF;

    .prologue
    .line 707
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v15, 0x1

    .line 708
    .local v15, "unknownStatus":Z
    :goto_0
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 711
    .local v13, "level":I
    if-eqz v15, :cond_3

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    .line 713
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v13, 0x64

    .line 723
    :cond_0
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 725
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    add-int/lit16 v2, v2, 0x10e

    int-to-float v4, v2

    const v2, 0x40666666    # 3.6f

    int-to-float v3, v13

    mul-float v5, v2, v3

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 728
    if-eqz v15, :cond_4

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    const-string v2, "?"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 760
    :cond_1
    :goto_2
    return-void

    .line 707
    .end local v13    # "level":I
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "unknownStatus":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 715
    .restart local v13    # "level":I
    .restart local v15    # "unknownStatus":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    .line 716
    .restart local v14    # "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, v13}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 717
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 718
    const/16 v13, 0x64

    goto :goto_1

    .line 732
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v2, v2, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x64

    if-ne v13, v2, :cond_9

    .line 734
    :cond_5
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x404ccccd    # 3.2f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v9, v2

    .line 735
    .local v9, "bl":F
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v11, v2

    .line 736
    .local v11, "bt":F
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x40a66666    # 5.2f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v10, v2

    .line 737
    .local v10, "br":F
    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v8, v2

    .line 738
    .local v8, "bb":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v11

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v10

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_8

    .line 740
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v11, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 745
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    array-length v2, v2

    if-ge v12, v2, :cond_7

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    aget v4, v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v6, v12, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 745
    add-int/lit8 v12, v12, 0x2

    goto :goto_3

    .line 750
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 754
    .end local v12    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 756
    .end local v8    # "bb":F
    .end local v9    # "bl":F
    .end local v10    # "br":F
    .end local v11    # "bt":F
    :cond_9
    const/16 v2, 0x64

    if-ge v13, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v2, v2, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v2, :cond_1

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private initSizeBasedStuff()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 798
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    .line 799
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 801
    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40d00000    # 6.5f

    div-float v2, v3, v4

    .line 802
    .local v2, "strokeWidth":F
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 806
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v1

    .line 807
    .local v1, "pLeft":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    div-float v5, v2, v9

    add-float/2addr v4, v5

    const/4 v5, 0x0

    div-float v6, v2, v9

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v2, v9

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v2, v9

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    .line 811
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 812
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v4, "99"

    const/4 v5, 0x0

    const-string v6, "99"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 813
    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextX:F

    .line 815
    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    .line 817
    return-void
.end method

.method private loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->getBoltPointsArrayResource()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 688
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 689
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 690
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 691
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 689
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 693
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 694
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 695
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 696
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 694
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 698
    :cond_1
    return-object v4
.end method

.method private updateChargeAnim(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .prologue
    const/4 v2, 0x0

    .line 770
    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 772
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    if-eqz v0, :cond_2

    .line 773
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    .line 774
    iput v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    .line 775
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    :cond_2
    :goto_0
    return-void

    .line 780
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    .line 782
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_4

    .line 783
    iput v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    .line 788
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 789
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 785
    :cond_4
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method protected getBoltPointsArrayResource()I
    .locals 1

    .prologue
    .line 702
    const v0, 0x7f070005

    return v0
.end method

.method public onDispose()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    .line 679
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    if-eqz v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->initSizeBasedStuff()V

    .line 671
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->updateChargeAnim(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    .line 672
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextX:F

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->initSizeBasedStuff()V

    .line 684
    return-void
.end method
