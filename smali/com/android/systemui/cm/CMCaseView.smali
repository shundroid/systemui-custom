.class public Lcom/android/systemui/cm/CMCaseView;
.super Lcom/android/systemui/DessertCaseView;
.source "CMCaseView.java"


# static fields
.field private static final NUM_PASTRIES:I

.field private static final PASTRIES:[I

.field private static final RARE_PASTRIES:[I

.field private static final XRARE_PASTRIES:[I

.field private static final XXRARE_PASTRIES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/cm/CMCaseView;->PASTRIES:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/cm/CMCaseView;->RARE_PASTRIES:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/cm/CMCaseView;->XRARE_PASTRIES:[I

    .line 48
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/cm/CMCaseView;->XXRARE_PASTRIES:[I

    .line 56
    sget-object v0, Lcom/android/systemui/cm/CMCaseView;->PASTRIES:[I

    array-length v0, v0

    sget-object v1, Lcom/android/systemui/cm/CMCaseView;->RARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/cm/CMCaseView;->XRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/systemui/cm/CMCaseView;->XXRARE_PASTRIES:[I

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/android/systemui/cm/CMCaseView;->NUM_PASTRIES:I

    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f020008
        0x7f02000a
        0x7f02001b
        0x7f02000d
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x7f020005
        0x7f020009
        0x7f020015
        0x7f020017
        0x7f020019
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x7f02000c
        0x7f020006
        0x7f020007
        0x7f02000b
    .end array-data

    .line 48
    :array_3
    .array-data 4
        0x7f020004
        0x7f02000e
        0x7f020010
        0x7f020012
        0x7f020014
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getNumPastries()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/android/systemui/cm/CMCaseView;->NUM_PASTRIES:I

    return v0
.end method

.method protected getPastries()[I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/systemui/cm/CMCaseView;->PASTRIES:[I

    return-object v0
.end method

.method protected getRarePastries()[I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/systemui/cm/CMCaseView;->RARE_PASTRIES:[I

    return-object v0
.end method

.method protected getXRarePastries()[I
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/systemui/cm/CMCaseView;->XRARE_PASTRIES:[I

    return-object v0
.end method

.method protected getXXRarePastries()[I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/systemui/cm/CMCaseView;->XXRARE_PASTRIES:[I

    return-object v0
.end method
