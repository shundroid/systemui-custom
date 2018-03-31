.class public Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    }
.end annotation


# instance fields
.field private mCellGap:F

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mMaxCellWidth:I

.field private mMaxMargin:I

.field private mMinCellWidth:I

.field private mMinMargin:I

.field private mNumColumns:I

.field private mPadding3Tiles:F

.field private mPadding4Tiles:F

.field private mSingleRow:Z

.field private mSize3Tiles:F

.field private mSize4Tiles:F

.field private mSmallIcons:Z

.field private mSmallSize4Tiles:F

.field private mTextPadding:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/high16 v1, -0x3f800000    # -4.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding4Tiles:F

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding3Tiles:F

    .line 47
    const/high16 v1, 0x41100000    # 9.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallSize4Tiles:F

    .line 48
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize4Tiles:F

    .line 49
    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize3Tiles:F

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellWidth:I

    .line 60
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    .line 61
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    .line 62
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinMargin:I

    .line 63
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxMargin:I

    .line 67
    sget-object v1, Lcom/android/systemui/R$styleable;->QuickSettingsContainer:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 72
    return-void
.end method


# virtual methods
.method public getRibbonSize()Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    .locals 5

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qs_quick_access_size"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 297
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 307
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    :goto_0
    return-object v1

    .line 299
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    goto :goto_0

    .line 301
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    goto :goto_0

    .line 303
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Big:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    goto :goto_0

    .line 305
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Narrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTileTextPadding()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 278
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "qs_small_icons"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    .line 280
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    if-eqz v1, :cond_1

    .line 281
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding4Tiles:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextPadding:I

    .line 283
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 278
    goto :goto_0

    .line 283
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding3Tiles:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextPadding:I

    goto :goto_1
.end method

