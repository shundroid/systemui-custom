.class public Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;
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
    name = "NormalBatteryMeterDrawable"
.end annotation


# instance fields
.field private mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeight:I

.field private final mClipFrame:Landroid/graphics/RectF;

.field private mDisposed:Z

.field private final mFrame:Landroid/graphics/RectF;

.field private mFramePaint:Landroid/graphics/Paint;

.field protected final mHorizontal:Z

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mWarningTextHeight:F

.field private mWarningTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V
    .locals 7
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "horizontal"    # Z

    .prologue
    const v6, 0x7f0a000d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 404
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 399
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 400
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 401
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mClipFrame:Landroid/graphics/RectF;

    .line 402
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 406
    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    .line 409
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 410
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 416
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 417
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 422
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    const-string v1, "sans-serif-condensed"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 424
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 425
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 427
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 428
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v2, p1, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    const-string v1, "sans-serif"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 431
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 433
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 434
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    .line 437
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;Landroid/content/res/Resources;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;
    .param p1, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    return-object v0
.end method

.method private loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->getBoltPointsArrayResource()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 589
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 590
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 591
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 592
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 590
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 594
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 595
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 596
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 597
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 595
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 599
    :cond_1
    return-object v4
.end method


# virtual methods
.method protected getBoltPointsArrayResource()I
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070007

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070005

    goto :goto_0
.end method

