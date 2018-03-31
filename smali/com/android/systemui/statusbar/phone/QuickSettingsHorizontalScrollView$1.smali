.class Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "QuickSettingsHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;

    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;->SCROLLING:Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;->access$102(Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView;Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;)Lcom/android/systemui/statusbar/phone/QuickSettingsHorizontalScrollView$EventStates;

    .line 36
    return-void
.end method
