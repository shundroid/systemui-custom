.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$2;,
        Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;,
        Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAttached:Z

.field private mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

.field private final mChargeColor:I

.field final mColors:[I

.field protected mDemoMode:Z

.field protected mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;

.field protected mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field protected mShowPercent:Z

.field protected mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    new-instance v7, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;

    .line 154
    iput-object v10, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .line 155
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 167
    new-instance v7, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-direct {v7, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 168
    new-instance v7, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-direct {v7, p0}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 170
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    .line 206
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 209
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f070003

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 210
    .local v3, "levels":Landroid/content/res/TypedArray;
    const v7, 0x7f070004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 212
    .local v1, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 213
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 215
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v8, v2, 0x2

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    aput v9, v7, v8

    .line 216
    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    aput v9, v7, v8

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_bar_show_battery_percent"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a000c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 225
    const v5, 0x7f090107

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 227
    sget-object v5, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .line 228
    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {p0, v5}, Lcom/android/systemui/BatteryMeterView;->createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    .line 230
    invoke-virtual {p0, v6, v10}, Lcom/android/systemui/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/BatteryMeterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BatteryMeterView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;
    .locals 3
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lcom/android/systemui/BatteryMeterView$2;->$SwitchMap$com$android$systemui$BatteryMeterView$BatteryMeterMode:[I

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V

    :goto_0
    return-object v1

    .line 237
    :pswitch_0
    new-instance v1, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 240
    :pswitch_1
    new-instance v1, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V

    goto :goto_0

    .line 243
    :pswitch_2
    new-instance v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;-><init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 353
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 354
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 358
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 364
    :cond_3
    if-eqz v1, :cond_4

    .line 365
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v1, :cond_0

    .line 342
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 343
    .local v0, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    .line 345
    .end local v0    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_0
    monitor-exit v2

    .line 346
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColorForLevel(I)I
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v3, v4, v2

    .line 291
    .local v3, "thresh":I
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 292
    if-gt p1, v3, :cond_0

    move v1, v0

    .line 294
    .end local v0    # "color":I
    .end local v3    # "thresh":I
    .local v1, "color":I
    :goto_1
    return v1

    .line 289
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "thresh":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v3    # "thresh":I
    :cond_1
    move v1, v0

    .line 294
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_1
.end method

.method protected invalidateIfVisible()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 180
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    .line 186
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mAttached:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 253
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 254
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v2, v3, :cond_1

    .line 255
    int-to-float v2, v0

    const v3, 0x400aaaab

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 256
    move v1, v0

    .line 263
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/BatteryMeterView;->setMeasuredDimension(II)V

    .line 264
    return-void

    .line 257
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v2, v3, :cond_2

    .line 258
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    check-cast v2, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/BatteryMeterView$TextBatteryMeterDrawable;->calculateMeasureWidth()F

    move-result v2

    float-to-int v1, v2

    .line 259
    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/android/systemui/BatteryMeterView;->onSizeChanged(IIII)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v3, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_0

    .line 261
    int-to-float v2, v0

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 268
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 269
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 270
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onSizeChanged(IIII)V

    .line 274
    :cond_0
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .prologue
    const/16 v3, 0x8

    .line 305
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v1, p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    .line 310
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 311
    .local v0, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_1
    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne p1, v1, :cond_2

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    .line 315
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 310
    .end local v0    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    goto :goto_1

    .line 317
    .restart local v0    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    invoke-interface {v1}, Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;->onDispose()V

    .line 321
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/BatteryMeterView;->createBatteryMeterDrawable(Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;)Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    .line 322
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mMeterMode:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v2, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    if-ne v1, v2, :cond_5

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryMeterDrawable:Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;

    check-cast v1, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->access$200(Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;Landroid/content/res/Resources;)[F

    .line 328
    :cond_5
    iget-boolean v1, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->present:Z

    if-eqz v1, :cond_6

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->requestLayout()V

    goto :goto_0

    .line 322
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 333
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShowPercent(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidateIfVisible()V

    .line 302
    return-void
.end method
