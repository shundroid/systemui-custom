.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f09009a
        0x7f09009b
        0x7f09009c
        0x7f09009d
        0x7f09009e
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f09009f
        0x7f0900a0
        0x7f0900a1
        0x7f0900a2
        0x7f0900a3
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0900a5
        0x7f0900a6
        0x7f0900a7
        0x7f0900a8
        0x7f0900a9
    .end array-data

    .line 36
    :array_3
    .array-data 4
        0x7f0900aa
        0x7f0900ab
        0x7f0900ac
        0x7f0900ad
        0x7f0900ae
    .end array-data
.end method
