.class public final enum Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
.super Ljava/lang/Enum;
.source "QuickSettingsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QSSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

.field public static final enum Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

.field public static final enum AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

.field public static final enum Big:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

.field public static final enum Narrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    .line 289
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    const-string v1, "AutoNarrow"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    .line 290
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    const-string v1, "Big"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Big:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    .line 291
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    const-string v1, "Narrow"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Narrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Auto:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->AutoNarrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Big:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->Narrow:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->$VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->$VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView$QSSize;

    return-object v0
.end method