.method public onDispose()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    .line 579
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 445
    .local v14, "level":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v14, v0, :cond_0

    .line 447
    int-to-float v0, v14

    move/from16 v25, v0

    const/high16 v26, 0x42c80000    # 100.0f

    div-float v10, v25, v26

    .line 448
    .local v10, "drawFrac":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v27, 0x3e4ccccd    # 0.2f

    mul-float v25, v25, v27

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    :goto_1
    add-int v19, v26, v25

    .line 449
    .local v19, "pt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v17

    .line 450
    .local v17, "pl":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v18

    .line 451
    .local v18, "pr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v16

    .line 452
    .local v16, "pb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    sub-int v25, v25, v19

    sub-int v12, v25, v16

    .line 453
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    sub-int v25, v25, v17

    sub-int v22, v25, v18

    .line 455
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move/from16 v25, v22

    :goto_2
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3df5c28f    # 0.12f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonHeight:I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/RectF;->offset(FF)V

    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonHeight:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x5

    sub-int v26, v22, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    const/high16 v29, 0x3e800000    # 0.25f

    mul-float v28, v28, v29

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v0

    int-to-float v0, v12

    move/from16 v30, v0

    const/high16 v31, 0x3e800000    # 0.25f

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 483
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 488
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 497
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$500(Lcom/android/systemui/BatteryMeterView;)I

    move-result v9

    .line 498
    .local v9, "color":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    const/16 v25, 0x60

    move/from16 v0, v25

    if-lt v14, v0, :cond_9

    .line 501
    const/high16 v10, 0x3f800000    # 1.0f

    .line 506
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v25, v10, v25

    if-nez v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 509
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, v10

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 515
    :goto_8
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    const/high16 v25, 0x41100000    # 9.0f

    :goto_9
    div-float v25, v27, v25

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v6, v0

    .line 523
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    const/high16 v25, 0x40900000    # 4.5f

    :goto_a
    div-float v25, v27, v25

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v8, v0

    .line 524
    .local v8, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    const/high16 v25, 0x40c00000    # 6.0f

    :goto_b
    div-float v25, v27, v25

    sub-float v25, v26, v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v7, v0

    .line 525
    .local v7, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    const/high16 v25, 0x40e00000    # 7.0f

    :goto_c
    div-float v25, v27, v25

    sub-float v25, v26, v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v5, v0

    .line 526
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    cmpl-float v25, v25, v6

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    cmpl-float v25, v25, v8

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    cmpl-float v25, v25, v7

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    cmpl-float v25, v25, v5

    if-eqz v25, :cond_11

    .line 528
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->width()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v29

    mul-float v28, v28, v29

    add-float v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->moveTo(FF)V

    .line 533
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_10

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->width()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v28, v0

    add-int/lit8 v29, v13, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v29

    mul-float v28, v28, v29

    add-float v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    add-int/lit8 v13, v13, 0x2

    goto :goto_d

    .line 448
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v9    # "color":I
    .end local v12    # "height":I
    .end local v13    # "i":I
    .end local v16    # "pb":I
    .end local v17    # "pl":I
    .end local v18    # "pr":I
    .end local v19    # "pt":I
    .end local v22    # "width":I
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .restart local v12    # "height":I
    .restart local v16    # "pb":I
    .restart local v17    # "pl":I
    .restart local v18    # "pr":I
    .restart local v19    # "pt":I
    .restart local v22    # "width":I
    :cond_5
    move/from16 v25, v12

    .line 455
    goto/16 :goto_2

    .line 472
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3e800000    # 0.25f

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    const/high16 v30, 0x40a00000    # 5.0f

    add-float v29, v29, v30

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    const v27, 0x3ecccccd    # 0.4f

    sub-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 486
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4

    .line 497
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v9

    goto/16 :goto_5

    .line 502
    .restart local v9    # "color":I
    :cond_9
    const/16 v25, 0x4

    move/from16 v0, v25

    if-gt v14, v0, :cond_2

    .line 503
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 506
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    goto/16 :goto_7

    .line 512
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v28, v10

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_8

    .line 522
    :cond_c
    const/high16 v25, 0x40900000    # 4.5f

    goto/16 :goto_9

    .line 523
    .restart local v6    # "bl":F
    :cond_d
    const/high16 v25, 0x40c00000    # 6.0f

    goto/16 :goto_a

    .line 524
    .restart local v8    # "bt":F
    :cond_e
    const/high16 v25, 0x40e00000    # 7.0f

    goto/16 :goto_b

    .line 525
    .restart local v7    # "br":F
    :cond_f
    const/high16 v25, 0x41200000    # 10.0f

    goto/16 :goto_c

    .line 538
    .restart local v5    # "bb":F
    .restart local v13    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->width()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/RectF;->height()F

    move-result v29

    mul-float v28, v28, v29

    add-float v27, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    .line 542
    .end local v13    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 543
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    :cond_12
    const/16 v25, 0x4

    move/from16 v0, v25

    if-gt v14, v0, :cond_16

    .line 544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v26, v26, v27

    add-float v23, v25, v26

    .line 547
    .local v23, "x":F
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const v26, -0x410a3d71    # -0.48f

    mul-float v24, v25, v26

    .line 550
    .local v24, "y":F
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_13

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 552
    const/high16 v25, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 554
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$600(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 544
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v23, v25, v26

    goto :goto_e

    .line 547
    .restart local v23    # "x":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v26, v0

    add-float v25, v25, v26

    const v26, 0x3ef5c28f    # 0.48f

    mul-float v24, v25, v26

    goto :goto_f

    .line 558
    .end local v23    # "x":F
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v25, v0

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_17

    const v11, 0x3f19999a    # 0.6f

    .line 560
    .local v11, "full":F
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    const/high16 v15, 0x3f400000    # 0.75f

    .line 561
    .local v15, "nofull":F
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    const v20, 0x3f5c28f6    # 0.86f

    .line 562
    .local v20, "single":F
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v27, v0

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .end local v11    # "full":F
    :goto_13
    mul-float v26, v26, v11

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextHeight:F

    .line 567
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 568
    .local v21, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v23, v25, v26

    .line 569
    .restart local v23    # "x":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextHeight:F

    move/from16 v27, v0

    add-float v26, v26, v27

    const v27, 0x3ef0a3d7    # 0.47f

    mul-float v26, v26, v27

    add-float v24, v25, v26

    .line 571
    .restart local v24    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 559
    .end local v15    # "nofull":F
    .end local v20    # "single":F
    .end local v21    # "str":Ljava/lang/String;
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_17
    const v11, 0x3ee66666    # 0.45f

    goto/16 :goto_10

    .line 560
    .restart local v11    # "full":F
    :cond_18
    const v15, 0x3f19999a    # 0.6f

    goto/16 :goto_11

    .line 561
    .restart local v15    # "nofull":F
    :cond_19
    const/high16 v20, 0x3f400000    # 0.75f

    goto/16 :goto_12

    .restart local v20    # "single":F
    :cond_1a
    move v11, v15

    .line 562
    goto :goto_13
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextHeight:F

    .line 585
    return-void
.end method
