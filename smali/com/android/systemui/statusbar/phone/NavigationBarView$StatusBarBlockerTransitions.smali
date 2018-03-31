.class Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusBarBlockerTransitions"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "statusBarBlocker"    # Landroid/view/View;

    .prologue
    .line 1111
    const v0, 0x7f020125

    const v1, 0x7f0a0001

    const v2, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;III)V

    .line 1114
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 1117
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;->getMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$StatusBarBlockerTransitions;->applyModeBackground(IIZ)V

    .line 1118
    return-void
.end method
