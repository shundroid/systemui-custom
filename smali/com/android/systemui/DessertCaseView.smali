.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DessertCaseView$RescalingContainer;
    }
.end annotation


# static fields
.field private static final ALPHA_MASK:[F

.field private static final MASK:[F

.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final RARE_PASTRIES:[I

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE_MASK:[F

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# instance fields
.field hsv:[F

.field private mCellSize:I

.field private mCells:[Landroid/view/View;

.field private mColumns:I

.field private mDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mJuggle:Ljava/lang/Runnable;

.field private mRows:I

.field private mStarted:Z

.field private mWidth:I

.field private final tmpSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 44
    const-class v0, Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    .line 89
    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    .line 94
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/DessertCaseView;->MASK:[F

    .line 101
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    .line 108
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/DessertCaseView;->WHITE_MASK:[F

    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f02001b
        0x7f02000d
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x7f02000e
        0x7f020010
        0x7f020012
        0x7f020014
        0x7f020015
        0x7f020016
        0x7f020017
        0x7f020019
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x7f02001c
        0x7f020011
        0x7f020013
        0x7f02001a
    .end array-data

    .line 83
    :array_3
    .array-data 4
        0x7f02001d
        0x7f02000f
        0x7f020018
    .end array-data

    .line 94
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 101
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 108
    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v13, Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getNumPastries()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 128
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 130
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v13, Lcom/android/systemui/DessertCaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(Lcom/android/systemui/DessertCaseView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    .line 222
    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 346
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 164
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 166
    const v13, 0x7f0b0057

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 167
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 168
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/16 v14, 0x200

    if-ge v13, v14, :cond_0

    .line 169
    const/4 v13, 0x2

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 171
    :cond_0
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 172
    const/4 v9, 0x0

    .line 173
    .local v9, "loaded":Landroid/graphics/Bitmap;
    const/4 v13, 0x4

    new-array v1, v13, [[I

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getPastries()[I

    move-result-object v14

    aput-object v14, v1, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getRarePastries()[I

    move-result-object v14

    aput-object v14, v1, v13

    const/4 v13, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getXRarePastries()[I

    move-result-object v14

    aput-object v14, v1, v13

    const/4 v13, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/DessertCaseView;->getXXRarePastries()[I

    move-result-object v14

    aput-object v14, v1, v13

    .local v1, "arr$":[[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[[I
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 175
    .local v8, "list":[I
    move-object v2, v8

    .local v2, "arr$":[I
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget v12, v2, v4

    .line 176
    .local v12, "resid":I
    iput-object v9, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 177
    invoke-static {v11, v12, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 178
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v9}, Lcom/android/systemui/DessertCaseView;->convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v3, v11, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    .local v3, "d":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v14, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v13, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 180
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13, v12, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    .end local v3    # "d":Landroid/graphics/drawable/BitmapDrawable;
    .end local v12    # "resid":I
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 184
    .end local v2    # "arr$":[I
    .end local v7    # "len$":I
    .end local v8    # "list":[I
    :cond_2
    const/4 v9, 0x0

    .line 186
    return-void

    .line 222
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/DessertCaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static convertToAlphaMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "a":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 191
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .local v2, "pt":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 193
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    return-object v0
.end method

.method static frand()F
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static frand(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 492
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 453
    const v7, 0x2000002

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 454
    .local v6, "scale":I
    const v7, 0x2000001

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 455
    .local v4, "pt":Landroid/graphics/Point;
    if-eqz v4, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const/4 v7, 0x0

    new-array v5, v7, [Landroid/graphics/Point;

    .line 464
    :cond_1
    return-object v5

    .line 457
    :cond_2
    mul-int v7, v6, v6

    new-array v5, v7, [Landroid/graphics/Point;

    .line 458
    .local v5, "result":[Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 459
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 460
    const/4 v1, 0x0

    .local v1, "j":I
    move v3, v2

    .end local v2    # "p":I
    .local v3, "p":I
    :goto_1
    if-ge v1, v6, :cond_3

    .line 461
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    new-instance v7, Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v1

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v3

    .line 460
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .line 459
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    .end local v3    # "p":I
    .restart local v2    # "p":I
    goto :goto_0
.end method

.method static irand(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 496
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/DessertCaseView;->frand(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private final makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    new-instance v0, Lcom/android/systemui/DessertCaseView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DessertCaseView$3;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public fillFreeList()V
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 272
    return-void
.end method

.method public declared-synchronized fillFreeList(I)V
    .locals 14
    .param p1, "animationLen"    # I

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 276
    .local v1, "ctx":Landroid/content/Context;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    invoke-direct {v5, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 279
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 280
    .local v6, "pt":Landroid/graphics/Point;
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 282
    .local v3, "i":I
    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 284
    .local v4, "j":I
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    iget v11, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v11, v4

    add-int/2addr v11, v3

    aget-object v10, v10, v11

    if-nez v10, :cond_0

    .line 285
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v8, "v":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/DessertCaseView$2;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->random_color()I

    move-result v0

    .line 295
    .local v0, "c":I
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 297
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v9

    .line 299
    .local v9, "which":F
    const v10, 0x3a03126f    # 5.0E-4f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    .line 300
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getXXRarePastries()[I

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 310
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v8}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_1
    iget v10, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 315
    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/DessertCaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v6, v10}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 317
    if-lez p1, :cond_0

    .line 318
    const v10, 0x2000002

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v7, v10

    .line 319
    .local v7, "s":F
    mul-float v10, v13, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 320
    mul-float v10, v13, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 321
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 322
    invoke-virtual {v8}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    int-to-long v11, p1

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 275
    .end local v0    # "c":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "pt":Landroid/graphics/Point;
    .end local v7    # "s":F
    .end local v8    # "v":Landroid/widget/ImageView;
    .end local v9    # "which":F
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 301
    .restart local v0    # "c":I
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "pt":Landroid/graphics/Point;
    .restart local v8    # "v":Landroid/widget/ImageView;
    .restart local v9    # "which":F
    :cond_2
    const v10, 0x3ba3d70a    # 0.005f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_3

    .line 302
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getXRarePastries()[I

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 303
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    cmpg-float v10, v9, v13

    if-gez v10, :cond_4

    .line 304
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getRarePastries()[I

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 305
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v10, 0x3f333333    # 0.7f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    .line 306
    iget-object v10, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->getPastries()[I

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/DessertCaseView;->pick([I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 308
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 325
    .end local v0    # "c":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "pt":Landroid/graphics/Point;
    .end local v8    # "v":Landroid/widget/ImageView;
    .end local v9    # "which":F
    :cond_6
    monitor-exit p0

    return-void
.end method

.method protected getNumPastries()I
    .locals 1

    .prologue
    .line 484
    sget v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    return v0
.end method

.method protected getPastries()[I
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    return-object v0
.end method

.method protected getRarePastries()[I
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    return-object v0
.end method

.method protected getXRarePastries()[I
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    return-object v0
.end method

.method protected getXXRarePastries()[I
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 502
    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3e800000    # 0.25f

    .line 232
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 233
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_1

    .line 268
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 236
    .local v2, "wasStarted":Z
    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 240
    :cond_2
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 241
    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 243
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->removeAllViewsInLayout()V

    .line 245
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 247
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 248
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 250
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v3, v4

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 254
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleX(F)V

    .line 255
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setScaleY(F)V

    .line 256
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationX(F)V

    .line 257
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    iget v5, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/android/systemui/DessertCaseView;->setTranslationY(F)V

    .line 259
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    if-ge v1, v3, :cond_4

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    if-ge v0, v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v1    # "j":I
    .end local v2    # "wasStarted":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method pick([I)I
    .locals 4
    .param p1, "a"    # [I

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    array-length v2, p1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    aget v0, p1, v0

    return v0
.end method

.method public declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 26
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pt"    # Landroid/graphics/Point;
    .param p3, "animate"    # Z

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 349
    .local v4, "i":I
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 350
    .local v7, "j":I
    invoke-static {}, Lcom/android/systemui/DessertCaseView;->frand()F

    move-result v11

    .line 351
    .local v11, "rnd":F
    const v18, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 352
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v3

    .local v3, "arr$":[Landroid/graphics/Point;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v9, v3, v5

    .line 353
    .local v9, "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v18, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    const/16 v20, 0x0

    aput-object v20, v18, v19

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 357
    .end local v3    # "arr$":[Landroid/graphics/Point;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "oc":Landroid/graphics/Point;
    :cond_0
    const/4 v13, 0x1

    .line 358
    .local v13, "scale":I
    const v18, 0x3c23d70a    # 0.01f

    cmpg-float v18, v11, v18

    if-gez v18, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 360
    const/4 v13, 0x4

    .line 372
    :cond_1
    :goto_1
    const v18, 0x2000001

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 373
    const v18, 0x2000002

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    .line 377
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v10

    .line 378
    .local v10, "occupied":[Landroid/graphics/Point;
    move-object v3, v10

    .restart local v3    # "arr$":[Landroid/graphics/Point;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_5

    aget-object v9, v3, v5

    .line 379
    .restart local v9    # "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v18, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    aget-object v17, v18, v19

    .line 380
    .local v17, "squatter":Landroid/view/View;
    if-eqz v17, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 362
    .end local v3    # "arr$":[Landroid/graphics/Point;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "oc":Landroid/graphics/Point;
    .end local v10    # "occupied":[Landroid/graphics/Point;
    .end local v17    # "squatter":Landroid/view/View;
    :cond_3
    const v18, 0x3dcccccd    # 0.1f

    cmpg-float v18, v11, v18

    if-gez v18, :cond_4

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 364
    const/4 v13, 0x3

    goto :goto_1

    .line 366
    :cond_4
    const v18, 0x3ea8f5c3    # 0.33f

    cmpg-float v18, v11, v18

    if-gez v18, :cond_1

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mRows:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    .line 368
    const/4 v13, 0x2

    goto/16 :goto_1

    .line 385
    .restart local v3    # "arr$":[Landroid/graphics/Point;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "occupied":[Landroid/graphics/Point;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":I
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 386
    .restart local v17    # "squatter":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    move-result-object v3

    array-length v8, v3

    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v8, :cond_7

    aget-object v16, v3, v6

    .line 387
    .local v16, "sq":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    const/16 v20, 0x0

    aput-object v20, v18, v19

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 390
    .end local v16    # "sq":Landroid/graphics/Point;
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    .line 391
    const v18, 0x2000001

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 392
    if-eqz p3, :cond_8

    .line 393
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v20}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    new-instance v19, Lcom/android/systemui/DessertCaseView$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 348
    .end local v3    # "arr$":[Landroid/graphics/Point;
    .end local v4    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "j":I
    .end local v8    # "len$":I
    .end local v10    # "occupied":[Landroid/graphics/Point;
    .end local v11    # "rnd":F
    .end local v13    # "scale":I
    .end local v17    # "squatter":Landroid/view/View;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 407
    .restart local v3    # "arr$":[Landroid/graphics/Point;
    .restart local v4    # "i":I
    .restart local v6    # "i$":I
    .restart local v7    # "j":I
    .restart local v8    # "len$":I
    .restart local v10    # "occupied":[Landroid/graphics/Point;
    .restart local v11    # "rnd":F
    .restart local v13    # "scale":I
    .restart local v17    # "squatter":Landroid/view/View;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 412
    .end local v6    # "i$":I
    .end local v17    # "squatter":Landroid/view/View;
    :cond_9
    move-object v3, v10

    array-length v8, v3

    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_5
    if-ge v5, v8, :cond_a

    aget-object v9, v3, v5

    .line 413
    .restart local v9    # "oc":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    move-object/from16 v18, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    aput-object p1, v18, v19

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 417
    .end local v9    # "oc":Landroid/graphics/Point;
    :cond_a
    const/16 v18, 0x0

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42b40000    # 90.0f

    mul-float v12, v18, v19

    .line 419
    .local v12, "rot":F
    if-eqz p3, :cond_b

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 422
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 423
    .local v14, "set1":Landroid/animation/AnimatorSet;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    int-to-float v0, v13

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    int-to-float v0, v13

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 427
    new-instance v18, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    const-wide/16 v18, 0x1f4

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 430
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 431
    .local v15, "set2":Landroid/animation/AnimatorSet;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v12, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Landroid/view/View;->X:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v23, v0

    mul-int v23, v23, v4

    add-int/lit8 v24, v13, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    sget-object v20, Landroid/view/View;->Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v23, v0

    mul-int v23, v23, v7

    add-int/lit8 v24, v13, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 436
    new-instance v18, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v18 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    const-wide/16 v18, 0x1f4

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/DessertCaseView;->makeHardwareLayerListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 442
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v14    # "set1":Landroid/animation/AnimatorSet;
    .end local v15    # "set2":Landroid/animation/AnimatorSet;
    :goto_6
    monitor-exit p0

    return-void

    .line 444
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v18, v0

    mul-int v18, v18, v4

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v18, v0

    mul-int v18, v18, v7

    add-int/lit8 v19, v13, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 446
    int-to-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 447
    int-to-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 448
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setRotation(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public place(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 328
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    invoke-static {v3, v1}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    invoke-static {v3, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 329
    return-void
.end method

.method random_color()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    const/16 v0, 0xc

    .line 226
    .local v0, "COLORS":I
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    const/16 v2, 0xc

    invoke-static {v4, v2}, Lcom/android/systemui/DessertCaseView;->irand(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    aput v2, v1, v4

    .line 227
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public start()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 200
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 207
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