.method public getTileTextSize()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 263
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v5, "qs_small_icons"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    .line 265
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    if-eqz v3, :cond_3

    .line 266
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 267
    .local v0, "dpi":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 269
    .local v1, "isTablet":Z
    if-nez v1, :cond_0

    const/16 v3, 0xf0

    if-le v0, v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize4Tiles:F

    float-to-int v3, v3

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextSize:I

    .line 272
    .end local v0    # "dpi":I
    .end local v1    # "isTablet":Z
    :goto_2
    return v3

    :cond_1
    move v3, v4

    .line 263
    goto :goto_0

    .line 269
    .restart local v0    # "dpi":I
    .restart local v1    # "isTablet":Z
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallSize4Tiles:F

    float-to-int v3, v3

    goto :goto_1

    .line 272
    .end local v0    # "dpi":I
    .end local v1    # "isTablet":Z
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize3Tiles:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextSize:I

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 80
    .local v0, "transitions":Landroid/animation/LayoutTransition;
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v2

    .line 207
    .local v2, "N":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->isLayoutRtl()Z

    move-result v15

    .line 208
    .local v15, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getWidth()I

    move-result v18

    .line 210
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v19

    .line 211
    .local v19, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v20

    .line 212
    .local v20, "y":I
    const/4 v13, 0x0

    .line 214
    .local v13, "cursor":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    .line 216
    .local v3, "cellGap":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 217
    const/high16 v21, 0x40000000    # 2.0f

    div-float v3, v3, v21

    .line 220
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v2, :cond_6

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 222
    .local v4, "child":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 223
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v21, v0

    rem-int v11, v13, v21

    .line 225
    .local v11, "col":I
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v12

    .line 227
    .local v12, "colSpan":I
    move-object/from16 v0, v16

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    .local v10, "childWidth":I
    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    .local v6, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v21, v0

    div-int v17, v13, v21

    .line 233
    .local v17, "row":I
    add-int v21, v11, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v19

    .line 235
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    add-float v22, v22, v3

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 236
    add-int/lit8 v17, v17, 0x1

    .line 239
    :cond_1
    if-eqz v15, :cond_4

    sub-int v21, v18, v19

    sub-int v7, v21, v10

    .line 240
    .local v7, "childLeft":I
    :goto_1
    add-int v8, v7, v10

    .line 242
    .local v8, "childRight":I
    move/from16 v9, v20

    .line 243
    .local v9, "childTop":I
    add-int v5, v9, v6

    .line 246
    .local v5, "childBottom":I
    invoke-virtual {v4, v7, v9, v8, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->layout(IIII)V

    .line 250
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v21

    add-int v13, v13, v21

    .line 251
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    move/from16 v0, v21

    if-lt v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 252
    :cond_2
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    add-float v22, v22, v3

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 220
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v10    # "childWidth":I
    .end local v11    # "col":I
    .end local v12    # "colSpan":I
    .end local v17    # "row":I
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .restart local v6    # "childHeight":I
    .restart local v10    # "childWidth":I
    .restart local v11    # "col":I
    .restart local v12    # "colSpan":I
    .restart local v17    # "row":I
    :cond_4
    move/from16 v7, v19

    .line 239
    goto :goto_1

    .line 253
    .restart local v5    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingStart()I

    move-result v19

    .line 255
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    add-float v22, v22, v3

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    goto :goto_2

    .line 259
    .end local v4    # "child":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v10    # "childWidth":I
    .end local v11    # "col":I
    .end local v12    # "colSpan":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "row":I
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 119
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v22, v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v4, v0

    .line 122
    .local v4, "availableWidth":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    .line 124
    .local v5, "cellGap":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildCount()I

    move-result v3

    .line 125
    .local v3, "N":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 126
    const/high16 v24, 0x40000000    # 2.0f

    div-float v5, v5, v24

    .line 127
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 128
    .local v6, "cellHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v7, v0

    .line 168
    .local v7, "cellWidth":F
    :cond_0
    :goto_0
    const/16 v20, 0x0

    .line 169
    .local v20, "totalWidth":I
    const/4 v9, 0x0

    .line 170
    .local v9, "cursor":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_b

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 173
    .local v21, "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 174
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 175
    .local v12, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v8

    .line 176
    .local v8, "colSpan":I
    int-to-float v0, v8

    move/from16 v24, v0

    mul-float v24, v24, v7

    add-int/lit8 v25, v8, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v5

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 177
    iput v6, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 180
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 181
    .local v16, "newWidthSpec":I
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 182
    .local v15, "newHeightSpec":I
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->measure(II)V

    .line 183
    add-int/2addr v9, v8

    .line 184
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getMeasuredWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v5

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 170
    .end local v8    # "colSpan":I
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "newHeightSpec":I
    .end local v16    # "newWidthSpec":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 131
    .end local v7    # "cellWidth":F
    .end local v9    # "cursor":I
    .end local v11    # "i":I
    .end local v20    # "totalWidth":I
    .end local v21    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_2
    if-gtz v22, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v7, v0

    .restart local v7    # "cellWidth":F
    goto :goto_0

    .line 136
    .end local v7    # "cellWidth":F
    :cond_3
    const/16 v17, 0x0

    .line 137
    .local v17, "numColumns":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v3, :cond_5

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 139
    .restart local v21    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 140
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getColumnSpan()I

    move-result v24

    add-int v17, v17, v24

    .line 137
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 143
    .end local v21    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_5
    if-nez v17, :cond_6

    .line 144
    const/16 v17, 0x1

    .line 145
    :cond_6
    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    sub-float v4, v4, v24

    .line 146
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v4, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v7, v0

    .line 147
    .restart local v7    # "cellWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v7, v24

    if-gez v24, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v7, v0

    .line 152
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 153
    .local v23, "widthDiff":I
    if-lez v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v7, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v10, v24, v25

    .line 154
    .local v10, "factor":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxMargin:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxMargin:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v10

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 155
    .local v13, "margin":I
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v3, :cond_0

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 157
    .restart local v21    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getTile()Lcom/android/systemui/quicksettings/QuickSettingsTile;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->setImageMargins(I)V

    .line 155
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 149
    .end local v10    # "factor":F
    .end local v13    # "margin":I
    .end local v21    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v23    # "widthDiff":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v7, v24

    if-lez v24, :cond_7

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v7, v0

    goto :goto_3

    .line 153
    .restart local v23    # "widthDiff":I
    :cond_9
    const/high16 v10, 0x3f000000    # 0.5f

    goto :goto_4

    .line 162
    .end local v6    # "cellHeight":I
    .end local v7    # "cellWidth":F
    .end local v11    # "i":I
    .end local v17    # "numColumns":I
    .end local v23    # "widthDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    sub-float v4, v4, v24

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v4, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v7, v0

    .line 164
    .restart local v7    # "cellWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b004c

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .restart local v6    # "cellHeight":I
    goto/16 :goto_0

    .line 189
    .restart local v9    # "cursor":I
    .restart local v11    # "i":I
    .restart local v20    # "totalWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSingleRow:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v24

    add-int v24, v24, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingBottom()I

    move-result v25

    add-int v19, v24, v25

    .line 191
    .local v19, "totalHeight":I
    if-lez v20, :cond_c

    .line 192
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 193
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setMeasuredDimension(II)V

    .line 202
    .end local v19    # "totalHeight":I
    :goto_6
    return-void

    .line 197
    :cond_d
    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v18, v0

    .line 198
    .local v18, "numRows":I
    mul-int v24, v18, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v5

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingTop()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getPaddingBottom()I

    move-result v25

    add-int v14, v24, v25

    .line 200
    .local v14, "newHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->setMeasuredDimension(II)V

    goto :goto_6
.end method

.method public updateResources()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v5, "qs_small_icons"

    const/4 v6, -0x2

    invoke-static {v1, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    .line 87
    const v3, 0x7f0b004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellGap:F

    .line 88
    const v3, 0x7f0e0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    .line 89
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize3Tiles:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextSize:I

    .line 90
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding3Tiles:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextPadding:I

    .line 91
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSmallIcons:Z

    if-eqz v3, :cond_0

    .line 92
    const v3, 0x7f0e000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mNumColumns:I

    .line 93
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mSize4Tiles:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextSize:I

    .line 94
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mPadding4Tiles:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mTextPadding:I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getRibbonSize()Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    move-result-object v2

    .line 97
    .local v2, "size":Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    const v3, 0x7f0b0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinCellWidth:I

    .line 98
    const v3, 0x7f0b0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxCellWidth:I

    .line 99
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    if-ne v2, v3, :cond_4

    .line 100
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellWidth:I

    .line 101
    sget-object v3, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    if-ne v2, v3, :cond_3

    .line 102
    const v3, 0x7f0b000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxMargin:I

    .line 103
    const v3, 0x7f0b000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinMargin:I

    .line 111
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->requestLayout()V

    .line 112
    return-void

    .end local v2    # "size":Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    :cond_2
    move v3, v4

    .line 85
    goto :goto_0

    .line 105
    .restart local v2    # "size":Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    :cond_3
    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMaxMargin:I

    .line 106
    const v3, 0x7f0b0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mMinMargin:I

    goto :goto_1

    .line 109
    :cond_4
    const v3, 0x7f0b0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->mCellWidth:I

    goto :goto_1
.end method
