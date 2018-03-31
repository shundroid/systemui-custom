.class Lcom/android/systemui/quicksettings/BugReportTile$1;
.super Ljava/lang/Object;
.source "BugReportTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BugReportTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BugReportTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BugReportTile;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BugReportTile$1;->this$0:Lcom/android/systemui/quicksettings/BugReportTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile$1;->this$0:Lcom/android/systemui/quicksettings/BugReportTile;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/BugReportTile;->mQsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/quicksettings/BugReportTile$1;->this$0:Lcom/android/systemui/quicksettings/BugReportTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/BugReportTile;->access$000(Lcom/android/systemui/quicksettings/BugReportTile;)V

    .line 51
    return-void
.end method
