.class final enum Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;
.super Ljava/lang/Enum;
.source "QuickSettingsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

.field public static final enum FLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

.field public static final enum SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    const-string v1, "SCROLLING"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->FLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->FLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->$VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->$VALUES:[Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    return-object v0
.end method
