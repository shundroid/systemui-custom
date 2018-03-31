.class public Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "QuickSettingsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;
    }
.end annotation


# instance fields
.field mSnapRunnable:Ljava/lang/Runnable;

.field private systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->snapItems()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    return-object p1
.end method

.method private snapItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .local v3, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .local v0, "childBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 56
    .local v2, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 57
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 58
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 59
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_2

    .line 61
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_1

    .line 62
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->smoothScrollTo(II)V

    .line 69
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 64
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 77
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 80
    .local v0, "childHeightMeasureSpec":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 85
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 96
    .local v0, "childHeightMeasureSpec":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingLeft:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 101
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 102
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    if-ne v0, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->FLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 42
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 43
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->FLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 48
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 44
    :cond_2
    if-nez v0, :cond_1

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->systemState:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
