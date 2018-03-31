.class public final Lcom/android/systemui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DeadZone:[I

.field public static final KeyButtonView:[I

.field public static final NotificationLinearLayout:[I

.field public static final NotificationRowLayout:[I

.field public static final QuickSettingsContainer:[I

.field public static final RecentsPanelView:[I

.field public static final ToggleSlider:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1983
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/R$styleable;->DeadZone:[I

    .line 2078
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    .line 2135
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationLinearLayout:[I

    .line 2164
    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    .line 2193
    new-array v0, v3, [I

    const v1, 0x7f01000c

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->QuickSettingsContainer:[I

    .line 2220
    new-array v0, v3, [I

    const v1, 0x7f010006

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    .line 2243
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    return-void

    .line 1983
    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    .line 2078
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method
