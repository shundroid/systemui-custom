.class public Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;
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
    name = "TextBatteryMeterDrawable"
.end annotation


# instance fields
.field private mAnimOffset:I

.field private mBackPaint:Landroid/graphics/Paint;

.field private mDisposed:Z

.field private mFrontPaint:Landroid/graphics/Paint;

.field private mIsAnimating:Z

.field private mOldLevel:I

.field private mOldPlugged:Z

.field private mTextX:F

.field private mTextY:F

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V
    .locals 4
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 841
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldPlugged:Z

    .line 833
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldLevel:I

    .line 843
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mDisposed:Z

    .line 844
    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mIsAnimating:Z

    .line 846
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 848
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    .line 849
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 850
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000b

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 851
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 853
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    .line 854
    return-void
.end method

.method private drawWithLevel(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;ILjava/lang/String;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    .param p3, "level"    # I
    .param p4, "levelTxt"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getBounds(Lcom/android/systemui/BatteryMeterView$BatteryTracker;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 902
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 905
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 906
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, p3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 907
    iget v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 909
    return-void
.end method

.method private drawWithoutLevel(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "levelTxt"    # Ljava/lang/String;

    .prologue
    .line 913
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 914
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 915
    return-void
.end method

.method private getBounds(Lcom/android/systemui/BatteryMeterView$BatteryTracker;I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 942
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 943
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, p1, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    if-ne v4, v2, :cond_1

    .line 944
    .local v2, "unknownStatus":Z
    :goto_0
    if-eqz v2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "level":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getLevel(I)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "levelTxt":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 946
    return-object v0

    .end local v1    # "levelTxt":Ljava/lang/String;
    .end local v2    # "unknownStatus":Z
    .restart local p2    # "level":I
    :cond_1
    move v2, v3

    .line 943
    goto :goto_0
.end method

.method private getLevel(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 950
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 951
    const-string v0, "?"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 953
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s%%"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resetChargeAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 976
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mIsAnimating:Z

    .line 977
    iput v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    .line 978
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 980
    :cond_0
    return-void
.end method

.method private updateChargeAnimation(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 4
    .param p1, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .prologue
    .line 957
    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->resetChargeAnimation()V

    .line 972
    :goto_0
    return-void

    .line 962
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mIsAnimating:Z

    .line 964
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    .line 970
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 967
    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method protected calculateMeasureWidth()F
    .locals 5

    .prologue
    .line 935
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, v3, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 936
    .local v2, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    iget v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getBounds(Lcom/android/systemui/BatteryMeterView$BatteryTracker;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 937
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 938
    .local v1, "onedp":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingStart()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingEnd()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v1

    return v3

    .line 935
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "onedp":F
    .end local v2    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, v3, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_0
.end method

.method public onDispose()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mDisposed:Z

    .line 921
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "tracker"    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .prologue
    const/4 v3, 0x1

    .line 858
    iget-boolean v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mDisposed:Z

    if-eqz v4, :cond_0

    .line 896
    :goto_0
    return-void

    .line 860
    :cond_0
    iget v0, p2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 861
    .local v0, "level":I
    iget-boolean v1, p2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 862
    .local v1, "plugged":Z
    iget v4, p2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    if-ne v4, v3, :cond_2

    .line 864
    .local v3, "unknownStatus":Z
    :goto_1
    iget v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldLevel:I

    if-ne v4, v0, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldPlugged:Z

    if-eq v4, v1, :cond_3

    .line 865
    :cond_1
    iput v0, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldLevel:I

    .line 866
    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mOldPlugged:Z

    .line 868
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 869
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->requestLayout()V

    goto :goto_0

    .line 862
    .end local v3    # "unknownStatus":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 873
    .restart local v3    # "unknownStatus":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 874
    const-string v4, "?"

    iget v5, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    iget v6, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 875
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v4}, Lcom/android/systemui/BatteryMeterView;->access$900(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 876
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    const v5, 0x7f0a000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 877
    const-string v4, "?"

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->drawWithoutLevel(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0

    .line 881
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 884
    invoke-virtual {p2}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x64

    if-eq v0, v4, :cond_5

    .line 885
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->updateChargeAnimation(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    .line 886
    iget v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mAnimOffset:I

    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getLevel(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->drawWithLevel(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;ILjava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->resetChargeAnimation()V

    .line 892
    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->drawWithoutLevel(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 925
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v4, v4, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v3, v4, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 926
    .local v3, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    iget v4, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->getBounds(Lcom/android/systemui/BatteryMeterView$BatteryTracker;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 927
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v4}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v2, v4, v5

    .line 928
    .local v2, "onedp":F
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v5}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 930
    .local v1, "height":F
    int-to-float v4, p1

    iput v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextX:F

    .line 931
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->mTextY:F

    .line 932
    return-void

    .line 925
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "height":F
    .end local v2    # "onedp":F
    .end local v3    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-object v3, v4, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_0
.end method
