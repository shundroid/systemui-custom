.class Lcom/android/systemui/quicksettings/VolumeTile$1;
.super Ljava/lang/Object;
.source "VolumeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/VolumeTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/VolumeTile;

.field final synthetic val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/VolumeTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/quicksettings/VolumeTile$1;->this$0:Lcom/android/systemui/quicksettings/VolumeTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/VolumeTile;->access$000(Lcom/android/systemui/quicksettings/VolumeTile;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 40
    return-void
.end method
