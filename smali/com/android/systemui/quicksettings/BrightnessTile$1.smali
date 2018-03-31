.class Lcom/android/systemui/quicksettings/BrightnessTile$1;
.super Ljava/lang/Object;
.source "BrightnessTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/BrightnessTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

.field final synthetic val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/BrightnessTile;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/quicksettings/BrightnessTile$1;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/BrightnessTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BrightnessTile$1;->val$qsc:Lcom/android/systemui/statusbar/phone/QuickSettingsController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->collapseAllPanels(Z)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/BrightnessTile$1;->this$0:Lcom/android/systemui/quicksettings/BrightnessTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/BrightnessTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
